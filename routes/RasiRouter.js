const express = require("express"),
    rashiRouter = express.Router(),
    request = require('request'),
    fs = require('fs'),
    path = require('path'),
    accessToken = require('../accessToken.json'),
    location = require("../location.json");

const { db_Select } = require("../module/MasterModule");
const { getNakhatra } = require('./MasterRouter')

rashiRouter.post('/kundali', (req, res) => {
var ayanamsa = 1,
        user_id = 2,
        coordinates = '22.569722,88.369722',
        datetime = '1996-05-29T07:15:00Z',
        lang = 'en';
    var options = {
        'method': 'GET',
        'url': `https://api.prokerala.com/v2/astrology/planet-position?ayanamsa=${ayanamsa}&coordinates=${coordinates}&datetime=${datetime}&la=${lang}`,
        'headers': {
            'Accept': 'application/json',
            'Authorization': `Bearer ${accessToken.token}`
        }
    };
    request(options, async function (error, response) {
        if (error) throw new Error(error);
        // console.log(response.body);
        else {
            var data = JSON.parse(response.body)
            file_name = user_id + '-' + datetime.split(':').join('-');
            fs.writeFileSync(path.join(__dirname, `../raw_data/${file_name}.json`), JSON.stringify(data), 'utf-8')
            var arr = []
            for (i = 0; i < data.data.planet_position.length; i++) {
                nakhatra_name = await getNakhatra(data.data.planet_position[i].degree, data.data.planet_position[i].position)
                // console.log(nakhatra_name);
                var planet = {
                    "planet_name": data.data.planet_position[i].name,
                    "position": data.data.planet_position[i].position,
                    "degree": data.data.planet_position[i].degree,
                    "rashi_name": data.data.planet_position[i].rasi.name,
                    "lord_name": data.data.planet_position[i].rasi.lord.name,
                    "verdic_name": data.data.planet_position[i].rasi.lord.vedic_name,
                    "nakhatra_name": nakhatra_name.msg[0].nakhatra,
                    "from_deg": nakhatra_name.msg[0].from_deg,
                    "to_deg": nakhatra_name.msg[0].to_deg
                }
                arr.push(planet)
            }
            res.send(arr)
        }

        // res.send(response.body)

    });

})

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
    var request_data = req.query, res_dt;
    if (request_data.user_id > 0) {
        var select = 'id, kundali_file_name, location_id',
            table_name = 'td_user_profile',
            whr = `id = ${request_data.user_id}`,
            order = null;
        var chk_user = await db_Select(select, table_name, whr, order)
        // console.log(chk_user);
        if (chk_user.suc > 0 && chk_user.msg.length > 0) {
            if (chk_user.msg[0].kundali_file_name) {
                var data = require(`../raw_data/${chk_user.msg[0].kundali_file_name}`)
                var arr = []
                for (i = 0; i < data.data.planet_position.length; i++) {
                    nakhatra_name = await getNakhatra(data.data.planet_position[i].degree, data.data.planet_position[i].position)
                    //   console.log(nakhatra_name);
                    var planet = {
                        "planet_name": data.data.planet_position[i]?.name,
                        "position": data.data.planet_position[i]?.position,
                        "degree": data.data.planet_position[i]?.degree,
                        "rashi_name": data.data.planet_position[i]?.rasi.name,
                        "lord_name": data.data.planet_position[i]?.rasi.lord.name,
                        "verdic_name": data.data.planet_position[i]?.rasi.lord.vedic_name,
                        "nakhatra_name": nakhatra_name.msg[0]?.nakhatra,
                        "from_deg": nakhatra_name.msg[0]?.from_deg,
                        "to_deg": nakhatra_name.msg[0]?.to_deg
                    }
                    arr.push(planet)
                }
                var location_name =
                location[location.findIndex((dt) => dt.id == chk_user.msg[0].location_id)].name;
                // res_dt.msg["location_name"] = location_name;
                res_dt = { suc: 1, msg: arr, location_name: location_name}
            } else {
                res_dt = { suc: 0, msg: 'No file found' }
            }
        } else {
            res_dt = { suc: 0, msg: 'No data found' }
        }
    } else {
        res_dt = { suc: 0, msg: 'Please provide user id' }
    }
    res.send(res_dt)
})

const kundali = (user_id, coordinates, datetime) => {
    return new Promise ((resolve, reject) => {
        var ayanamsa = 1,
        lang = 'en';
    var options = {
        'method': 'GET',
        'url': `https://api.prokerala.com/v2/astrology/planet-position?ayanamsa=${ayanamsa}&coordinates=${coordinates}&datetime=${datetime}&la=${lang}`,
        'headers': {
            'Accept': 'application/json',
            'Authorization': `Bearer ${accessToken.token}`
        }
    };
    request(options, async function (error, response) {
        if (error) throw new Error(error);
        // console.log(response.body);
        else {
            var data = JSON.parse(response.body)
            file_name = user_id + '-' + datetime.split(':').join('-');
            fs.writeFile(path.join(__dirname, `../raw_data/${file_name}.json`), JSON.stringify(data), 'utf-8', (err) => {
                if(err) resolve(err)
                else resolve(`${file_name}.json`)
            })
            // fs.writeFileSync(path.join(__dirname, `../raw_data/${file_name}.json`), JSON.stringify(data), 'utf-8')
        }

        // res.send(response.body)
    });
    })
}

module.exports = { rashiRouter, kundali }