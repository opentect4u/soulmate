const express = require('express'),
    KycRouter = express.Router(),
    request = require("request"),
    dateFormat = require("dateformat"),
    fileUpload = require("express-fileupload"),
    path = require('path');

const { fileExtLimiter } = require('../middleware/fileExtLimiter');
const { fileSizeLimiter } = require('../middleware/fileSizeLimiter');
const { filePayloadExists } = require('../middleware/filesPayloadExists');
const { aadhar_okyc_send_otp, aadhar_okyc_verify, pan_okyc_verify } = require('../module/KycModule');
const { db_Select, db_Delete } = require('../module/MasterModule');
const { db_Insert } = require('../module/MasterModule');

    KycRouter.get('/doc_list', async (req, res) => {
        var data = req.query
        console.log(data);
        var select = 'id, doc_type', 
        table_name = 'md_document',
        whr = data.id > 0 ? `id = ${id}` : null,
        order = 'ORDER BY doc_type';
        var res_dt = await db_Select(select, table_name, whr, order)
        res.send({suc: 1, msg: Buffer.from(JSON.stringify(res_dt.msg), 'utf8').toString('base64')})
    })


    // KycRouter.post('/update_doc_list', 
    // fileUpload({ crereateParentPath: true }),
    // filePayloadExists,
    // fileExtLimiter(['.png','.jpg','.jpeg','.pdf', '.docx', '.doc']),
    // fileSizeLimiter, async (req, res) => {

    //     var data = req.body,
    //     files = req.files,
    //     datetime = dateFormat(new Date(), "yyyy-mm-dd HH:MM:ss"), res_dt;
    //     console.log(files);
    //     // data = Buffer.from(data.data, "base64").toString();
    //     // data = JSON.parse(data);
    //     // for(let key in files){
    //     //     console.log(key);
    //         const filepath = path.join('assets', 'uploads', files['kyc_img'].name),
    //             fileName = files['kyc_img'].name;
    //         files['kyc_img'].mv(filepath, async (err) => {
    //             if (err) {
    //                 res.status(500).send({ status: 'error', message: err})
    //             }
    //             else{
    //                 var select = 'id',
    //                     table_name = 'td_user_kyc_list',
    //                     whr = `user_id = ${data.user_id}`,
    //                     order = null;
    //                 var kyc_dt = await db_Select(select, table_name, whr, order)

    //                 var table_name = 'td_user_kyc_list',
    //                 fields = kyc_dt.suc > 0 && kyc_dt.msg.length > 0 ? `doc_type = '${data.doc_type}', file_path = '${fileName}', modified_by = '${data.user}', modified_dt = '${datetime}'` :
    //                     '(user_id, doc_type, file_path, created_by, created_dt)',
    //                 values = `('${data.user_id}', '${data.doc_type}', '${fileName}', '${data.user}', '${datetime}')`,
    //                 whr = kyc_dt.suc > 0 && kyc_dt.msg.length > 0 ? `id = ${kyc_dt.msg[0].id}` : null,
    //                 flag = kyc_dt.suc > 0 && kyc_dt.msg.length > 0 ? 1 : 0;
    //                 res_dt = await db_Insert(table_name, fields, values, whr, flag)
    //             }
    //             res.send(res_dt)
    //         })
    //     // }
    // })

    KycRouter.get('/get_profile_pic', async (req, res) => {
      var data = req.query
      var select = 'id, file_path', 
      table_name = 'td_user_profile_image',
      whr = data.user_id > 0 ? `user_id = ${data.user_id}` : null,
      order = 'ORDER BY id';
      var res_dt = await db_Select(select, table_name, whr, order)
      res.send({suc: 1, msg: Buffer.from(JSON.stringify(res_dt.msg), 'utf8').toString('base64')})
  })

    KycRouter.post('/profile_pic', 
    fileUpload({ crereateParentPath: true }), (req, res) => {
        var data = req.body, res_dt;
        datetime = dateFormat(new Date(), "yyyy-mm-dd HH:MM:ss");
        if (!req.files || Object.keys(req.files).length === 0){
          return res.status(400).send('No files were uploaded...');
        }
      
        // Loop through uploaded files
        for (let fileKey in req.files) {
          const file = req.files[fileKey];
          // console.log(file);
      
          // Move the file to a desired location (e.g., 'uploads' directory)
          // const uploadPath = __dirname + '/uploads/' + file.name;
          // console.log(uploadPath);
          if(Array.isArray(file)){
            for(let fl of file){
               var uploadPath = path.join('assets', 'uploads', `${data.user_id}_${fl.name}`)
               fl.mv(uploadPath, function (err)  {
                 if (err) {
                  return  res_dt = {suc:0, msg: err}// res.status(500).send(err);
                 }else{
                  let fileName = `${data.user_id}_${fl.name}`
                  // var sql = `INSERT INTO TD_USER_PROFILE_IMAGE (user_id, file_path) VALUES ('${data.user_id}', '${fileName}')`
                   var table_name = 'td_user_profile_image',
                   fields = '(user_id, file_path, created_by, created_dt)',
                   values = `('${data.user_id}','${fileName}', '${data.user}', '${datetime}')`,
                    whr =  null ,
                    flag =  0;
                    res_dt = db_Insert(table_name, fields, values, whr, flag)
                 }
      
       });
             }
          }else{
            var uploadPath = path.join('assets', 'uploads', `${data.user_id}_${file.name}`)
            file.mv(uploadPath, function (err)  {
              if (err) {
              return  res.status(500).send(err);
              }else{
                let fileName = `${data.user_id}_${file.name}`
                // var sql = `INSERT INTO TD_USER_PROFILE_IMAGE (user_id, file_path) VALUES ('${data.user_id}', '${fileName}')`
                var table_name = 'td_user_profile_image',
                fields = '(user_id, file_path, created_by, created_dt)',
                values = `('${data.user_id}','${fileName}', '${data.user}', '${datetime}')`,
                       whr =  null ,
                       flag =  0;
                       res_dt = db_Insert(table_name, fields, values, whr, flag)
               }
            });
          }
        }
        res.send({suc: 1, msg: 'Uploaded'});
      });

