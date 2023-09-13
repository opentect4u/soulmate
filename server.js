const express = require("express"),
 fileUpload = require("express-fileupload"),
  app = express(),
  cors = require("cors"),
  fs = require("fs"),
  dateFormat = require("dateformat"),
  dotenv = require("dotenv"),
  request = require("request"),
  path = require('path');


  const {filePayloadExists} = require('./middleware/filesPayloadExists');
  const {fileSizeLimiter} = require('./middleware/fileSizeLimiter');
  const {fileExtLimiter} = require('./middleware/fileExtLimiter');

  port = process.env.PORT || 3000;

const { db_Insert } = require("./module/MasterModule");
const { MasterRouter, getNakhatra } = require("./routes/MasterRouter");
const { ProfileRouter } = require("./routes/ProfileRouter");
const { rashiRouter } = require("./routes/RasiRouter");
const { UserRouter } = require("./routes/UserRouter");
const { PartnerRouter } = require("./routes/PartnerRouter");
const { KycRouter } = require('./routes/KycRouter');

dotenv.config();
// USING CORS //
app.use(cors());
// parse requests of content-type - application/json
app.use(express.json());
// parse requests of content-type - application/x-www-form-urlencoded
app.use(express.urlencoded({ extended: false }));

app.use(express.static("uploads"));

setInterval(() => {
  // console.log('Hi');
  try {
    fs.readFile("./accessToken.json", "utf8", (err, jsonString) => {
      if (err) {
        console.log("Error reading file from disk:", err);
        return;
      }
      try {
        const tokenFile = JSON.parse(jsonString);
        // console.log(tokenFile);
        // console.log(dateFormat(tokenFile.created_dt, "yyyy-mm-dd"), dateFormat(new Date(), "yyyy-mm-dd"));
        if (
          dateFormat(tokenFile.created_dt, "yyyy-mm-dd") ==
          dateFormat(new Date(), "yyyy-mm-dd")
        ) {
          const timeDiff = parseInt(
            (new Date().getTime() -
              new Date(Date.parse(tokenFile.created_dt)).getTime()) /
              (60 * 60 * 1000)
          );
          if (timeDiff >= 1) {
            // console.log("time excided");
            var options = {
              method: "POST",
              url: process.env.GENERATE_TOKEN_API,
              headers: {
                "Content-Type": "application/json",
              },
              body: JSON.stringify({
                grant_type: process.env.GRANT_TYPE,
                client_id: process.env.CLIENT_ID,
                client_secret: process.env.CLIENT_SECRET,
              }),
            };
            request(options, function (error, response) {
              if (error) throw new Error(error);
              var output = JSON.parse(response.body);
              if (output.access_token) {
                tokenFile.created_dt = dateFormat(
                  new Date(),
                  "yyyy-mm-dd HH:MM:ss"
                );
                tokenFile.token = output.access_token;
                fs.writeFile(
                  "./accessToken.json",
                  JSON.stringify(tokenFile),
                  "utf8",
                  (err) => {
                    if (err) throw err;
                    // console.log("File has been saved!");
                  }
                );
              }
            });
          }
        } else {
          var options = {
            method: "POST",
            url: process.env.GENERATE_TOKEN_API,
            headers: {
              "Content-Type": "application/json",
            },
            body: JSON.stringify({
              grant_type: process.env.GRANT_TYPE,
              client_id: process.env.CLIENT_ID,
              client_secret: process.env.CLIENT_SECRET,
            }),
          };
          request(options, function (error, response) {
            if (error) throw new Error(error);
            var output = JSON.parse(response.body);
            if (output.access_token) {
              tokenFile.created_dt = dateFormat(
                new Date(),
                "yyyy-mm-dd HH:MM:ss"
              );
              tokenFile.token = output.access_token;
              fs.writeFile(
                "./accessToken.json",
                JSON.stringify(tokenFile),
                "utf8",
                (err) => {
                  if (err) throw err;
                  // console.log("File has been saved!");
                }
              );
            }
          });
        }
      } catch (err) {
        console.log("Error parsing JSON string:", err);
      }
    });
  } catch (err) {
    throw new Error(err);
  }
}, 1000 * 60 * 3);

