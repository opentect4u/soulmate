const { kundali, addKundaliUser } = require("./RasiRouter");

const express = require("express"),
  UserRouter = express.Router(),
  dateFormat = require("dateformat"),
  request = require("request"),
  bcrypt = require("bcrypt"),
  {
    db_Insert,
    db_Select,
    EncryptDataToSend,
    GenPassword,
  } = require("../module/MasterModule"),
  location = require("../location.json");

// UserRouter.get("/planet_position", async (req, res) => {
//   const location = require("../location.json");
//   // console.log(JSON.stringify(location));
//   // var str = 'SynergicSoleMate2023@'
//   // var enc_dt = Buffer.from(str, 'utf8').toString('base64')
//   // var decode = Buffer.from(enc_dt, 'base64').toString();
//   var res_dt = {
//     suc: 1,
//     msg: Buffer.from(JSON.stringify(location), "utf8").toString("base64"),
//   };
//   res.send(res_dt);
// });

UserRouter.post("/user_profile", async (req, res) => {
  var req_data = req.body,
    datetime = dateFormat(new Date(), "yyyy-mm-dd HH:MM:ss");
    var profile_id = await GenPassword()
   
    // console.log(BirthDate);
    // console.log(`${date}T${time}Z`);
    // req_data = Buffer.from(req_data.data, "base64").toString();
    // req_data = JSON.parse(req_data);

    try{
     var BirthDate = new Date(req_data.field_birth_date).toISOString();
    }catch(err){
     console.log(err);
    }
     profile_id = req_data.field_gender+profile_id
     console.log(profile_id);
  var table_name = "td_user_profile",
    fields =
      req_data.id > 0
        ? `u_name = '${req_data.user}',
         location_id = '${req_data.location_id
        }',
        latt_long = '${req_data.field_birth_loca}', dob = '${dateFormat(
          req_data.field_birth_date,
          "yyyy-mm-dd HH:MM:ss"
        )}',
        ac_for = '${req_data.field_who_creat_profile}', religion = '${req_data.field_ur_religion
        }', gender = '${req_data.field_gender}',
          caste_id = '${req_data.reg_cust_id}',
        mother_tong = '${req_data.field_mother_tong}', modified_by = '${req_data.reg_name
        }', modified_dt = '${datetime}'`
        : "(profile_id, u_name, phone_no, email_id, location_id, latt_long, dob, ac_for, religion, gender, mother_tong, created_by, created_dt)",
    values = `('${profile_id}', '${req_data.user}', '${req_data.field_mobile}', '${req_data.field_email_id
      }', '${req_data.location_id}',
        '${req_data.field_birth_loca}', '${dateFormat(
        req_data.field_birth_date,
        "yyyy-mm-dd HH:MM:ss"
      )}', '${req_data.field_who_creat_profile}',
        '${req_data.field_ur_religion}', '${req_data.field_gender}', '${req_data.field_mother_tong
      }', '${req_data.user}', '${datetime}')`,
    whr = req_data.id > 0 ? `id= '${req_data.id}'` : null,
    flag = req_data.id > 0 ? 1 : 0;
  var res_dt = await db_Insert(table_name, fields, values, whr, flag);
  if (req_data.id > 0) {
  } else {
    if (res_dt.suc > 0) {
      try{
        var kundali_data = await kundali(res_dt.lastId.insertId, req_data.field_birth_loca, BirthDate)
        kundali_data.file_name ? await db_Insert('td_user_profile', `kundali_file_name='${kundali_data.file_name}', rasi_id = '${kundali_data.rasi_id}', nakhatra_id = '${kundali_data.nakhatra_id}', jotok_rasi_id = '${kundali_data.jotok_rasi_id}'`, null, `id=${res_dt.lastId.insertId}`, 1) : ''
      }catch(err){
        console.log(err);
      }
      var pass = bcrypt.hashSync(req_data.field_pass, 10);
      var table_name = `md_user_login`,
        fields =
          "(profile_id , user_name, user_id, email_id, password, pay_status, created_by, created_dt)";
      values = `('${res_dt.lastId.insertId}', '${req_data.user}', '${req_data.field_mobile}', '${req_data.field_email_id}', '${pass}', 'N', '${req_data.user}', '${datetime}')`,
        whr = null,
        flag = 0;
      var log_dt = await db_Insert(table_name, fields, values, whr, flag);
    }
  }
  res.send(res_dt);
});

