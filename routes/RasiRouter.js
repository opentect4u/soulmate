const express = require("express"),
  rashiRouter = express.Router(),
  request = require("request"),
  fs = require("fs"),
  path = require("path"),
  accessToken = require("../accessToken.json"),
  location = require("../location.json");

const { db_Select } = require("../module/MasterModule");
const { getNakhatra, getJotukRashiId } = require("./MasterRouter");

rashiRouter.post("/kundali", (req, res) => {
  var ayanamsa = 1,
    user_id = 2,
    coordinates = "22.569722,88.369722",
    datetime = "1996-05-29T07:15:00Z",
    lang = "en";
  var options = {
    method: "GET",
    url: `https://api.prokerala.com/v2/astrology/planet-position?ayanamsa=${ayanamsa}&coordinates=${coordinates}&datetime=${datetime}&la=${lang}`,
    headers: {
      Accept: "application/json",
      Authorization: `Bearer ${accessToken.token}`,
    },
  };
  request(options, async function (error, response) {
    if (error) throw new Error(error);
    // console.log(response.body);
    else {
      var data = JSON.parse(response.body);
      file_name = user_id + "-" + datetime.split(":").join("-");
      fs.writeFileSync(
        path.join(__dirname, `../raw_data/${file_name}.json`),
        JSON.stringify(data),
        "utf-8"
      );
      var arr = [];
      for (i = 0; i < data.data.planet_position.length; i++) {
        nakhatra_name = await getNakhatra(
          data.data.planet_position[i].degree,
          data.data.planet_position[i].position
        );
        // console.log(nakhatra_name);
        var planet = {
          planet_name: data.data.planet_position[i].name,
          position: data.data.planet_position[i].position,
          degree: data.data.planet_position[i].degree,
          rashi_name: data.data.planet_position[i].rasi.name,
          lord_name: data.data.planet_position[i].rasi.lord.name,
          verdic_name: data.data.planet_position[i].rasi.lord.vedic_name,
          nakhatra_name: nakhatra_name.msg[0].nakhatra,
          from_deg: nakhatra_name.msg[0].from_deg,
          to_deg: nakhatra_name.msg[0].to_deg,
        };
        arr.push(planet);
      }
      res.send(arr);
    }

    // res.send(response.body)
  });
});

// rashiRouter.get("/planet_position", async (req, res) => {
//   var request_data = req.query;
//  var data = require("../raw_data/1-1999-05-04T16-55-00Z.json")
//  var arr =[]
//  for(i=0; i<data.data.planet_position.length; i++){
//       nakhatra_name = await getNakhatra(data.data.planet_position[i].degree,data.data.planet_position[i].position)
//     //   console.log(nakhatra_name);
//       var planet = {
//                 "planet_name" : data.data.planet_position[i]?.name,
//                 "position" : data.data.planet_position[i]?.position,
//                 "degree" : data.data.planet_position[i]?.degree,
//                 "rashi_name" : data.data.planet_position[i]?.rasi.name,
//                 "lord_name" : data.data.planet_position[i]?.rasi.lord.name,
//                 "verdic_name" : data.data.planet_position[i]?.rasi.lord.vedic_name,
//                 "nakhatra_name" : nakhatra_name.msg[0]?.nakhatra,
//                 "from_deg" : nakhatra_name.msg[0]?.from_deg,
//                 "to_deg" : nakhatra_name.msg[0]?.to_deg
//              }
//       arr.push(planet)
//  }
//  res.send(arr)
// })

