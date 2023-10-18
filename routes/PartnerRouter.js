const express = require('express'),
   PartnerRouter = express.Router(),
   dateFormat = require('dateformat'),
   request = require("request"),
   location = require("../location.json");

// const { promises } = require('nodemailer/lib/xoauth2');
const { db_Select, EncryptDataToSend, db_Insert} = require('../module/MasterModule');
const { user_groom_loc, user_basic_info, user_hobbies } = require('../module/ProfileModule');
const { partner_match, RashiMatch, NumberMatchWithDate, JotokMatch, ElementMatch, MongalMatch, MoonshineMatch, calculateElementMarks, CalculateMongalMarks,  SunshineNumberMatch, checkAscMongalDosh, checkMoonMongalDosh, MoonShineName} = require('../module/PartnerModel');

PartnerRouter.get("/partner_pref", async (req, res) => {
    var data = req.query;
    var select = "a.id, a.user_id, a.age_frm, a.age_to, a.marital_status, a.mother_tounge mother_tounge_id, b.lang_name mother_tounge, a.religion, c.name city_name, a.city_id city_id, a.country_id, d.name country_name, a.state_id, e.name state_name",
    table_name = "td_user_partner_pref a LEFT JOIN md_language b ON a.mother_tounge=b.id LEFT JOIN md_cities c ON a.city_id=c.id LEFT JOIN md_countries d ON a.country_id=d.id LEFT JOIN md_states e ON a.state_id=e.id",
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
    fields = dt.suc > 0 && dt.msg.length > 0 ? 
    `age_frm = '${data.field_frm_age > 0 ? data.field_frm_age : 0}', 
    age_to = '${data.field_to_age > 0 ? data.field_to_age : 0}',
    marital_status = '${data.field_marital_status != '' ? data.field_marital_status : ''}', mother_tounge = '${data.field_mother_tong != '' ? data.field_mother_tong : 0}', religion = '${data.field_ur_religion !="" ? data.field_ur_religion : ''}',
    country_id = '${data.field_Country > 0 ? data.field_Country : 0}', state_id = '${data.field_State > 0 ? data.field_State : 0}', city_id = '${data.field_City > 0 ? data.field_City : 0}', modified_by = '${data.user}', modified_dt = '${datetime}'` : 
    `(user_id${data.field_frm_age > 0 ? `, age_frm ` : ''} ${data.field_to_age > 0 ? `, age_to` : ''}${data.field_marital_status != '' ? `, marital_status` : ''}${data.field_mother_tong != '' ? `, mother_tounge` : ''}${data.field_ur_religion  ? `, religion` : ''}${data.field_Country > 0 ? `, country_id` : ''}${data.field_State > 0 ? `, state_id` : ''}${data.field_City > 0 ? `, city_id` : ''},  created_by, created_dt)`,
    values = `('${data.user_id}' ${data.field_frm_age > 0 ? `, '${data.field_frm_age}'` : ''} ${data.field_to_age > 0 ? `, '${data.field_to_age}'` : ''} ${data.field_marital_status != '' ? `, '${data.field_marital_status}'` : ''}
    ${data.field_mother_tong != '' ? `, '${data.field_mother_tong}'` : ''} ${data.field_ur_religion  ? `, '${data.field_ur_religion}'` : ''} ${data.field_Country > 0 ? `, '${data.field_Country}'` : ''} ${data.field_State > 0 ? `, '${data.field_State}'` : ''} ${data.field_City > 0 ? `, '${data.field_City}'` : ''}, '${data.user}', '${datetime}')`,
    whr = dt.suc > 0 && dt.msg.length > 0 ? `user_id = ${data.user_id}` : null,
    flag = dt.suc > 0 && dt.msg.length > 0 ? 1 : 0;
    var res_dt = await db_Insert(table_name, fields, values, whr, flag);
    res.send(res_dt);
})