KycRouter.get("/single_pic_delete", async (req, res) => {
  var data = req.query
  var table_name = 'td_user_profile_image',
  whr = `id=${data.id}`
  var res_dt = await db_Delete(table_name,whr)
  res.send(res_dt)
});

KycRouter.post('/aadhar_okyc_send_otp', async (req, res) => {
  var data = req.body,
    result;
  data = Buffer.from(data.data, "base64").toString();
  data = JSON.parse(data);
  if(data.aadhaar){
    result = await aadhar_okyc_send_otp(data.aadhaar)
    if(result.status){
      if(result.status == 'SUCCESS')
        result = {suc: 1, msg: result}
      else
      result = {suc: 0, msg: result}
    }else{
      result = {suc: 0, msg: result}
    }
  }else{
    result = {suc: 0, msg: 'No Aadhar Number Found'}
  }
  res.send(result)
})

KycRouter.post('/aadhar_okyc_verify', async (req, res) => {
  var data = req.body,
    result;
  data = Buffer.from(data.data, "base64").toString();
  data = JSON.parse(data);
  if(data.ref_id && data.otp){
    result = await aadhar_okyc_verify(data.ref_id, data.otp)
    if(result.status){
      result = {suc: 1, msg: result}
    }else{
      result = {suc: 0, msg: result}
    }
  }else{
    result = {suc: 0, msg: 'No Ref Number found'}
  }
  res.send(result)
})

KycRouter.post('/pan_okyc_verify', async (req, res) => {
  var data = req.body,
    result;
  data = Buffer.from(data.data, "base64").toString();
  data = JSON.parse(data);
  console.log(data);
  if(data.pan){
    result = await pan_okyc_verify(data.pan)
    if(result.status){
      if(result.status == 'SUCCESS')
        result = {suc: 1, msg: result}
      else
      result = {suc: 0, msg: result}
    }else{
      result = {suc: 0, msg: result}
    }
  }else{
    result = {suc: 0, msg: 'No Pan Number Found'}
  }
  res.send(result)
})

KycRouter.post("/update_kyc_flag", async (req, res) => {
  var data = req.body;
  datetime = dateFormat(new Date(), "yyyy-mm-dd HH:MM:ss");
  var table_name = `td_user_profile`,
  fields = `kyc_type= '${data.field_kyc_type}', profile_verify_flag = 'Y', modified_by = '${data.user_name}', modified_dt = '${datetime}'`,
  values = null,
  whr = `id = ${data.user_id}`,
  flag = 1;
  var KycStatus = await db_Insert(table_name, fields, values, whr, flag);
  res.send(KycStatus);
});

module.exports = {KycRouter}