rashiRouter.get("/planet_position", async (req, res) => {
  var request_data = req.query,
    res_dt;
  if (request_data.user_id > 0) {
    var select = "id, kundali_file_name, location_id",
      table_name = "td_user_profile",
      whr = `id = ${request_data.user_id}`,
      order = null;
    var chk_user = await db_Select(select, table_name, whr, order);
    // console.log(chk_user);
    if (chk_user.suc > 0 && chk_user.msg.length > 0) {
      if (chk_user.msg[0].kundali_file_name) {
        var data = require(`../raw_data/${chk_user.msg[0].kundali_file_name}`);
        var arr = [];
        if (data.status == "ok") {
          for (i = 0; i < data.data.planet_position.length; i++) {
            nakhatra_name = await getNakhatra(
              data.data.planet_position[i].degree,
              data.data.planet_position[i].position
            );
            //   console.log(nakhatra_name);
            var planet = {
              planet_name: data.data.planet_position[i]?.name,
              position: data.data.planet_position[i]?.position,
              degree: data.data.planet_position[i]?.degree,
              rashi_name: data.data.planet_position[i]?.rasi.name,
              lord_name: data.data.planet_position[i]?.rasi.lord.name,
              verdic_name: data.data.planet_position[i]?.rasi.lord.vedic_name,
              nakhatra_name: nakhatra_name.msg[0]?.nakhatra,
              from_deg: nakhatra_name.msg[0]?.from_deg,
              to_deg: nakhatra_name.msg[0]?.to_deg,
            };
            arr.push(planet);
          }
          var location_name =
            location[
              location.findIndex((dt) => dt.id == chk_user.msg[0].location_id)
            ].name;
          res_dt = { suc: 1, msg: arr, location_name: location_name };
        } else {
          res_dt = { suc: 0, msg: "error in planet position" };
        }
      } else {
        res_dt = { suc: 0, msg: "No file found" };
      }
    } else {
      res_dt = { suc: 0, msg: "No data found" };
    }
  } else {
    res_dt = { suc: 0, msg: "Please provide user id" };
  }
  res.send(res_dt);
});

const kundali = (user_id, coordinates, datetime) => {
  return new Promise((resolve, reject) => {
    var ayanamsa = 1,
      lang = "en";
    var options = {
      method: "GET",
      url: `https://api.prokerala.com/v2/astrology/planet-position?ayanamsa=${ayanamsa}&coordinates=${coordinates}&datetime=${datetime}&la=${lang}`,
      headers: {
        Accept: "application/json",
        Authorization: `Bearer ${accessToken.token}`,
      },
    };
    request(options, async function (error, response) {
      if (error) throw new Error(error);
      // console.log(response.body);
      else {
        var data = JSON.parse(response.body);
        var rasiData = data.data.planet_position.filter(
            (dt) => dt.name == "Moon"
          ),
          nakhatra_name = await getNakhatra(
            rasiData[0].degree,
            rasiData[0].position
          ),
          jotok_rasi_id = await getJotukRashiId(
            rasiData[0].rasi.name,
            nakhatra_name.msg[0]?.nakhatra
          );
        var file_name = user_id + "-" + datetime.split(":").join("-");
        fs.writeFile(
          path.join(__dirname, `../raw_data/${file_name}.json`),
          JSON.stringify(data),
          "utf-8",
          (err) => {
            if (err) resolve(err);
            else
              resolve({
                file_name: `${file_name}.json`,
                rasi_id: parseInt(rasiData[0].rasi.id) + 1,
                nakhatra_id:
                  nakhatra_name.suc > 0 && nakhatra_name.msg.length > 0
                    ? nakhatra_name.msg[0]?.nakhatra_id
                    : 0,
                jotok_rasi_id:
                  jotok_rasi_id.suc > 0 && jotok_rasi_id.msg.length > 0
                    ? jotok_rasi_id.msg[0]?.id
                    : 0,
              });
          }
        );
        // fs.writeFileSync(path.join(__dirname, `../raw_data/${file_name}.json`), JSON.stringify(data), 'utf-8')
      }

      // res.send(response.body)
    });
  });
};

// rashiRouter.get("/jotok", async (req, res) => {
//   var data = require("../raw_data/1-1999-05-04T16-55-00Z.json"),
//     jotok;
//   console.log(data);
//   for (i = 0; i < data.data.planet_position.length; i++) {
//     nakhatra_name = await getNakhatra(
//       data.data.planet_position[i].degree,
//       data.data.planet_position[i].position
//     );
//     console.log(nakhatra_name);
//     if (data.data.planet_position[i].name == "Moon") {
//       jotok = {
//         position: data.data.planet_position[i]?.position,
//         rashi: data.data.planet_position[i]?.rasi.name,
//         degree: data.data.planet_position[i]?.degree,
//         nakhatra_name: nakhatra_name.msg[0]?.nakhatra,
//       };
//     }
//   }

