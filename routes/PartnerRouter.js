const express = require('express'),
   PartnerRouter = express.Router(),
   dateFormat = require('dateformat'),
   request = require("request"),
   location = require("../location.json");

const { db_Select, EncryptDataToSend, db_Insert} = require('../module/MasterModule');
const { user_groom_loc, user_basic_info, user_hobbies } = require('../module/ProfileModule');

PartnerRouter.get("/partner_pref", async (req, res) => {
    var data = req.query;
    var select = "a.id, a.user_id, a.age_frm, a.age_to, a.marital_status, a.mother_tounge mother_tounge_id, b.lang_name mother_tounge, a.religion, a.location location_id",
    table_name = "td_user_partner_pref a LEFT JOIN md_language b ON a.mother_tounge=b.id",
    whr = data.user_id > 0 ? `a.user_id=${data.user_id}` : null,
    order = null;
    var res_dt = await db_Select(select, table_name, whr, order);
    var location_name =
    res_dt.suc > 0 && res_dt.msg.length > 0
      ? location[location.findIndex((dt) => dt.id == res_dt.msg[0].location_id)].name
      : null;
  res_dt.suc > 0 ? (res_dt.msg[0]["location_name"] = location_name) : "";
    res_dt = await EncryptDataToSend(res_dt)
    res.send(res_dt);
  });
  
PartnerRouter.post("/update_partner", async (req, res) =>{
    var data = req.body;
    datetime = dateFormat(new Date(), "yyyy-mm-dd HH:MM:ss");

    data = Buffer.from(data.data, "base64").toString();
    data = JSON.parse(data);
     
    var select = 'id',
    table_name = 'td_user_partner_pref',
    whr = `user_id = ${data.user_id}`,                                                                                                                                                                               
    order = null;
    var dt = await db_Select(select, table_name, whr, order)
    // console.log(dt);

    var table_name = "td_user_partner_pref",
    fields = dt.suc > 0 && dt.msg.length > 0 ? `age_frm = '${data.field_frm_age}', age_to = '${data.field_to_age}', 
    marital_status = '${data.field_marital_status}', mother_tounge = '${data.field_mother_tong}', religion = '${data.field_ur_religion}',
    location = '${data.field_Country}',  modified_by = '${data.user}', modified_dt = '${datetime}'` : '(user_id, age_frm, age_to, marital_status, mother_tounge, religion, location,  created_by, created_dt)',
    values = `('${data.user_id}', '${data.field_frm_age}', '${data.field_to_age}', '${data.field_marital_status}', '${data.field_mother_tong}',
    '${data.field_ur_religion}', '${data.field_Country}', '${data.user}', '${datetime}')`,
    whr = dt.suc > 0 && dt.msg.length > 0 ? `user_id = ${data.user_id}` : null,
    flag = dt.suc > 0 && dt.msg.length > 0 ? 1 : 0;
    var res_dt = await db_Insert(table_name, fields, values, whr, flag);
    res.send(res_dt);
})

PartnerRouter.get("/partner_match", async (req, res) => {
  var result = []
  var data = req.query;
  var select = "a.id, a.user_id, a.age_frm, a.age_to, a.marital_status, a.mother_tounge, a.religion, a.location, b.gender",
  table_name = "td_user_partner_pref a, td_user_profile b",
  whr = data.user_id > 0 ? `a.user_id=b.id AND a.user_id=${data.user_id}` : `a.user_id=b.id`,
  order = null;
  var pref_dt = await db_Select(select, table_name, whr, order);

  if(pref_dt.suc > 0 && pref_dt.msg.length > 0){
    var select = "a.id",
    table_name = "td_user_profile a LEFT JOIN  td_user_p_dtls b ON a.id=b.user_id",
    whr = `a.gender != '${pref_dt.msg[0].gender}' AND a.kundali_file_name IS NOT NULL ${pref_dt.msg[0].age_frm > 0 ? `AND DATE_FORMAT(from_days(datediff(now(), a.dob)), '%Y')+0 >= ${pref_dt.msg[0].age_frm} ` : ''} ${pref_dt.msg[0].age_to > 0 ? `AND DATE_FORMAT(from_days(datediff(now(), dob)), '%Y')+0 <= ${pref_dt.msg[0].age_to}` : '' }
            ${pref_dt.msg[0].marital_status != '' ? `AND b.marital_status = '${pref_dt.msg[0].marital_status}'` : ''}  ${pref_dt.msg[0].mother_tounge > 0 ? `AND a.mother_tong = ${pref_dt.msg[0].mother_tounge}` : ''}  ${pref_dt.msg[0].religion != '' ? `AND a.religion = '${pref_dt.msg[0].religion}'` : ''}  ${pref_dt.msg[0].location > 0 ? `AND a.location_id = ${pref_dt.msg[0].location}` : ''}` 
    order = null;
    var res_dt = await db_Select(select, table_name, whr, order);
    console.log(res_dt);
    for (i = 0; i< res_dt.msg.length; i++){
      var groom_loc = await user_groom_loc({user_id:res_dt.msg[i].id});
      // console.log(groom_loc);
      var basic_info = await user_basic_info({user_id:res_dt.msg[i].id});
      var hobbies = await user_hobbies({user_id:res_dt.msg[i].id});
      var result_partner = {
        groom_location : {
          "value" : groom_loc.msg
        },
        basic_information : {
          "value" : basic_info.msg
        },
        hobbies : {
          "value" :  hobbies.msg
        }
      }
      result.push(result_partner)
    }
  }
  
 
 
  // res.send(res_dt)
  // res.send(result)
  res.send(result)
})

module.exports = {PartnerRouter}