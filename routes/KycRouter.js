const {db_Select} = require('../module/MasterModule');

const express = require('express'),
    KycRouter = express.Router(),
    request = require("request"),
    dateFormat = require("dateformat");

    KycRouter.get('/doc_list', async (req, res) => {
        var data = req.query
        var select = 'id, doc_type', 
        table_name = 'md_document',
        whr = data.id > 0 ? `id = ${id}` : null,
        order = 'ORDER BY doc_type';
        var res_dt = await db_Select(select, table_name, whr, order)
        res.send({suc: 1, msg: Buffer.from(JSON.stringify(res_dt.msg), 'utf8').toString('base64')})
    })



    module.exports = {KycRouter}