UserRouter.post("/user_caste", async (req, res) => {
  var req_data = req.body,
    datetime = dateFormat(new Date(), "yyyy-mm-dd HH:MM:ss");
  req_data = Buffer.from(req_data.data, "base64").toString();
  req_data = JSON.parse(req_data);
  var table_name = "td_user_profile",
    fields =
      req_data.user_id > 0
        ? `caste_id = '${
            req_data.field_cast
          }', oth_comm_marry_flag = '${
            req_data.field_willing_marry_other_commun ? "Y" : "N"
          }', 
         modified_by = '${req_data.user}', modified_dt = '${datetime}'`
        : "(caste_id, oth_comm_marry_flag, created_by, created_dt)",
    values = `('${req_data.field_cast}', '${
      req_data.field_willing_marry_other_commun ? "Y" : "N"
    }', '${req_data.user}', '${datetime}')`,
    whr = req_data.user_id > 0 ? `id= '${req_data.user_id}'` : null,
    flag = req_data.user_id > 0 ? 1 : 0;
  var res_dt = await db_Insert(table_name, fields, values, whr, flag);
  res.send(res_dt);
});

UserRouter.post("/user_personal_details", async (req, res) => {
  var req_data = req.body,
    datetime = dateFormat(new Date(), "yyyy-mm-dd HH:MM:ss");

  req_data = Buffer.from(req_data.data, "base64").toString();
  req_data = JSON.parse(req_data);
  var table_name = "td_user_p_dtls",
    fields =
      req_data.id > 0
        ? `marital_status = '${req_data.field_marital_status}', height = '${req_data.field_height}', 
        family_status = '${req_data.field_family_status}', family_type = '${req_data.field_family_type}', 
        family_values = '${req_data.field_family_value}', disability_flag = '${req_data.field_disability}', 
      modified_by = '${req_data.reg_name}', modified_dt = '${datetime}'`
        : "(user_id, marital_status, height, family_status, family_type, family_values, disability_flag, created_by, created_dt)",
    values = `('${req_data.user_id}', '${req_data.field_marital_status}', '${req_data.field_height}', '${req_data.field_family_status}',
        '${req_data.field_family_type}', '${req_data.field_family_value}', '${req_data.field_disability}',
        '${req_data.user}', '${datetime}')`,
    whr = req_data.id > 0 ? `id= '${req_data.id}'` : null,
    flag = req_data.id > 0 ? 1 : 0;
  var res_dt = await db_Insert(table_name, fields, values, whr, flag);
  res.send(res_dt);
});

UserRouter.post("/user_professional", async (req, res) => {
  var req_data = req.body,
    datetime = dateFormat(new Date(), "yyyy-mm-dd HH:MM:ss");
  req_data = Buffer.from(req_data.data, "base64").toString();
  req_data = JSON.parse(req_data);
  console.log(req_data);
  var table_name = "td_user_education",
    fields =
      req_data.id > 0
        ? `heigh_education = '${req_data.field_highest_education}', emp_type = '${req_data.field_employed}', 
        occup = '${req_data.field_Occupation}', income = '${req_data.field_Annual_Income}', 
        work_location = '${req_data.field_Work_Locatio}', state = '${req_data.field_State}', 
        city = '${req_data.field_City}', ancis_org = '${req_data.reg_Ancestral_Origin}',  country = '${req_data.field_Country}',
        citizen = '${req_data.reg_citizen}', modified_by = '${req_data.reg_name}', modified_dt = '${datetime}'`
        : "(user_id, heigh_education, emp_type, occup, income, work_location, state, city, country, created_by, created_dt)",
    values = `('${req_data.user_id}', '${req_data.field_highest_education}', '${req_data.field_employed}', '${req_data.field_Occupation}',
        '${req_data.field_Annual_Income}', '${req_data.field_Work_Locatio}', '${req_data.field_State}', '${req_data.field_City}',
        '${req_data.field_Country}', '${req_data.user}', '${datetime}')`,
    whr = req_data.id > 0 ? `id= '${req_data.id}'` : null,
    flag = req_data.id > 0 ? 1 : 0;
  var res_dt = await db_Insert(table_name, fields, values, whr, flag);
  res.send(res_dt);
});

