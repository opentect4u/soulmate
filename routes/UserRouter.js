const { kundali } = require("./RasiRouter");

const express = require("express"),
  UserRouter = express.Router(),
  dateFormat = require("dateformat"),
  request = require("request"),
  bcrypt = require("bcrypt"),
  {
    db_Insert,
    db_Select,
    EncryptDataToSend,
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
  // UserRouter.post("/user_profile", async (req, res) => {
  var req_data = req.body,
    datetime = dateFormat(new Date(), "yyyy-mm-dd HH:MM:ss"),
    BirthDate = new Date(req_data.field_birth_date).toISOString();
  // console.log(`${date}T${time}Z`);
  req_data = Buffer.from(req_data.data, "base64").toString();
  // // // console.log(JSON.parse(dt));
  req_data = JSON.parse(req_data);
  // console.log(req_data);
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
        : "(u_name, phone_no, email_id, location_id, latt_long, dob, ac_for, religion, gender, mother_tong, created_by, created_dt)",
    values = `('${req_data.user}', '${req_data.field_mobile}', '${req_data.field_email_id
      }', '${req_data.location_id}',
        '${req_data.field_birth_loca}', '${dateFormat(
        req_data.field_birth_date,
        "yyyy-mm-dd HH:MM:ss"
      )}', '${req_data.field_who_creat_profile}',
        '${req_data.field_ur_religion}', '${req_data.field_gender}', '${req_data.field_mother_tong
      }', '${req_data.reg_name}', '${datetime}')`,
    whr = req_data.id > 0 ? `id= '${req_data.id}'` : null,
    flag = req_data.id > 0 ? 1 : 0;
  var res_dt = await db_Insert(table_name, fields, values, whr, flag);
  if (req_data.id > 0) {
  } else {
    if (res_dt.suc > 0) {
      var kundali_data = await kundali(res_dt.lastId.insertId, req_data.field_birth_loca, BirthDate)
      kundali_data.file_name ? await db_Insert('td_user_profile', `kundali_file_name='${kundali_data.file_name}', rasi_id = '${kundali_data.rasi_id}', nakhatra_id = '${kundali_data.nakhatra_id}', jotok_rasi_id = '${kundali_data.jotok_rasi_id}'`, null, `id=${res_dt.lastId.insertId}`, 1) : ''
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
  // res.send({suc:1, msg: 'Success'})
});

UserRouter.post("/user_caste", async (req, res) => {
  var req_data = req.body,
    datetime = dateFormat(new Date(), "yyyy-mm-dd HH:MM:ss");
  req_data = Buffer.from(req_data.data, "base64").toString();
  // // console.log(JSON.parse(dt));
  req_data = JSON.parse(req_data);
  //   console.log(req_data);
  //   var table_name = "td_user_caste",
  //     fields =
  //       req_data.id > 0
  //         ? `caste_id = '${req_data.reg_cast}', sub_caste_id = '${req_data.reg_subcaste}',
  //         gothram_id = '${req_data.reg_gothra}', oth_comm_marry_flag = '${req_data.reg_willing_marry_other_commun}',
  //          modified_by = '${req_data.user}', modified_dt = '${datetime}'`
  //         : "(user_id, caste_id, sub_caste_id, gothram_id, oth_comm_marry_flag,  created_by, created_dt)",
  //     values = `('${req_data.user_id}', '${req_data.reg_cast}', '${req_data.reg_subcaste}', '${req_data.reg_gothra}',
  //         '${req_data.reg_willing_marry_other_commun}',
  //         '${req_data.user}', '${datetime}')`,
  //     whr = req_data.id > 0 ? `id= '${req_data.id}'` : null,
  //     flag = req_data.id > 0 ? 1 : 0;
  var table_name = "td_user_profile",
    fields =
      req_data.user_id > 0
        ? `religion = '${req_data.field_ur_religion}', caste_id = '${
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
  // UserRouter.post("/user_basic_family", async (req, res) => {
  var req_data = req.body,
    datetime = dateFormat(new Date(), "yyyy-mm-dd HH:MM:ss");
  req_data = Buffer.from(req_data.data, "base64").toString();
  // console.log(JSON.parse(dt));
  req_data = JSON.parse(req_data);
  console.log(req_data);
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
  // UserRouter.post("/user_groom_loc", async (req, res) => {
  var req_data = req.body,
    datetime = dateFormat(new Date(), "yyyy-mm-dd HH:MM:ss");
  req_data = Buffer.from(req_data.data, "base64").toString();
  // console.log(JSON.parse(dt));
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
  // UserRouter.post("/user_about", async (req, res) => {
  var req_data = req.body,
    datetime = dateFormat(new Date(), "yyyy-mm-dd HH:MM:ss");
  req_data = Buffer.from(req_data.data, "base64").toString();
  // console.log(JSON.parse(dt));
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

// UserRouter.post("/user_hobbies", async (req, res) => {
//   // UserRouter.post("/user_hobbies", async (req, res) => {
//   var req_data = req.body,
//     datetime = dateFormat(new Date(), "yyyy-mm-dd HH:MM:ss");
//   req_data = Buffer.from(req_data.data, "base64").toString();
//   // console.log(JSON.parse(dt));
//   req_data = JSON.parse(req_data);
//   console.log(req_data);
//   // console.log("/user_hobbies");
//   var table_name = "td_user_hobbies",
//     fields =
//       req_data.id > 0
//         ? `hobbies_interest = '${req_data.edit_Hobbies_Interests}', sports = '${req_data.edit_Sports}' ,
//         spoken_lang = '${req_data.edit_Spoken_Languages}', fav_music = '${req_data.edit_Music}',  movie = '${req_data.edit_Preferred_Movies}' , modified_by = '${req_data.user}', modified_dt = '${datetime}'`
//         : "(user_id, hobbies_interest, sports, fav_reads, spoken_lang, fav_music, fav_cuisine, movie, created_by, created_dt)",
//     values = `('${req_data.user_id}', '${req_data.edit_Hobbies_Interests}', '${req_data.edit_Sports}',
//          '${req_data.edit_Spoken_Languages}','${req_data.edit_Music}',
//         '${req_data.edit_Preferred_Movies}',  '${req_data.user}', '${datetime}')`,
//     whr = req_data.id > 0 ? `id= '${req_data.id}'` : null,
//     flag = req_data.id > 0 ? 1 : 0;
//   var res_dt = await db_Insert(table_name, fields, values, whr, flag);
//   res.send(res_dt);
// });

// UserRouter.post('/user_prof_7', async (req, res) => {
// UserRouter.post("/user_prof_info", async (req, res) => {
//   var req_data = req.body,

//     datetime = dateFormat(new Date(), "yyyy-mm-dd HH:MM:ss");
//   console.log(req_data);
//   req_data = Buffer.from(req_data.data, "base64").toString();
//   // console.log(JSON.parse(dt));
//   req_data = JSON.parse(req_data);
//   var table_name = "td_user_professional",
//     fields =
//       req_data.id > 0
//         ? `education = '${req_data.edu}', college = '${req_data.colg}' , occupation = '${req_data.ocup}' ,
//         organization = '${req_data.org}', edu_in_dt = '${req_data.edu_in_dt}', emp_in = '${req_data.emp_in}', occup_in_dt = '${req_data.occup_in_dt}' , annual_income = '${req_data.ann_inc}', modified_by = '${req_data.user}', modified_dt = '${datetime}'`
//         : "(user_id, education, college, occupation, organization, edu_in_dt, emp_in, occup_in_dt, annual_income, created_by, created_dt)",
//     values = `('${req_data.user_id}', '${req_data.edu}', '${req_data.colg}',
//         '${req_data.ocup}', '${req_data.org}','${req_data.edu_in_dt}',
//         '${req_data.emp_in}', '${req_data.occup_in_dt}', '${req_data.occup_in_dt}', '${req_data.ann_inc}', '${req_data.user}', '${datetime}')`,
//     whr = req_data.id > 0 ? `id= '${req_data.id}'` : null,
//     flag = req_data.id > 0 ? 1 : 0;
//   var res_dt = await db_Insert(table_name, fields, values, whr, flag);
//   res.send(res_dt);
// });

// UserRouter.post('/user_prof_8', async (req, res) => {
// UserRouter.post("/user_religion", async (req, res) => {
//   var req_data = req.body,
//     datetime = dateFormat(new Date(), "yyyy-mm-dd HH:MM:ss");
//   req_data = Buffer.from(req_data.data, "base64").toString();
//   // console.log(JSON.parse(dt));
//   req_data = JSON.parse(req_data);
//   var table_name = "td_user_religion",
//     fields =
//       req_data.id > 0
//         ? `religion = '${req_data.reg_religion}', gothram = '${req_data.reg_gothram}' , fav_reads = '${req_data.reg_reads}' ,
//         dosh = '${req_data.reg_dosh}', caste = '${req_data.reg_caste}', rashi = '${req_data.reg_rashi}', modified_by = '${req_data.user}', modified_dt = '${datetime}'`
//         : "(user_id, religion, gothram, fav_reads, dosh, caste, rashi, created_by, created_dt)",
//     values = `('${req_data.user_id}', '${req_data.reg_religion}', '${req_data.reg_gothram}',
//         '${req_data.reg_reads}', '${req_data.reg_dosh}','${req_data.reg_caste}',
//         '${req_data.reg_rashi}', '${req_data.user}', '${datetime}')`,
//     whr = req_data.id > 0 ? `id= '${req_data.id}'` : null,
//     flag = req_data.id > 0 ? 1 : 0;
//   var res_dt = await db_Insert(table_name, fields, values, whr, flag);
//   res.send(res_dt);
// });

// UserRouter.get('/user_prof_1', async (req, res) => {
// UserRouter.get("/user_profile", async (req, res) => {
//   var data = req.query;
//   var select =
//     "a.u_name, a.phone_no, a.email_id, a.location_id, a.latt_long, a.dob, a.ac_for, a.religion, a.about_us, a.mother_tong mother_tong_id, d.lang_name mother_tong, b.caste_id, (SELECT c.caste_name FROM md_caste_list c WHERE b.caste_id=c.id) caste_name",
//     table_name =
//       "td_user_profile a LEFT JOIN td_user_caste b ON a.id=b.user_id LEFT JOIN md_language d ON a.mother_tong=d.id",
//     whr = data.user_id > 0 ? `a.id=${data.user_id}` : null,
//     order = null;
//   var res_dt = await db_Select(select, table_name, whr, order);
//   var location_name =
//     res_dt.suc > 0 && res_dt.msg.length > 0
//       ? location[location.findIndex((dt) => dt.id == res_dt.msg[0].location_id)]
//         .name
//       : null;
//   res_dt.suc > 0 ? (res_dt.msg[0]["location_name"] = location_name) : "";
//   res_dt = await EncryptDataToSend(res_dt)
//   res.send(res_dt);
// });

// UserRouter.get('/user_prof_2', async (req,res) => {
// UserRouter.get("/user_prof_2", async (req, res) => {
//   var data = req.query;
//   var select =
//     "user_id, caste_id, sub_caste_id, gothram_id, oth_comm_marry_flag",
//     table_name = "td_user_caste",
//     whr = data.id > 0 ? `id=${id}` : null,
//     order = null;
//   var res_dt = await db_Select(select, table_name, whr, order);
//   res.send(res_dt);
// });

// UserRouter.get('/user_prof_7', async (req,res) => {
// UserRouter.get("/user_prof_info", async (req, res) => {
//   var data = req.query;
//   var select =
//     "user_id, education, college, occupation, organization, edu_in_dt, emp_in, occup_in_dt, annual_income",
//     table_name = "td_user_professional",
//     whr = data.id > 0 ? `id=${id}` : null,
//     order = null;
//   var res_dt = await db_Select(select, table_name, whr, order);
//   res.send(res_dt);
// });

// UserRouter.get('/user_prof_8', async (req,res) => {
// UserRouter.get("/user_religion", async (req, res) => {
//   var data = req.query;
//   var select = "user_id, religion, gothram, fav_reads, dosh, caste, rashi",
//     table_name = "td_user_religion",
//     whr = data.id > 0 ? `id=${id}` : null,
//     order = null;
//   var res_dt = await db_Select(select, table_name, whr, order);
//   res.send(res_dt);
// });

UserRouter.post("/login", async (req, res) => {
  var data = req.body,
    result;
  data = Buffer.from(data.data, "base64").toString();
  data = JSON.parse(data);
  console.log(data);
  var select =
      "id prof_id, user_id, profile_id id, user_name , email_id user_email,  password,  last_login, active_flag",
    table_name = "md_user_login",
    whr = `user_id = '${data.user_id}' AND active_flag ="Y" `,
    order = null;
  var res_dt = await db_Select(select, table_name, whr, order);
  if (res_dt.suc > 0) {
    if (res_dt.msg.length > 0) {
      if (await bcrypt.compare(data.password, res_dt.msg[0].password)) {
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