PartnerRouter.get("/partner_match", async (req, res) => {
  var result = [], result_dt;
  var data = req.query;
  var select = "a.id, a.user_id, a.age_frm, a.age_to, a.marital_status, a.mother_tounge, a.religion, a.city_id location, b.profile_id, b.gender, b.dob, b.jotok_rasi_id, b.rasi_id, b.kundali_file_name, b.gender own_gender",
    table_name = "td_user_profile b LEFT JOIN td_user_partner_pref a ON b.id=a.user_id",
    whr = `b.id=${data.user_id}`,
    order = null;
  var pref_dt = await db_Select(select, table_name, whr, order);
  // console.log('Pref', pref_dt);

  if(pref_dt.suc > 0 && pref_dt.msg.length > 0){
    var own_rashi = await partner_match(pref_dt.msg[0].dob)
    own_rashi = own_rashi.suc > 0 ? (own_rashi.msg.length > 0 ? own_rashi.msg[0].rashi_id : 0) : 0

    // var own_mongal_dosh = await MongalMatch(pref_dt.msg[0].kundali_file_name);
    try{
      var own_moon_mangal_marks = await checkMoonMongalDosh(pref_dt.msg[0].kundali_file_name),
          own_asc_mangal_marks = await checkAscMongalDosh(pref_dt.msg[0].kundali_file_name);
  
      var own_mongal_dosh = own_moon_mangal_marks + own_asc_mangal_marks;
    }catch(err){
      console.log(err);
    }

    // var own_element_val = await ElementMatch(pref_dt.msg[0].kundali_file_name),
    var own_element_val = await ElementMatch(pref_dt.msg[0].kundali_file_name),
    own_ele_name;
    console.log('Own Ele', own_element_val);
    if(own_element_val.length > 0){
      own_ele_name = [...own_element_val.map(dt=>dt.flag)]
      own_ele_name = own_ele_name.join('')
    }else{
      own_ele_name = own_element_val.flag
    }

    var select = "a.id, a.dob, a.gender",
    table_name = "td_user_profile a LEFT JOIN td_user_p_dtls b ON a.id=b.user_id",
    // whr = `a.gender != '${pref_dt.msg[0].gender}' AND a.kundali_file_name IS NOT NULL ${pref_dt.msg[0].age_frm > 0 ? `AND DATE_FORMAT(from_days(datediff(now(), a.dob)), '%Y')+0 >= ${pref_dt.msg[0].age_frm} ` : ''} ${pref_dt.msg[0].age_to > 0 ? `AND DATE_FORMAT(from_days(datediff(now(), dob)), '%Y')+0 <= ${pref_dt.msg[0].age_to}` : '' }
    //         ${pref_dt.msg[0].marital_status != '' ? `AND b.marital_status = '${pref_dt.msg[0].marital_status}'` : ''}  ${pref_dt.msg[0].mother_tounge > 0 ? `AND a.mother_tong = ${pref_dt.msg[0].mother_tounge}` : ''}  ${pref_dt.msg[0].religion != '' ? `AND a.religion = '${pref_dt.msg[0].religion}'` : ''}  ${pref_dt.msg[0].location > 0 ? `AND a.location_id = ${pref_dt.msg[0].location}` : ''}` 
    whr = `a.kundali_file_name IS NOT NULL
      ${pref_dt.msg[0].marital_status != '' ? `OR b.marital_status = '${pref_dt.msg[0].marital_status}'` : ''} 
      ${pref_dt.msg[0].mother_tounge > 0 ? `OR a.mother_tong = ${pref_dt.msg[0].mother_tounge}` : ''} 
      ${pref_dt.msg[0].religion != '' ? `OR a.religion = '${pref_dt.msg[0].religion}'` : ''} 
      ${pref_dt.msg[0].location > 0 ? 
        `AND a.location_id = ${pref_dt.msg[0].location}` : 
        (pref_dt.msg[0].own_location ? `AND a.location_id = ${pref_dt.msg[0].own_location}` : '')}`  
    // whr = `a.kundali_file_name IS NOT NULL ${pref_dt.msg[0].age_frm > 0 ? `AND DATE_FORMAT(from_days(datediff(now(), a.dob)), '%Y')+0 >= ${pref_dt.msg[0].age_frm} ` : ''} ${pref_dt.msg[0].age_to > 0 ? `AND DATE_FORMAT(from_days(datediff(now(), dob)), '%Y')+0 <= ${pref_dt.msg[0].age_to}` : '' }
    //         ${pref_dt.msg[0].marital_status != '' ? `OR b.marital_status = '${pref_dt.msg[0].marital_status}'` : ''}  ${pref_dt.msg[0].mother_tounge > 0 ? `OR a.mother_tong = ${pref_dt.msg[0].mother_tounge}` : ''}  ${pref_dt.msg[0].religion != '' ? `OR a.religion = '${pref_dt.msg[0].religion}'` : ''}  ${pref_dt.msg[0].location > 0 ? `AND a.location_id = ${pref_dt.msg[0].location}` : ''}`,             
    order = `GROUP BY a.id 
    HAVING a.gender != '${pref_dt.msg[0].gender}' 
    ${pref_dt.msg[0].age_frm > 0 || pref_dt.msg[0].age_to > 0 ?
    (`${pref_dt.msg[0].age_frm > 0 ? `AND DATE_FORMAT(from_days(datediff(now(), a.dob)), '%Y')+0 >= ${pref_dt.msg[0].age_frm}` : ''} 
      ${pref_dt.msg[0].age_to > 0 ? `AND DATE_FORMAT(from_days(datediff(now(), dob)), '%Y')+0 <= ${pref_dt.msg[0].age_to}` : ''}`
    ) :
    (pref_dt.msg[0].dob ? 
      (pref_dt.msg[0].own_gender != 'M' ? 
      `AND DATE_FORMAT(from_days(datediff(now(), a.dob)), '%Y')+0 >= DATE_FORMAT(from_days(datediff(now(), '${dateFormat(pref_dt.msg[0].dob, 'yyyy-mm-dd HH:MM:ss')}')), '%Y')+0` : 
      `AND DATE_FORMAT(from_days(datediff(now(), a.dob)), '%Y')+0 <= DATE_FORMAT(from_days(datediff(now(), '${dateFormat(pref_dt.msg[0].dob, 'yyyy-mm-dd HH:MM:ss')}')), '%Y')+0`) : 
    '')} ${data.max >= 0 && data.min >= 0 ? `LIMIT ${data.min >= 0 ? data.min : 0}${data.max > 0 ? `, ${data.max}` : ''}` : ''}`;
    var res_dt = await db_Select(select, table_name, whr, order);
    // console.log('PDt', res_dt);

    if(res_dt.suc > 0 && res_dt.msg.length > 0){
      for(let rdt of res_dt.msg){
        try{
          var groom_loc = await user_groom_loc({user_id:rdt?.id});
          // console.log(groom_loc);
          var basic_info = await user_basic_info({user_id:rdt?.id});
          // console.log('Basic', basic_info);
          var partner_rashi = await partner_match(basic_info.msg[0].dob)
          // console.log('Partner', partner_rashi);
          partner_rashi = partner_rashi.suc > 0 ? (partner_rashi.msg.length > 0 ? partner_rashi.msg[0].rashi_id : 0) : 0
          var rashi_match = await RashiMatch(own_rashi, partner_rashi)
          // console.log('Match', rashi_match);
          var number_match = await NumberMatchWithDate(dateFormat(pref_dt.msg[0].dob, 'dd'), dateFormat(basic_info.msg[0].dob, 'dd')) // Marks Filed
          // console.log('Number', number_match);
          var jotok_match = await JotokMatch(pref_dt.msg[0].jotok_rasi_id, basic_info.msg[0].jotok_rasi_id) // Marks Field
          // console.log(basic_info.msg[0].u_name, 'Jotok', jotok_match);
          var EleFields = await ElementMatch(basic_info.msg[0].kundali_file_name),
            partner_ele_name;
            if(EleFields.length > 0){
              partner_ele_name = [...EleFields.map(dt=>dt.flag)]
              partner_ele_name = partner_ele_name.join('')
            }else{
              partner_ele_name = EleFields.flag
            }
          console.log('Element P: ', basic_info.msg[0].u_name, EleFields, 'Own Element: ', own_element_val);
          var elementMarks = await calculateElementMarks(own_ele_name, partner_ele_name)
          // console.log(elementMarks);
          elementMarks = elementMarks.suc > 0 ? (elementMarks.msg.length > 0 ? elementMarks.msg[0].marks : 0) : 0 // Marks Filed
          // console.log("Element Marks: ", elementMarks);

          // var Mongol_dosha = await MongalMatch(basic_info.msg[0].kundali_file_name)
          try{
            var partner_moon_mangal_marks = await checkMoonMongalDosh(basic_info.msg[0].kundali_file_name),
              partner_asc_mangal_marks = await checkAscMongalDosh(basic_info.msg[0].kundali_file_name);
  
            var Mongol_dosha = partner_moon_mangal_marks + partner_asc_mangal_marks;
          }catch(err){
            console.log(err);
          }
          // console.log(basic_info.msg[0].u_name, "Mongal Dosh", Mongol_dosha, partner_moon_mangal_marks, partner_asc_mangal_marks, " OWN: ", own_mongal_dosh);
          var mongal_marks = await CalculateMongalMarks(own_mongal_dosh, Mongol_dosha); // Marks Filed
      // console.log(own_moon_mangal_marks,own_asc_mangal_marks,own_mongal_dosh,'own');
      // console.log(partner_moon_mangal_marks,partner_asc_mangal_marks,Mongol_dosha,'partner');
      // console.log(basic_info.msg[0].u_name, 'Get Marks', mongal_marks);

          var moonShineMatch = await MoonshineMatch(pref_dt.msg[0].rasi_id, basic_info.msg[0].rasi_id) // Marks Filed
          // console.log('MoonShineMatch', moonShineMatch);

          // var tot_match_marks = Math.round(rashi_match + number_match + jotok_match)
          var SunShineMatch = await SunshineNumberMatch(own_rashi, partner_rashi, dateFormat(basic_info.msg[0].dob, 'dd'), pref_dt.msg[0].dob)
          
          var tot_match_marks = Math.round(jotok_match + elementMarks + mongal_marks + moonShineMatch + SunShineMatch);
          console.log(basic_info.msg[0].u_name, 'Total Marks', jotok_match, elementMarks, mongal_marks, moonShineMatch, SunShineMatch);

          
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
            sun_shine_rashi_match: SunShineMatch,
            numeric_match: elementMarks,
            jotok_marks: jotok_match,
            astro_match_marks: tot_match_marks,
            elementValues: EleFields,
            mongal_dasha: Mongol_dosha,
            jotok_match, 
            elementMarks,
            mongal_marks,
            moonShineMatch,
            SunShineMatch
          }
          result.push(result_partner)
        }catch(err){
          console.log('ERR ID', rdt.id);
          console.log(err);
        }
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
});

PartnerRouter.post("/partner_match_search", async (req, res) => {
  var result = [], result_dt;
  var data = req.body;
  var select = "b.gender, b.rasi_id, b.dob, b.jotok_rasi_id, b.kundali_file_name",
    table_name = "td_user_profile b",
    whr = `b.id=${data.user_id}`,
    order = null;
  var pref_dt = await db_Select(select, table_name, whr, order);
  // console.log('Pref', pref_dt);

  if(pref_dt.suc > 0 && pref_dt.msg.length > 0){
    var own_rashi = await partner_match(pref_dt.msg[0].dob)
    own_rashi = own_rashi.suc > 0 ? (own_rashi.msg.length > 0 ? own_rashi.msg[0].rashi_id : 0) : 0

    // var own_mongal_dosh = await MongalMatch(pref_dt.msg[0].kundali_file_name);
    try{
      var own_moon_mangal_marks = await checkMoonMongalDosh(pref_dt.msg[0].kundali_file_name),
          own_asc_mangal_marks = await checkAscMongalDosh(pref_dt.msg[0].kundali_file_name);
  
      var own_mongal_dosh = own_moon_mangal_marks + own_asc_mangal_marks;
    }catch(err){
      console.log(err);
    }

    // var own_element_val = await ElementMatch(pref_dt.msg[0].kundali_file_name),
    var own_element_val = await ElementMatch(pref_dt.msg[0].kundali_file_name),
    own_ele_name;
    console.log('Own Ele', own_element_val);
    if(own_element_val.length > 0){
      own_ele_name = [...own_element_val.map(dt=>dt.flag)]
      own_ele_name = own_ele_name.join('')
    }else{
      own_ele_name = own_element_val.flag
    }

    var select = "a.id, a.dob, a.gender",
    table_name = "td_user_profile a LEFT JOIN td_user_p_dtls b ON a.id=b.user_id",
    // whr = `a.gender != '${pref_dt.msg[0].gender}' AND a.kundali_file_name IS NOT NULL ${pref_dt.msg[0].age_frm > 0 ? `AND DATE_FORMAT(from_days(datediff(now(), a.dob)), '%Y')+0 >= ${pref_dt.msg[0].age_frm} ` : ''} ${pref_dt.msg[0].age_to > 0 ? `AND DATE_FORMAT(from_days(datediff(now(), dob)), '%Y')+0 <= ${pref_dt.msg[0].age_to}` : '' }
    //         ${pref_dt.msg[0].marital_status != '' ? `AND b.marital_status = '${pref_dt.msg[0].marital_status}'` : ''}  ${pref_dt.msg[0].mother_tounge > 0 ? `AND a.mother_tong = ${pref_dt.msg[0].mother_tounge}` : ''}  ${pref_dt.msg[0].religion != '' ? `AND a.religion = '${pref_dt.msg[0].religion}'` : ''}  ${pref_dt.msg[0].location > 0 ? `AND a.location_id = ${pref_dt.msg[0].location}` : ''}` 
    whr = `a.kundali_file_name IS NOT NULL
      ${data.marital_status != '' ? `AND b.marital_status = '${data.marital_status}'` : ''} 
      ${data.mother_tounge > 0 ? `AND a.mother_tong = ${data.mother_tounge}` : ''} 
      ${data.religion != '' ? `AND a.religion = '${data.religion}'` : ''} 
      ${data.country_id > 0 ? `AND a.country_id = ${data.country_id}` : ''}  
      ${data.state_id > 0 ? `AND a.state_id = ${data.state_id}` : ''}`  
    // whr = `a.kundali_file_name IS NOT NULL ${data.age_frm > 0 ? `AND DATE_FORMAT(from_days(datediff(now(), a.dob)), '%Y')+0 >= ${data.age_frm} ` : ''} ${data.age_to > 0 ? `AND DATE_FORMAT(from_days(datediff(now(), dob)), '%Y')+0 <= ${data.age_to}` : '' }
    //         ${data.marital_status != '' ? `OR b.marital_status = '${data.marital_status}'` : ''}  ${data.mother_tounge > 0 ? `OR a.mother_tong = ${data.mother_tounge}` : ''}  ${data.religion != '' ? `OR a.religion = '${data.religion}'` : ''}  ${data.location > 0 ? `AND a.location_id = ${data.location}` : ''}`,             
    order = `GROUP BY a.id 
    HAVING a.gender != '${pref_dt.msg[0].gender}' 
    ${data.age_frm > 0 || data.age_to > 0 ?
    (`${data.age_frm > 0 ? `AND DATE_FORMAT(from_days(datediff(now(), a.dob)), '%Y')+0 >= ${data.age_frm}` : ''} 
      ${data.age_to > 0 ? `AND DATE_FORMAT(from_days(datediff(now(), dob)), '%Y')+0 <= ${data.age_to}` : ''}`
    ) :
    (pref_dt.msg[0].dob ? 
      (pref_dt.msg[0].gender != 'M' ? 
      `AND DATE_FORMAT(from_days(datediff(now(), a.dob)), '%Y')+0 >= DATE_FORMAT(from_days(datediff(now(), '${dateFormat(pref_dt.msg[0].dob, 'yyyy-mm-dd HH:MM:ss')}')), '%Y')+0` : 
      `AND DATE_FORMAT(from_days(datediff(now(), a.dob)), '%Y')+0 <= DATE_FORMAT(from_days(datediff(now(), '${dateFormat(pref_dt.msg[0].dob, 'yyyy-mm-dd HH:MM:ss')}')), '%Y')+0`) : 
    '')} ${data.max >= 0 && data.min >= 0 ? `LIMIT ${data.min >= 0 ? data.min : 0}${data.max > 0 ? `, ${data.max}` : ''}` : ''}`;
    var res_dt = await db_Select(select, table_name, whr, order);
    console.log('PDt', res_dt);

    if(res_dt.suc > 0 && res_dt.msg.length > 0){
      for(let rdt of res_dt.msg){
        try{
          var groom_loc = await user_groom_loc({user_id:rdt?.id});
          // console.log(groom_loc);
          var basic_info = await user_basic_info({user_id:rdt?.id});
          // console.log('Basic', basic_info);
          var partner_rashi = await partner_match(basic_info.msg[0].dob)
          // console.log('Partner', partner_rashi);
          partner_rashi = partner_rashi.suc > 0 ? (partner_rashi.msg.length > 0 ? partner_rashi.msg[0].rashi_id : 0) : 0
          var rashi_match = await RashiMatch(own_rashi, partner_rashi)
          // console.log('Match', rashi_match);
          var number_match = await NumberMatchWithDate(dateFormat(pref_dt.msg[0].dob, 'dd'), dateFormat(basic_info.msg[0].dob, 'dd')) // Marks Filed
          // console.log('Number', number_match);
          var jotok_match = await JotokMatch(pref_dt.msg[0].jotok_rasi_id, basic_info.msg[0].jotok_rasi_id) // Marks Field
          // console.log(basic_info.msg[0].u_name, 'Jotok', jotok_match);
          var EleFields = await ElementMatch(basic_info.msg[0].kundali_file_name),
            partner_ele_name;
            if(EleFields.length > 0){
              partner_ele_name = [...EleFields.map(dt=>dt.flag)]
              partner_ele_name = partner_ele_name.join('')
            }else{
              partner_ele_name = EleFields.flag
            }
          console.log('Element P: ', basic_info.msg[0].u_name, EleFields, 'Own Element: ', own_element_val);
          var elementMarks = await calculateElementMarks(own_ele_name, partner_ele_name)
          // console.log(elementMarks);
          elementMarks = elementMarks.suc > 0 ? (elementMarks.msg.length > 0 ? elementMarks.msg[0].marks : 0) : 0 // Marks Filed
          // console.log("Element Marks: ", elementMarks);

          // var Mongol_dosha = await MongalMatch(basic_info.msg[0].kundali_file_name)
          try{
            var partner_moon_mangal_marks = await checkMoonMongalDosh(basic_info.msg[0].kundali_file_name),
              partner_asc_mangal_marks = await checkAscMongalDosh(basic_info.msg[0].kundali_file_name);
  
            var Mongol_dosha = partner_moon_mangal_marks + partner_asc_mangal_marks;
          }catch(err){
            console.log(err);
          }
          // console.log(basic_info.msg[0].u_name, "Mongal Dosh", Mongol_dosha, partner_moon_mangal_marks, partner_asc_mangal_marks, " OWN: ", own_mongal_dosh);
          var mongal_marks = await CalculateMongalMarks(own_mongal_dosh, Mongol_dosha); // Marks Filed
      // console.log(own_moon_mangal_marks,own_asc_mangal_marks,own_mongal_dosh,'own');
      // console.log(partner_moon_mangal_marks,partner_asc_mangal_marks,Mongol_dosha,'partner');
      // console.log(basic_info.msg[0].u_name, 'Get Marks', mongal_marks);

          var moonShineMatch = await MoonshineMatch(pref_dt.msg[0].rasi_id, basic_info.msg[0].rasi_id) // Marks Filed
          // console.log('MoonShineMatch', moonShineMatch);

          // var tot_match_marks = Math.round(rashi_match + number_match + jotok_match)
          var SunShineMatch = await SunshineNumberMatch(own_rashi, partner_rashi, dateFormat(basic_info.msg[0].dob, 'dd'), pref_dt.msg[0].dob)
          
          var tot_match_marks = Math.round(jotok_match + elementMarks + mongal_marks + moonShineMatch + SunShineMatch);
          console.log(basic_info.msg[0].u_name, 'Total Marks', jotok_match, elementMarks, mongal_marks, moonShineMatch, SunShineMatch);

          
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
            sun_shine_rashi_match: SunShineMatch,
            numeric_match: elementMarks,
            jotok_marks: jotok_match,
            astro_match_marks: tot_match_marks,
            elementValues: EleFields,
            mongal_dasha: Mongol_dosha,
            jotok_match, 
            elementMarks,
            mongal_marks,
            moonShineMatch,
            SunShineMatch
          }
          result.push(result_partner)
        }catch(err){
          console.log('ERR ID', rdt.id);
          console.log(err);
        }
      }
      result_dt = {suc: 1, msg: result}
    }else{
      result_dt = {suc: 0, msg: []}
    }
  }else{
    result_dt = pref_dt
    console.log(result_dt);
  }
  // res.send(res_dt)
  // res.send(result)
  res.send(result_dt)
});


// PartnerRouter.get("/partner_match", async (req, res) => {
//   var result = [], result_dt;
//   var data = req.query;
//   var select = "a.id, a.user_id, a.age_frm, a.age_to, a.marital_status, a.mother_tounge, a.religion, a.city_id location, b.gender, b.dob, b.jotok_rasi_id, b.rasi_id, b.kundali_file_name, b.gender own_gender",
//     table_name = "td_user_profile b LEFT JOIN td_user_partner_pref a ON b.id=a.user_id",
//     whr = `b.id=${data.user_id}`,
//     order = null;
//   var pref_dt = await db_Select(select, table_name, whr, order);
//   // console.log('Pref', pref_dt);

//   if(pref_dt.suc > 0 && pref_dt.msg.length > 0){
//     var own_rashi = await partner_match(pref_dt.msg[0].dob)
//     own_rashi = own_rashi.suc > 0 ? (own_rashi.msg.length > 0 ? own_rashi.msg[0].rashi_id : 0) : 0

//     // var own_mongal_dosh = await MongalMatch(pref_dt.msg[0].kundali_file_name);
//     try{
//       var own_moon_mangal_marks = await checkMoonMongalDosh(pref_dt.msg[0].kundali_file_name),
//           own_asc_mangal_marks = await checkAscMongalDosh(pref_dt.msg[0].kundali_file_name);
  
//       var own_mongal_dosh = own_moon_mangal_marks + own_asc_mangal_marks;
//     }catch(err){
//       console.log(err);
//     }

//     // var own_element_val = await ElementMatch(pref_dt.msg[0].kundali_file_name),
//     var own_element_val = await ElementMatch(pref_dt.msg[0].kundali_file_name),
//     own_ele_name;
//     console.log('Own Ele', own_element_val);
//     if(own_element_val.length > 0){
//       own_ele_name = [...own_element_val.map(dt=>dt.flag)]
//       own_ele_name = own_ele_name.join('')
//     }else{
//       own_ele_name = own_element_val.flag
//     }

//     var select = "a.id, a.dob, a.gender",
//     table_name = "td_user_profile a LEFT JOIN td_user_p_dtls b ON a.id=b.user_id",
//     // whr = `a.gender != '${pref_dt.msg[0].gender}' AND a.kundali_file_name IS NOT NULL ${pref_dt.msg[0].age_frm > 0 ? `AND DATE_FORMAT(from_days(datediff(now(), a.dob)), '%Y')+0 >= ${pref_dt.msg[0].age_frm} ` : ''} ${pref_dt.msg[0].age_to > 0 ? `AND DATE_FORMAT(from_days(datediff(now(), dob)), '%Y')+0 <= ${pref_dt.msg[0].age_to}` : '' }
//     //         ${pref_dt.msg[0].marital_status != '' ? `AND b.marital_status = '${pref_dt.msg[0].marital_status}'` : ''}  ${pref_dt.msg[0].mother_tounge > 0 ? `AND a.mother_tong = ${pref_dt.msg[0].mother_tounge}` : ''}  ${pref_dt.msg[0].religion != '' ? `AND a.religion = '${pref_dt.msg[0].religion}'` : ''}  ${pref_dt.msg[0].location > 0 ? `AND a.location_id = ${pref_dt.msg[0].location}` : ''}` 
//     whr = `a.kundali_file_name IS NOT NULL
//       ${pref_dt.msg[0].marital_status != '' ? `OR b.marital_status = '${pref_dt.msg[0].marital_status}'` : ''} 
//       ${pref_dt.msg[0].mother_tounge > 0 ? `OR a.mother_tong = ${pref_dt.msg[0].mother_tounge}` : ''} 
//       ${pref_dt.msg[0].religion != '' ? `OR a.religion = '${pref_dt.msg[0].religion}'` : ''} 
//       ${pref_dt.msg[0].location > 0 ? 
//         `AND a.location_id = ${pref_dt.msg[0].location}` : 
//         (pref_dt.msg[0].own_location ? `AND a.location_id = ${pref_dt.msg[0].own_location}` : '')}`  
//     // whr = `a.kundali_file_name IS NOT NULL ${pref_dt.msg[0].age_frm > 0 ? `AND DATE_FORMAT(from_days(datediff(now(), a.dob)), '%Y')+0 >= ${pref_dt.msg[0].age_frm} ` : ''} ${pref_dt.msg[0].age_to > 0 ? `AND DATE_FORMAT(from_days(datediff(now(), dob)), '%Y')+0 <= ${pref_dt.msg[0].age_to}` : '' }
//     //         ${pref_dt.msg[0].marital_status != '' ? `OR b.marital_status = '${pref_dt.msg[0].marital_status}'` : ''}  ${pref_dt.msg[0].mother_tounge > 0 ? `OR a.mother_tong = ${pref_dt.msg[0].mother_tounge}` : ''}  ${pref_dt.msg[0].religion != '' ? `OR a.religion = '${pref_dt.msg[0].religion}'` : ''}  ${pref_dt.msg[0].location > 0 ? `AND a.location_id = ${pref_dt.msg[0].location}` : ''}`,             
//     order = `GROUP BY a.id 
//     HAVING a.gender != '${pref_dt.msg[0].gender}' 
//     ${pref_dt.msg[0].age_frm > 0 || pref_dt.msg[0].age_to > 0 ?
//     (`${pref_dt.msg[0].age_frm > 0 ? `AND DATE_FORMAT(from_days(datediff(now(), a.dob)), '%Y')+0 >= ${pref_dt.msg[0].age_frm}` : ''} 
//       ${pref_dt.msg[0].age_to > 0 ? `AND DATE_FORMAT(from_days(datediff(now(), dob)), '%Y')+0 <= ${pref_dt.msg[0].age_to}` : ''}`
//     ) :
//     (pref_dt.msg[0].dob ? 
//       (pref_dt.msg[0].own_gender != 'M' ? 
//       `AND DATE_FORMAT(from_days(datediff(now(), a.dob)), '%Y')+0 >= DATE_FORMAT(from_days(datediff(now(), '${dateFormat(pref_dt.msg[0].dob, 'yyyy-mm-dd HH:MM:ss')}')), '%Y')+0` : 
//       `AND DATE_FORMAT(from_days(datediff(now(), a.dob)), '%Y')+0 <= DATE_FORMAT(from_days(datediff(now(), '${dateFormat(pref_dt.msg[0].dob, 'yyyy-mm-dd HH:MM:ss')}')), '%Y')+0`) : 
//     '')}`;
//     var res_dt = await db_Select(select, table_name, whr, order);
//     // console.log('PDt', res_dt);

//     if(res_dt.suc > 0 && res_dt.msg.length > 0){
//       for(let rdt of res_dt.msg){
//         try{
//           var groom_loc = await user_groom_loc({user_id:rdt?.id});
//           // console.log(groom_loc);
//           var basic_info = await user_basic_info({user_id:rdt?.id});
//           // console.log('Basic', basic_info);
//           var partner_rashi = await partner_match(basic_info.msg[0].dob)
//           // console.log('Partner', partner_rashi);
//           partner_rashi = partner_rashi.suc > 0 ? (partner_rashi.msg.length > 0 ? partner_rashi.msg[0].rashi_id : 0) : 0
//           var rashi_match = await RashiMatch(own_rashi, partner_rashi)
//           // console.log('Match', rashi_match);
//           var number_match = await NumberMatchWithDate(dateFormat(pref_dt.msg[0].dob, 'dd'), dateFormat(basic_info.msg[0].dob, 'dd')) // Marks Filed
//           // console.log('Number', number_match);
//           var jotok_match = await JotokMatch(pref_dt.msg[0].jotok_rasi_id, basic_info.msg[0].jotok_rasi_id) // Marks Field
//           // console.log(basic_info.msg[0].u_name, 'Jotok', jotok_match);
//           var EleFields = await ElementMatch(basic_info.msg[0].kundali_file_name),
//             partner_ele_name;
//             if(EleFields.length > 0){
//               partner_ele_name = [...EleFields.map(dt=>dt.flag)]
//               partner_ele_name = partner_ele_name.join('')
//             }else{
//               partner_ele_name = EleFields.flag
//             }
//           console.log('Element P: ', basic_info.msg[0].u_name, EleFields, 'Own Element: ', own_element_val);
//           var elementMarks = await calculateElementMarks(own_ele_name, partner_ele_name)
//           // console.log(elementMarks);
//           elementMarks = elementMarks.suc > 0 ? (elementMarks.msg.length > 0 ? elementMarks.msg[0].marks : 0) : 0 // Marks Filed
//           // console.log("Element Marks: ", elementMarks);

//           // var Mongol_dosha = await MongalMatch(basic_info.msg[0].kundali_file_name)
//           try{
//             var partner_moon_mangal_marks = await checkMoonMongalDosh(basic_info.msg[0].kundali_file_name),
//               partner_asc_mangal_marks = await checkAscMongalDosh(basic_info.msg[0].kundali_file_name);
  
//             var Mongol_dosha = partner_moon_mangal_marks + partner_asc_mangal_marks;
//           }catch(err){
//             console.log(err);
//           }
//           // console.log(basic_info.msg[0].u_name, "Mongal Dosh", Mongol_dosha, partner_moon_mangal_marks, partner_asc_mangal_marks, " OWN: ", own_mongal_dosh);
//           var mongal_marks = await CalculateMongalMarks(own_mongal_dosh, Mongol_dosha); // Marks Filed
//       // console.log(own_moon_mangal_marks,own_asc_mangal_marks,own_mongal_dosh,'own');
//       // console.log(partner_moon_mangal_marks,partner_asc_mangal_marks,Mongol_dosha,'partner');
//       // console.log(basic_info.msg[0].u_name, 'Get Marks', mongal_marks);

//           var moonShineMatch = await MoonshineMatch(pref_dt.msg[0].rasi_id, basic_info.msg[0].rasi_id) // Marks Filed
//           // console.log('MoonShineMatch', moonShineMatch);

//           // var tot_match_marks = Math.round(rashi_match + number_match + jotok_match)
//           var SunShineMatch = await SunshineNumberMatch(own_rashi, partner_rashi, dateFormat(basic_info.msg[0].dob, 'dd'), pref_dt.msg[0].dob)
          
//           var tot_match_marks = Math.round(jotok_match + elementMarks + mongal_marks + moonShineMatch + SunShineMatch);
//           console.log(basic_info.msg[0].u_name, 'Total Marks', jotok_match, elementMarks, mongal_marks, moonShineMatch, SunShineMatch);

          
//           var hobbies = await user_hobbies({user_id:rdt?.id});
//           var result_partner = {
//             groom_location : {
//               "value" : groom_loc.msg
//             },
//             basic_information : {
//               "value" : basic_info.msg
//             },
//             hobbies : {
//               "value" :  hobbies.msg
//             },
//             sun_shine_rashi_match: SunShineMatch,
//             numeric_match: elementMarks,
//             jotok_marks: jotok_match,
//             astro_match_marks: tot_match_marks,
//             elementValues: EleFields,
//             mongal_dasha: Mongol_dosha,
//             jotok_match, 
//             elementMarks,
//             mongal_marks,
//             moonShineMatch,
//             SunShineMatch
//           }
//           result.push(result_partner)
//         }catch(err){
//           console.log('ERR ID', rdt.id);
//           console.log(err);
//         }
//       }
//       result_dt = {suc: 1, msg: result}
//     }else{
//       result_dt = {suc: 1, msg: []}
//     }
//   }else{
//     result_dt = pref_dt
//   }
//   // res.send(res_dt)
//   // res.send(result)
//   res.send(result_dt)
// });


PartnerRouter.get('/partner_match_marks', async (req, res) => {
  // GET own_id and partner_id

  // OWN DETAILS //
  var data = req.query;
  var select = "b.gender, b.rasi_id, b.dob, b.jotok_rasi_id, b.kundali_file_name",
  table_name = "td_user_profile b",
  whr = `b.id=${data.own_id}`,
  order = null;
  var own_dt = await db_Select(select, table_name, whr, order);
  // console.log(own_dt);

  if(own_dt.suc > 0 && own_dt.msg.length > 0){
    var own_moonshine_name = await MoonShineName(own_dt.msg[0].rasi_id)
    var own_rashi = await partner_match(own_dt.msg[0].dob),
      own_rashi_name = own_rashi.suc > 0 ? (own_rashi.msg.length > 0 ? own_rashi.msg[0].rashi : '') : '';
    own_rashi = own_rashi.suc > 0 ? (own_rashi.msg.length > 0 ? own_rashi.msg[0].rashi_id : 0) : 0

    // var own_mongal_dosh = await MongalMatch(own_dt.msg[0].kundali_file_name);
    var own_moon_mangal_marks = await checkMoonMongalDosh(own_dt.msg[0].kundali_file_name),
        own_asc_mangal_marks = await checkAscMongalDosh(own_dt.msg[0].kundali_file_name);

    var own_mongal_dosh = own_moon_mangal_marks + own_asc_mangal_marks;

    var own_element_val = await ElementMatch(own_dt.msg[0].kundali_file_name);
    var own_element_name
    if(own_element_val.length > 0){
      own_element_name = [...own_element_val.map(dt=>dt.flag)]
      own_element_name = own_element_name.join('')
    }else{
      own_element_name = own_element_val.flag
    }
    // OWN DETAILS END //

    // PARTNER DETAILS //
    var partner_info = await user_basic_info({user_id:data.partner_id});
    var partner_moonshine_name = await MoonShineName(partner_info.msg[0].rasi_id)
    var partner_rashi = await partner_match(partner_info.msg[0].dob),
      partner_rashi_name = partner_rashi.suc > 0 ? (partner_rashi.msg.length > 0 ? partner_rashi.msg[0].rashi : '') : '';
    partner_rashi = partner_rashi.suc > 0 ? (partner_rashi.msg.length > 0 ? partner_rashi.msg[0].rashi_id : 0) : 0
    // console.log('Partner', partner_rashi);
    
    // var rashi_match = await RashiMatch(own_rashi, partner_rashi)
    // console.log('Match', rashi_match);
    // var number_match = await NumberMatchWithDate(dateFormat(own_dt.msg[0].dob, 'dd'), dateFormat(partner_info.msg[0].dob, 'dd')) // Marks Filed
    // console.log('Number', number_match);
    var jotok_match = await JotokMatch(own_dt.msg[0].jotok_rasi_id, partner_info.msg[0].jotok_rasi_id) // Marks Field
    // console.log('Jotok', jotok_match);
    var partnerEleField = await ElementMatch(partner_info.msg[0].kundali_file_name)
    var partner_element_name
    if(partnerEleField.length > 0){
      partner_element_name = [...partnerEleField.map(dt=>dt.flag)]
      partner_element_name = partner_element_name.join('')
    }else{
      partner_element_name = partnerEleField.flag
    }
    // console.log('Element P: ', partnerEleField, 'Own Element: ', own_element_val);
    var elementMarks = await calculateElementMarks(own_element_name, partner_element_name)
    elementMarks = elementMarks.suc > 0 && elementMarks.msg.length > 0 ? elementMarks.msg[0].marks : 0 // Marks Filed
    // console.log("Element Marks: ", elementMarks);

    // var partner_mongol_dosha = await MongalMatch(partner_info.msg[0].kundali_file_name)
    var partner_moon_mangal_marks = await checkMoonMongalDosh(partner_info.msg[0].kundali_file_name),
        partner_asc_mangal_marks = await checkAscMongalDosh(partner_info.msg[0].kundali_file_name);

    var partner_mongol_dosha = partner_moon_mangal_marks + partner_asc_mangal_marks;
        // console.log("Mongal Dosh", partner_mongol_dosha, " OWN: ", own_mongal_dosh);
    var mongal_marks = await CalculateMongalMarks(own_mongal_dosh, partner_mongol_dosha); // Marks Filed
    // console.log('Get Marks', mongal_marks);

    var moonShineMatch = await MoonshineMatch(own_dt.msg[0].rasi_id, partner_info.msg[0].rasi_id) // Marks Filed
    // console.log('MoonShineMatch', moonShineMatch);

    var SunShineMatch = await SunshineNumberMatch(own_rashi, partner_rashi, dateFormat(partner_info.msg[0].dob, 'dd'), own_dt.msg[0].dob)

    // var tot_match_marks = Math.round(rashi_match + number_match + jotok_match)
    // console.log('Marks Values', jotok_match , elementMarks , mongal_marks , moonShineMatch , SunShineMatch);
    var tot_match_marks = Math.round(jotok_match + elementMarks + mongal_marks + moonShineMatch + SunShineMatch);
    console.log('Total Marks', jotok_match, elementMarks, mongal_marks, moonShineMatch, SunShineMatch);

        
    // PARTNER DETAILS END //

    res.send({
      'own': {
        rashi: own_rashi_name,
        mongal_dasha: own_mongal_dosh,
        element_name: own_element_name,
        moon_shine_name: own_moonshine_name.suc > 0 && own_moonshine_name.msg.length > 0 ? own_moonshine_name.msg[0].rashi : ''
      },
      'partner': {
        rashi: partner_rashi_name,
        mongal_dasha: partner_mongol_dosha,
        element_name: partner_element_name,
        moon_shine_name: partner_moonshine_name.suc > 0 && partner_moonshine_name.msg.length > 0 ? partner_moonshine_name.msg[0].rashi : ''
      },
      total_marks: tot_match_marks
    })
  }
})

module.exports = {PartnerRouter}