//   var data_1 = require("../raw_data/2-1996-05-29T07-15-00Z.json"),
//     jotok_1;
//   console.log(data);
//   for (i = 0; i < data_1.data.planet_position.length; i++) {
//     nakhatra_name = await getNakhatra(
//       data_1.data.planet_position[i].degree,
//       data_1.data.planet_position[i].position
//     );
//     console.log(nakhatra_name);
//     if (data_1.data.planet_position[i].name == "Moon") {
//       jotok_1 = {
//         position: data_1.data.planet_position[i]?.position,
//         rashi: data_1.data.planet_position[i]?.rasi.name,
//         degree: data_1.data.planet_position[i]?.degree,
//         nakhatra_name: nakhatra_name.msg[0]?.nakhatra,
//       };
//     }
//   }
//   res.send(jotok_1);
// });

rashiRouter.get("/position", async (req, res) => {
  var data = require("../raw_data/1-1999-05-04T16-55-00Z.json");
    var result  = [], planets = [];
    for(let dt of data.data.planet_position){
      planets.push(dt.position)
    }
    planets = [...new Set(planets)]
    for(let dt of planets){
      result.push({pos: dt, no_of_planet: data.data.planet_position.filter((pdt) => pdt.position == dt).length})
    }
    //   var position = data.data.planet_position.filter((dt) => dt.position == '10').length
    //   console.log(position);
    //  planet = {
    //   planet_name : data.data.planet_position[position].name
    //  };
    //  result.push(planet)
    //  console.log(result);
    res.json(result);
});


rashiRouter.get("/planet_arrange", async (req, res) => {
  var data = require("../raw_data/1-1999-05-04T16-55-00Z.json");
  var index = data.data.planet_position.findIndex((dt) => dt.name == 'Ascendant')
  // console.log(index);
  position = data.data.planet_position[index].position
  console.log(position);
  res.send(data)
})

// THIS IS A TEST FUNCTION TO FIND ALL RASI RELATED DETAILS FROM ALL FILES PRESENT IN RAW DATA FOLDER //
rashiRouter.get("/test", async (req, res) => {
  var sql = "";
  fs.readdir(path.join(__dirname, "../raw_data/"), (err, files) => {
    files.forEach((file) => {
      console.log(file);
      fs.readFile(
        path.join(__dirname, "../raw_data/", file),
        "utf-8",
        async (err, data) => {
          var result = JSON.parse(data);
          if (result.status == "ok") {
            var id = file.split("-")[0];
            var rasiData = result.data.planet_position.filter(
                (dt) => dt.name == "Moon"
              ),
              nakhatra_name = await getNakhatra(
                rasiData[0].degree,
                rasiData[0].position
              ),
              jotok_rasi_id = await getJotukRashiId(
                rasiData[0].rasi.name,
                nakhatra_name.msg[0]?.nakhatra
              ),
              rasi_id = parseInt(rasiData[0].rasi.id) + 1,
              nakhatra_id =
                nakhatra_name.suc > 0 && nakhatra_name.msg.length > 0
                  ? nakhatra_name.msg[0]?.nakhatra_id
                  : 0,
              jotok_rasi_id =
                jotok_rasi_id.suc > 0 && jotok_rasi_id.msg.length > 0
                  ? jotok_rasi_id.msg[0]?.id
                  : 0;
            // console.log(rasiData);
            sql += `UPDATE td_user_profile SET rasi_id = '${rasi_id}', nakhatra_id = '${nakhatra_id}', jotok_rasi_id = '${jotok_rasi_id}' WHERE id = ${id};`;
            console.log(sql);
            res.write(sql);
          }
        }
      );
    });
  });
  res.end("End");
});
// END //

module.exports = { rashiRouter, kundali };
