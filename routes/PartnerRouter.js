const express = require('express'),
   PartnerRouter = express.Router(),
   dateFormat = require('dateformat'),
   request = require("request"),
   location = require("../location.json");

const { promises } = require('nodemailer/lib/xoauth2');
const { db_Select, EncryptDataToSend, db_Insert} = require('../module/MasterModule');
const { user_groom_loc, user_basic_info, user_hobbies } = require('../module/ProfileModule');
const { partner_match, RashiMatch, NumberMatchWithDate, JotokMatch, ElementMatch } = require('../module/PartnerModel');

PartnerRouter.get("/partner_pref", async (req, res) => {
    var data = req.query;
    var select = "a.id, a.user_id, a.age_frm, a.age_to, a.marital_status, a.mother_tounge mother_tounge_id, b.lang_name mother_tounge, a.religion, a.location location_id",
    table_name = "td_user_partner_pref a LEFT JOIN md_language b ON a.mother_tounge=b.id",
    whr = data.user_id > 0 ? `a.user_id=${data.user_id}` : null,
    order = null;
    var res_dt = await db_Select(select, table_name, whr, order);
    // console.log('Location ', res_dt.msg[0].location_id, location.findIndex((dt) => dt.id == res_dt.msg[0].location_id));
    var location_name =
    res_dt.suc > 0 && res_dt.msg.length > 0
      ? (location.findIndex((dt) => dt.id == res_dt.msg[0].location_id) >= 0 ? location[location.findIndex((dt) => dt.id == res_dt.msg[0].location_id)]?.name : null) : null;
  res_dt.suc > 0 ? (res_dt.msg.length > 0 ? res_dt.msg[0]["location_name"] = location_name ? location_name : '' : '') : "";
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
    fields = dt.suc > 0 && dt.msg.length > 0 ? `${data.field_frm_age > 0 ? `age_frm = '${data.field_frm_age}',` : ''} ${data.field_to_age > 0 ? `age_to = '${data.field_to_age}', ` : ''}
    ${data.field_marital_status != '' ? `marital_status = '${data.field_marital_status}', ` : ''} ${data.field_mother_tong != '' ? `mother_tounge = '${data.field_mother_tong}', ` : ''} ${data.field_ur_religion  ? `religion = '${data.field_ur_religion}', ` : ''}
    ${data.field_Country > 0 ? `location = '${data.field_Country}', ` : ''}  modified_by = '${data.user}', modified_dt = '${datetime}'` : '(user_id, age_frm, age_to, marital_status, mother_tounge, religion, location,  created_by, created_dt)',
    values = `('${data.user_id}', '${data.field_frm_age}', '${data.field_to_age}', '${data.field_marital_status}', '${data.field_mother_tong}',
    '${data.field_ur_religion}', '${data.field_Country}', '${data.user}', '${datetime}')`,
    whr = dt.suc > 0 && dt.msg.length > 0 ? `user_id = ${data.user_id}` : null,
    flag = dt.suc > 0 && dt.msg.length > 0 ? 1 : 0;
    var res_dt = await db_Insert(table_name, fields, values, whr, flag);
    res.send(res_dt);
})

PartnerRouter.get("/partner_match", async (req, res) => {
  var result = [], result_dt;
  var data = req.query;
  var select = "a.id, a.user_id, a.age_frm, a.age_to, a.marital_status, a.mother_tounge, a.religion, a.location, b.gender, b.dob, b.jotok_rasi_id",
  table_name = "td_user_partner_pref a, td_user_profile b",
  whr = data.user_id > 0 ? `a.user_id=b.id AND a.user_id=${data.user_id}` : `a.user_id=b.id`,
  order = null;
  var pref_dt = await db_Select(select, table_name, whr, order);
  // console.log(pref_dt);

  if(pref_dt.suc > 0 && pref_dt.msg.length > 0){
    var own_rashi = await partner_match(pref_dt.msg[0].dob)
    own_rashi = own_rashi.suc > 0 ? (own_rashi.msg.length > 0 ? own_rashi.msg[0].rashi_id : 0) : 0

    var select = "a.id, a.dob",
    table_name = "td_user_profile a LEFT JOIN  td_user_p_dtls b ON a.id=b.user_id",
    whr = `a.gender != '${pref_dt.msg[0].gender}' AND a.kundali_file_name IS NOT NULL ${pref_dt.msg[0].age_frm > 0 ? `AND DATE_FORMAT(from_days(datediff(now(), a.dob)), '%Y')+0 >= ${pref_dt.msg[0].age_frm} ` : ''} ${pref_dt.msg[0].age_to > 0 ? `AND DATE_FORMAT(from_days(datediff(now(), dob)), '%Y')+0 <= ${pref_dt.msg[0].age_to}` : '' }
            ${pref_dt.msg[0].marital_status != '' ? `AND b.marital_status = '${pref_dt.msg[0].marital_status}'` : ''}  ${pref_dt.msg[0].mother_tounge > 0 ? `AND a.mother_tong = ${pref_dt.msg[0].mother_tounge}` : ''}  ${pref_dt.msg[0].religion != '' ? `AND a.religion = '${pref_dt.msg[0].religion}'` : ''}  ${pref_dt.msg[0].location > 0 ? `AND a.location_id = ${pref_dt.msg[0].location}` : ''}` 
    order = null;
    var res_dt = await db_Select(select, table_name, whr, order);
    // console.log(res_dt);

    if(res_dt.suc > 0 && res_dt.msg.length > 0){
      for(let rdt of res_dt.msg){
        var groom_loc = await user_groom_loc({user_id:rdt?.id});
        // console.log(groom_loc);
        var basic_info = await user_basic_info({user_id:rdt?.id});

        var partner_rashi = await partner_match(basic_info.msg[0].dob)
        // console.log('Partner', partner_rashi);
        partner_rashi = partner_rashi.suc > 0 ? (partner_rashi.msg.length > 0 ? partner_rashi.msg[0].rashi_id : 0) : 0
        var rashi_match = await RashiMatch(own_rashi, partner_rashi)
        // console.log('Match', rashi_match);
        var number_match = await NumberMatchWithDate(dateFormat(pref_dt.msg[0].dob, 'dd'), dateFormat(basic_info.msg[0].dob, 'dd'))
        // console.log('Number', number_match);
        var jotok_match = await JotokMatch(pref_dt.msg[0].jotok_rasi_id, basic_info.msg[0].jotok_rasi_id)
        // console.log('Jotok', jotok_match);
        var tot_match_marks = Math.round(rashi_match + number_match + jotok_match)
        // console.log('Total Marks', Math.round(tot_match_marks));
        var EleFields = await ElementMatch(basic_info.msg[0].kundali_file_name)

        var hobbies = await user_hobbies({user_id:rdt?.id});
        var result_partner = {
          groom_location : {
            "value" : groom_loc.msg
          },
          basic_information : {
            "value" : basic_info.msg
          },
          hobbies : {
            "value" :  hobbies.msg
          },
          astro_match_marks: tot_match_marks,
          elementValues: EleFields
        }
        result.push(result_partner)
      }
      result_dt = {suc: 1, msg: result}
    }else{
      result_dt = {suc: 1, msg: []}
    }
  }else{
    result_dt = pref_dt
  }
  
 
 
  // res.send(res_dt)
  // res.send(result)
  res.send(result_dt)
})

module.exports = {PartnerRouter}