const express = require('express'),
    KycRouter = express.Router(),
    request = require("request"),
    dateFormat = require("dateformat"),
    fileUpload = require("express-fileupload"),
    path = require('path');

const { fileExtLimiter } = require('../middleware/fileExtLimiter');
const { fileSizeLimiter } = require('../middleware/fileSizeLimiter');
const { filePayloadExists } = require('../middleware/filesPayloadExists');
const { db_Select } = require('../module/MasterModule');
const { db_Insert } = require('../module/MasterModule');

KycRouter.use(fileUpload())

    KycRouter.get('/doc_list', async (req, res) => {
        var data = req.query
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
    // fileExtLimiter(['.png','.jpg','.jpeg']),
    // fileSizeLimiter, async (req, res) => {

    //     var data = req.body,
    //     files = req.files,
    //     datetime = dateFormat(new Date(), "yyyy-mm-dd HH:MM:ss"), res_dt;
    //     console.log(files);
    //     // data = Buffer.from(data.data, "base64").toString();
    //     // data = JSON.parse(data);
    //     // for(let key in files){
    //     //     console.log(key);
    //         const filepath = path.join('uploads', files['kyc_img'].name),
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

    KycRouter.post('/update_doc_list', async (req, res) =>{
            var data = req.body,
        files = req.files,
        datetime = dateFormat(new Date(), "yyyy-mm-dd HH:MM:ss"), res_dt;
        console.log(files);
        // data = Buffer.from(data.data, "base64").toString();
        // data = JSON.parse(data);
        // for(let key in files){
        //     console.log(key);
            const filepath = path.join('uploads', files['kyc_img'].name),
                fileName = files['kyc_img'].name;
            files['kyc_img'].mv(filepath, async (err) => {
                if (err) {
                    res.status(500).send({ status: 'error', message: err})
                }
                else{
                    var select = 'id',
                        table_name = 'td_user_kyc_list',
                        whr = `user_id = ${data.user_id}`,
                        order = null;
                    var kyc_dt = await db_Select(select, table_name, whr, order)

                    var table_name = 'td_user_kyc_list',
                    fields = kyc_dt.suc > 0 && kyc_dt.msg.length > 0 ? `doc_type = '${data.doc_type}', file_path = '${fileName}', modified_by = '${data.user}', modified_dt = '${datetime}'` :
                        '(user_id, doc_type, file_path, created_by, created_dt)',
                    values = `('${data.user_id}', '${data.doc_type}', '${fileName}', '${data.user}', '${datetime}')`,
                    whr = kyc_dt.suc > 0 && kyc_dt.msg.length > 0 ? `id = ${kyc_dt.msg[0].id}` : null,
                    flag = kyc_dt.suc > 0 && kyc_dt.msg.length > 0 ? 1 : 0;
                    res_dt = await db_Insert(table_name, fields, values, whr, flag)
                }
                res.send(res_dt)
            })
    })


    module.exports = {KycRouter}