app.use((req, res, next) => {
  var api_key = req.headers.api_key,
    api_secret = req.headers.api_secret;
  // console.log(req.headers.referer);
  // console.log(req.path);
  // if (req.path.split('/')[1] != 'err') {
  if (req.path != "/") {
    if (req.path.split("/")[1] == "uploads") {
      if (
        req.headers.referer &&
        req.headers.referer == "http://localhost:4200/"
      ) {
        next();
      } else {
        res.json({
          status: 0,
          message: "You Have no permission to access the file",
        });
      }
    } else {
      if (
        (api_key == "" ||
          api_key == null ||
          api_key == undefined ||
          !api_key) &&
        (api_secret == "" ||
          api_secret == null ||
          api_secret == undefined ||
          !api_secret)
      ) {
        // res.redirect('/err');
        // res.json();
        res.json({
          status: 0,
          message: "Please provide correct credentials to access the API",
        });
        // }
      } else {
        var dec_key = Buffer.from(api_key, "base64"),
          dec_secret = Buffer.from(api_secret, "base64");
        if (
          dec_key == process.env.API_KET &&
          dec_secret == process.env.API_SECRET
        ) {
          next();
        } else {
          res.json({
            status: 0,
            message: "Please provide correct credentials to access the API",
          });
        }
      }
    }
  } else {
    next();
  }
});


// data = [{
//   "id": 1,
//   "name": "Aadhaar Card"
// },
// {
//   "id": 2,
//   "name": "Passport"
// },
// {
//   "id": 3,
//   "name": " Voter ID card"
// },
// {
//   "id": 4,
//   "name": "Driving Licence"
// },
// {
//   "id": 5,
//   "name": " NREGA Card"
// },
// {
//   "id": 6,
//   "name": "PAN card"
// },
// {
//   "id": 7,
//   "name": "Photo ID Card"
// }]

app.get("/", async (req, res) => {
  // console.log('get request');
  // var data = require('./sample_data.json')
// for (let dt of data){
//   console.log(dt);
//   await db_Insert('md_document', '(doc_type)', `('${dt.name}')`, null, 0)
// }

  var arr = [];
  // res.send(data)
  // for(i=0; i<data.data.planet_position.length; i++){
  //     nakhatra_name = await getNakhatra(data.data.planet_position[i].degree,data.data.planet_position[i].position)
  //     console.log(nakhatra_name);
  //  var planet = {
  //        "planet_name" : data.data.planet_position[i].name,
  //        "position" : data.data.planet_position[i].position,
  //        "degree" : data.data.planet_position[i].degree,
  //        "rashi_name" : data.data.planet_position[i].rasi.name,
  //        "lord_name" : data.data.planet_position[i].rasi.lord.name,
  //        "verdic_name" : data.data.planet_position[i].rasi.lord.vedic_name,
  //        nakhatra_name : nakhatra_name.msg[0].nakhatra
  //     }
  //     arr.push(planet)
  // }
  res.send(arr);
});

app.use("/user", UserRouter);
app.use("/master", MasterRouter);
app.use('/profile', ProfileRouter)
app.use(rashiRouter);
app.use('/partner', PartnerRouter);
app.use('/kyc', KycRouter);

app.post('/upload', 
fileUpload({ crereateParentPath: true }),
filePayloadExists,
fileExtLimiter(['.png','.jpg','.jpeg']),
fileSizeLimiter,
 ( req, res) => {
      const files = req.files
      console.log(req.body);

    Object.keys(files).forEach(key => {
     const filepath = path.join(__dirname, 'files', files[key].name)
     files[key].mv(filepath, (err) => {
      if (err) res.status(500).json({ status: 'error', 
      message: err})
     })
    })

      res.json({ status: 'success', message: Object.keys(files).toString()})
 }
)

app.listen(port, (err) => {
  if (err) throw new Error(err);
  else console.log(`App is runnig at http://localhost:${port}`);
});
// console.log(data);
