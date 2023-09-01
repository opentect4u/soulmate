const express = require('express'),
   PartnerRouter = express.Router(),
   dateFormat = require('dateformat'),
   request = require("request");

const { db_Select, EncryptDataToSend, db_Insert} = require('../module/MasterModule');

PartnerRouter.get("/partner_pref", async (req, res) => {
    var data = req.query;
    var select = "id, user_id, age_frm, age_to, marital_status, mother_tounge, religion, location",
    table_name = "td_user_partner_pref",
    whr = data.user_id > 0 ? `user_id=${data.user_id}` : null,
    order = null;
    var res_dt = await db_Select(select, table_name, whr, order);
    res_dt = await EncryptDataToSend(res_dt)
    res.send(res_dt);
  });
  
PartnerRouter.post("/update_partner", async (req, res) =>{
    var data = req.body;
    datetime = dateFormat(new Date(), "yyyy-mm-dd HH:MM:ss");

    // data = Buffer.from(data.data, "base64").toString();
    // data = JSON.parse(data);
     
    var select = 'id',
    table_name = 'td_user_partner_pref',
    whr = `user_id = ${data.user_id}`,                                                                                                                                                                               
    order = null;
    var dt = await db_Select(select, table_name, whr, order)
    console.log(dt);

    var table_name = "td_user_partner_pref",
    fields = dt.suc > 0 && dt.msg.length > 0 ? `age_frm = '${data.age_frm}', age_to = '${data.age_to}', 
    marital_status = '${data.marital_status}', mother_tounge = '${data.mother_tounge}', religion = '${data.religion}',
    location = '${data.location}',  modified_by = '${data.user}', modified_dt = '${datetime}'` : '(user_id, age_frm, age_to, marital_status, mother_tounge, religion, location,  created_by, created_dt)',
    values = `('${data.user_id}', '${data.age_frm}', '${data.age_to}', '${data.marital_status}', '${data.mother_tounge}',
    '${data.religion}', '${data.location}', '${data.user}', '${datetime}')`,
    whr = dt.suc > 0 && dt.msg.length > 0 ? `user_id = ${data.user_id}` : null,
    flag = dt.suc > 0 && dt.msg.length > 0 ? 1 : 0;
    var res_dt = await db_Insert(table_name, fields, values, whr, flag);
    res.send(res_dt);
})

module.exports = {PartnerRouter}