UserRouter.post("/user_about", async (req, res) => {
  var req_data = req.body,
    datetime = dateFormat(new Date(), "yyyy-mm-dd HH:MM:ss");
  req_data = Buffer.from(req_data.data, "base64").toString();
  req_data = JSON.parse(req_data);
  console.log(req_data);
  var table_name = "td_user_profile",
    fields =
      req_data.user_id > 0
        ? `about_us = '${req_data.field_About_us}', modified_by = '${req_data.user}', modified_dt = '${datetime}'`
        : null,
    values = null,
    whr = `id= '${req_data.user_id}'`,
    flag = 1;
  var res_dt = await db_Insert(table_name, fields, values, whr, flag);
  res.send(res_dt);
});

UserRouter.post("/login", async (req, res) => {
  var data = req.body,
    result;
  data = Buffer.from(data.data, "base64").toString();
  data = JSON.parse(data);
  console.log(data);
  var select =
      "a.id prof_id, a.user_id, a.profile_id id, a.user_name, a.email_id user_email, a.password, a.last_login, a.pay_status pay_flag, b.plan_id, a.active_flag, b.kundali_file_name, b.rasi_id, b.nakhatra_id, b.jotok_rasi_id",
    table_name = "md_user_login a, td_user_profile b",
    whr = `a.profile_id=b.id AND a.user_id = '${data.user_id}' AND a.active_flag ="Y" `,
    order = null;
  var res_dt = await db_Select(select, table_name, whr, order);
  if (res_dt.suc > 0) {
    if (res_dt.msg.length > 0) {
      if (await bcrypt.compare(data.password, res_dt.msg[0].password)) {
        if(res_dt.msg[0].kundali_file_name){
          if(res_dt.msg[0].rasi_id > 0 && res_dt.msg[0].nakhatra_id > 0 && res_dt.msg[0].jotok_rasi_id > 0){
            true;
          }else{
            try{
              var kundali_data = await addKundaliUser(res_dt.msg[0].kundali_file_name)
              await db_Insert('td_user_profile', `rasi_id = '${kundali_data.rasi_id}', nakhatra_id = '${kundali_data.nakhatra_id}', jotok_rasi_id = '${kundali_data.jotok_rasi_id}'`, null, `id=${res_dt.msg[0].id}`, 1)
            }catch(err){
              console.log(err);
            }
          }
        }
        result = {
          suc: 1,
          msg: "successfully loggedin",
          user_data: res_dt.msg,
        };
      } else {
        result = {
          suc: 0,
          msg: "Please check your userid or password",
          user_data: null,
        };
      }
    } else {
      result = { suc: 0, msg: "No data found", user_data: null };
    }
  } else {
    result = { suc: 0, msg: res_dt.msg };
  }
  res.send(result);
});


UserRouter.post('/update_pass', async (req, res) => {
  var data = req.body, result;
  data = Buffer.from(data.data, "base64").toString();
  data = JSON.parse(data);
  console.log(data);
  var select = "id, user_id, password",
table_name = "md_user_login",
whr = `profile_id = '${data.user_id}'`,
order = null;
var res_dt = await db_Select(select, table_name, whr, order);
if (res_dt.suc > 0) {
  if (res_dt.msg.length > 0) {
    if (await bcrypt.compare(data.old_pass, res_dt.msg[0].password)) {
      var pass = bcrypt.hashSync(data.new_pass, 10);
      var table_name = `md_user_login`,
          fields = `password = '${pass}'`,
          whr = `profile_id = ${data.user_id}` ,
          flag = 1;
          var forget_pass = await db_Insert(table_name, fields,  null,  whr, flag)
          result = forget_pass
    } else {
      result = {
        suc: 0,
        msg: "Please provide your correct old password",
        user_data: null,
      };
    }
  } else {
    result = { suc: 0, msg: "No data found", user_data: null };
  }
}else {
  result = { suc: 0, msg: res_dt.msg };
}
res.send(result)
})

module.exports = { UserRouter };
