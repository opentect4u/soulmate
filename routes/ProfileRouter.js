const express = require("express"),
  ProfileRouter = express.Router(),
  dateFormat = require("dateformat"),
  fileUpload = require("express-fileupload"),
  path = require("path");

const { fileExtLimiter } = require("../middleware/fileExtLimiter");
const { fileSizeLimiter } = require("../middleware/fileSizeLimiter");
const { filePayloadExists } = require("../middleware/filesPayloadExists");
const {
  db_Select,
  EncryptDataToSend,
  db_Insert,
} = require("../module/MasterModule");
const {
  user_groom_loc,
  user_basic_info,
  user_hobbies,
} = require("../module/ProfileModule");

ProfileRouter.get("/user_groom_loc", async (req, res) => {
  var data = req.query;
  // var select =
  //     "a.*, b.edu_name education_name, c.occu_name, d.income income_name",
  //     table_name = "td_user_education a LEFT JOIN md_education b ON a.heigh_education=b.id LEFT JOIN  md_occupation c ON a.occup=c.id  LEFT JOIN md_income d ON a.income=d.id",
  //     whr = data.user_id > 0 ? `a.user_id=${data.user_id}` : null,
  //     order = null;
  var res_dt = await user_groom_loc(data);
  res_dt = await EncryptDataToSend(res_dt);
  res.send(res_dt);
});

ProfileRouter.get("/user_basic_info", async (req, res) => {
  var data = req.query;
  // var select = "a.id, b.id user_id, b.dob, b.phone_no, a.marital_status,a.height,a.weight,a.family_status,a.family_values,a.family_type,a.disability_flag,a.body_type,a.drinking_habbits,a.age,b.gender, a.age,a.eating_habbits,a.smoking_habbits,a.no_sister,a.no_brother,a.father_occupation,a.mother_occupation,a.family_location,a.about_my_family,b.u_name,b.ac_for,b.mother_tong mother_tong_id, d.lang_name mother_tong, b.about_us, c.caste_name, b.caste_id, b.religion, b.oth_comm_marry_flag",
  //     table_name = "td_user_p_dtls a LEFT JOIN td_user_profile b ON a.user_id=b.id LEFT JOIN md_caste_list c ON b.caste_id=c.id LEFT JOIN md_language d ON b.mother_tong=d.id",
  //     whr = data.user_id > 0 ? `a.user_id=${data.user_id}` : null,
  //     order = null;
  var res_dt = await user_basic_info(data);
  res_dt = await EncryptDataToSend(res_dt);
  res.send(res_dt);
});

ProfileRouter.post("/user_basic_info", async (req, res) => {
  var data = req.body,
    datetime = dateFormat(new Date(), "yyyy-mm-dd HH:MM:ss");

  data = Buffer.from(data.data, "base64").toString();
  data = JSON.parse(data);

  var table_name = "td_user_profile",
    fields =
      data.user_id > 0
        ? `u_name = '${data.field_name}', ac_for = '${data.field_who_creat_profile}', mother_tong = '${data.field_mother_tong}', modified_by = '${data.user}', modified_dt = '${datetime}'`
        : "(u_name, phone_no, ac_for, mother_tong, created_by, created_dt)",
    values = `('${data.field_name}', '${data.field_mobile}', '${data.field_who_creat_profile}', '${data.field_mother_tong}', '${data.user}', '${datetime}')`,
    whr = data.user_id > 0 ? `id = ${data.user_id}` : null,
    flag = data.user_id > 0 ? 1 : 0;
  var res_dt = await db_Insert(table_name, fields, values, whr, flag);

  if (res_dt.suc > 0) {
    var select = "id",
      table_name = "td_user_p_dtls",
      whr = `user_id = ${data.user_id}`,
      order = null;
    var chk_dt = await db_Select(select, table_name, whr, order);

    var table_name = "td_user_p_dtls",
      fields =
        chk_dt.suc > 0 && chk_dt.msg.length > 0
          ? `marital_status = '${data.field_marital_status}', height = '${data.field_height}', weight = '${data.field_weight}', disability_flag = '${data.field_disability}', body_type = '${data.field_body_type}', drinking_habbits = '${data.field_Drinking_Habits}', age = '${data.field_age}', eating_habbits = '${data.field_Eating_Habits}', smoking_habbits = '${data.field_Smoking_Habits}', modified_by = '${data.user}', modified_dt = '${datetime}'`
          : "(user_id, marital_status, height, weight, disability_flag, body_type, drinking_habbits, age, eating_habbits, smoking_habbits, created_by, created_dt)",
      values = `('${data.user_id}', '${data.field_marital_status}', '${data.field_height}', '${data.field_weight}', '${data.field_disability}', '${data.field_body_type}', '${data.field_Drinking_Habits}', '${data.field_age}', '${data.field_Eating_Habits}', '${data.field_Smoking_Habits}', '${data.user}', '${datetime}')`,
      whr =
        chk_dt.suc > 0 && chk_dt.msg.length > 0
          ? `id = ${chk_dt.msg[0].id}`
          : null,
      flag = chk_dt.suc > 0 && chk_dt.msg.length > 0 ? 1 : 0;
    res_dt = await db_Insert(table_name, fields, values, whr, flag);
  }
  res.send(res_dt);
});

ProfileRouter.post("/user_groom_loc", async (req, res) => {
  var data = req.body,
    datetime = dateFormat(new Date(), "yyyy-mm-dd HH:MM:ss");

  data = Buffer.from(data.data, "base64").toString();
  data = JSON.parse(data);

  var select = "id",
    table_name = "td_user_education",
    whr = `user_id = ${data.user_id}`,
    order = null;
  var chk_dt = await db_Select(select, table_name, whr, order);

  var table_name = "td_user_education",
    fields =
      chk_dt.suc > 0 && chk_dt.msg.length > 0
        ? `country = '${data.field_Country}', state = '${data.field_State}', city = '${data.field_City}', citizen = '${data.field_Citizenship}', modified_by = '${data.user}', modified_dt = '${datetime}'`
        : "(user_id, country, state, city, citizen, created_by, created_dt)",
    values = `('${data.user_id}', '${data.field_Country}', '${data.field_State}', '${data.field_City}', '${data.field_Citizenship}', '${data.user}', '${datetime}')`,
    whr =
      chk_dt.suc > 0 && chk_dt.msg.length > 0
        ? `id = ${chk_dt.msg[0].id}`
        : null,
    flag = chk_dt.suc > 0 && chk_dt.msg.length > 0 ? 1 : 0;
  var res_dt = await db_Insert(table_name, fields, values, whr, flag);
  res.send(res_dt);
});

ProfileRouter.post("/user_prof_info", async (req, res) => {
  var data = req.body,
    datetime = dateFormat(new Date(), "yyyy-mm-dd HH:MM:ss");

  data = Buffer.from(data.data, "base64").toString();
  data = JSON.parse(data);

  var select = "id",
    table_name = "td_user_education",
    whr = `user_id = ${data.user_id}`,
    order = null;
  var chk_dt = await db_Select(select, table_name, whr, order);

  var table_name = "td_user_education",
    fields =
      chk_dt.suc > 0 && chk_dt.msg.length > 0
        ? `heigh_education = '${data.field_highest_education}', emp_type = '${data.field_employed}', occup = '${data.field_Occupation}', edu_in_dtls = '${data.field_Education_Detail}', collage = '${data.field_College}', occup_in_dtls = '${data.field_Occupation_Detail}', org_name = '${data.field_Organization}', income = '${data.field_Annual_Income}', modified_by = '${data.user}', modified_dt = '${datetime}'`
        : "(user_id, heigh_education, emp_type, occup, edu_in_dtls, collage, occup_in_dtls, org_name, income, created_by, created_dt)",
    values = `('${data.user_id}', '${data.field_highest_education}', '${data.field_employed}', '${data.field_Occupation}', '${data.field_Education_Detail}', '${data.field_College}', '${data.field_Occupation_Detail}', '${data.field_Organization}', '${data.field_Annual_Income}', '${data.user}', '${datetime}')`,
    whr =
      chk_dt.suc > 0 && chk_dt.msg.length > 0
        ? `id = ${chk_dt.msg[0].id}`
        : null,
    flag = chk_dt.suc > 0 && chk_dt.msg.length > 0 ? 1 : 0;
  var res_dt = await db_Insert(table_name, fields, values, whr, flag);
  res.send(res_dt);
});

ProfileRouter.post("/family_dtls", async (req, res) => {
  var data = req.body,
    datetime = dateFormat(new Date(), "yyyy-mm-dd HH:MM:ss");

  data = Buffer.from(data.data, "base64").toString();
  data = JSON.parse(data);

  var select = "id",
    table_name = "td_user_p_dtls",
    whr = `user_id = ${data.user_id}`,
    order = null;
  var chk_dt = await db_Select(select, table_name, whr, order);

  var table_name = "td_user_p_dtls",
    fields =
      chk_dt.suc > 0 && chk_dt.msg.length > 0
        ? `family_status = '${data.field_family_status}', family_type = '${data.field_family_type}', family_values = '${data.field_family_value}', no_sister = '${data.field_No_Sister}', no_brother = '${data.field_No_Brother}', father_occupation = '${data.field_Father_Occupation}', mother_occupation = '${data.field_Mother_Occupation}', family_location = '${data.field_Family_Location}', modified_by = '${data.user}', modified_dt = '${datetime}'`
        : "(user_id, family_status, family_type, family_values, no_sister, no_brother, father_occupation, mother_occupation, family_location, created_by, created_dt)",
    values = `('${data.user_id}', '${data.field_family_status}', '${data.field_family_type}', '${data.field_family_value}', '${data.field_No_Sister}', '${data.field_No_Brother}', '${data.field_Father_Occupation}', '${data.field_Mother_Occupation}', '${data.field_Family_Location}', '${data.user}', '${datetime}')`,
    whr =
      chk_dt.suc > 0 && chk_dt.msg.length > 0
        ? `id = ${chk_dt.msg[0].id}`
        : null,
    flag = chk_dt.suc > 0 && chk_dt.msg.length > 0 ? 1 : 0;
  var res_dt = await db_Insert(table_name, fields, values, whr, flag);
  res.send(res_dt);
});

ProfileRouter.post("/about_family", async (req, res) => {
  var data = req.body,
    datetime = dateFormat(new Date(), "yyyy-mm-dd HH:MM:ss");

  data = Buffer.from(data.data, "base64").toString();
  data = JSON.parse(data);

  var select = "id",
    table_name = "td_user_p_dtls",
    whr = `user_id = ${data.user_id}`,
    order = null;
  var chk_dt = await db_Select(select, table_name, whr, order);

  var table_name = "td_user_p_dtls",
    fields =
      chk_dt.suc > 0 && chk_dt.msg.length > 0
        ? `about_my_family = '${data.field_About_My_Family}', modified_by = '${data.user}', modified_dt = '${datetime}'`
        : "(user_id, about_my_family, created_by, created_dt)",
    values = `('${data.user_id}', '${data.field_About_My_Family}', '${data.user}', '${datetime}')`,
    whr =
      chk_dt.suc > 0 && chk_dt.msg.length > 0
        ? `id = ${chk_dt.msg[0].id}`
        : null,
    flag = chk_dt.suc > 0 && chk_dt.msg.length > 0 ? 1 : 0;
  var res_dt = await db_Insert(table_name, fields, values, whr, flag);
  res.send(res_dt);
});

ProfileRouter.get("/user_hobbies", async (req, res) => {
  var data = req.query,
    hobbie_data = {},
    res_dt;
  res_dt = await user_hobbies(data);
  res_dt = await EncryptDataToSend(res_dt);
  res.send(res_dt);
});

ProfileRouter.post("/user_hobbies", async (req, res) => {
  var data = req.body,
    datetime = dateFormat(new Date(), "yyyy-mm-dd HH:MM:ss"),
    res_dt;

  data = Buffer.from(data.data, "base64").toString();
  data = JSON.parse(data);
  // console.log(data);

  var hobbies_tb_data = [
    {
      field_name: "hobbies_interest",
      table_name: "td_user_hobbies_int",
      input_field: "field_Hobbies_Interests",
    },
    {
      field_name: "music_name",
      table_name: "td_user_hobbies_music",
      input_field: "field_Music",
    },
    {
      field_name: "sports_name",
      table_name: "td_user_hobbies_sports",
      input_field: "field_Sports",
    },
    {
      field_name: "movie_name",
      table_name: "td_user_hobbies_movies",
      input_field: "field_Preferred_Movies",
    },
    {
      field_name: "lang_name",
      table_name: "td_user_hobbies_lang",
      input_field: "field_Spoken_Languages",
    },
  ];

  for (let dt of hobbies_tb_data) {
    for (let hdt of data[dt.input_field]) {
      var select = "id",
        table_name = `${dt.table_name}`,
        whr = `user_id = ${data.user_id} AND ${dt.field_name} = '${hdt}'`,
        order = null;
      var chk_dt = await db_Select(select, table_name, whr, order);

      var table_name = `${dt.table_name}`,
        fields =
          chk_dt.suc > 0 && chk_dt.msg.length > 0
            ? `${dt.field_name} = '${hdt}', modified_by = '${data.user}', modified_dt = '${datetime}'`
            : `(user_id, ${dt.field_name}, created_by, created_dt)`,
        values = `('${data.user_id}', '${hdt}', '${data.user}', '${datetime}')`,
        whr =
          chk_dt.suc > 0 && chk_dt.msg.length > 0
            ? `id = ${chk_dt.msg[0].id}`
            : null,
        flag = chk_dt.suc > 0 && chk_dt.msg.length > 0 ? 1 : 0;
      res_dt = await db_Insert(table_name, fields, values, whr, flag);
    }
  }
  res.send(res_dt);
});

ProfileRouter.get("/profile_pic", async (req, res) => {
  var data = req.query;
  var select = "id, file_path",
    table_name = "td_user_profile",
    whr = data.user_id > 0 ? `id = ${data.user_id}` : null,
    order = null;
  var res_dt = await db_Select(select, table_name, whr, order);
  res.send({
    suc: 1,
    msg: Buffer.from(JSON.stringify(res_dt.msg), "utf8").toString("base64"),
  });
});

ProfileRouter.post(
  "/upload_profile_pic",
  fileUpload({ crereateParentPath: true }),
  filePayloadExists,
  fileExtLimiter([".png", ".jpg", ".jpeg"]),
  fileSizeLimiter,
  async (req, res) => {
    var data = req.body,
      files = req.files,
      datetime = dateFormat(new Date(), "yyyy-mm-dd HH:MM:ss"),
      res_dt;
    console.log(files);

    const filepath = path.join('assets', "uploads", files["profile_img"].name),
      fileName = files["profile_img"].name;
    files["profile_img"].mv(filepath, async (err) => {
      if (err) {
        res.status(500).send({ status: 0, message: err });
      } else {
        // var select = 'id',
        //     table_name = 'td_user_kyc_list',
        //     whr = `user_id = ${data.user_id}`,
        //     order = null;
        // var kyc_dt = await db_Select(select, table_name, whr, order)

        var table_name = "td_user_profile",
          fields = `file_path = '${fileName}', modified_by = '${data.user}', modified_dt = '${datetime}'`,
          values = null,
          whr = `id= '${data.user_id}'`,
          flag = 1;
        res_dt = await db_Insert(table_name, fields, values, whr, flag);
        res.send(res_dt);
      }
    });

    // }
  }
);

ProfileRouter.post("/update_payStatus", async (req, res) => {
  var res_dt = req.body,

  res_dt = Buffer.from(res_dt.data, "base64").toString();
  res_dt = JSON.parse(res_dt);

  var table_name = `td_user_profile`,
    fields = `pay_flag = '${res_dt.pay_flag}',plan_id = '${res_dt.plan_id}'`,
    whr = `id = ${res_dt.user_id}`,
    flag = 1;
  var payStatus = await db_Insert(table_name, fields, null, whr, flag);

  var table_name = `md_user_login`,
    fields = `pay_status = '${res_dt.pay_flag}'`,
    whr = `profile_id = ${res_dt.user_id}`,
    flag = 1;
  var payStatus = await db_Insert(table_name, fields, null, whr, flag);
  res.send(payStatus);
});

ProfileRouter.get("/check_mobile_no", async (req, res) => {
  var data = req.query, result;

  var select = 'id, phone_no',
  table_name = 'td_user_profile',
  whr = `phone_no = ${data.phone_no}`,
  order = null;
  var res_dt = await db_Select(select,table_name,whr,order);
  if(res_dt.suc > 0){
    if(res_dt.msg.length > 0){
      result = {suc: 2, msg: "Phone number is already exists"}
    }else{
      result = {suc: 1, msg: "Please enter phone number"}
    }
  }else{
    result = res_dt
  }
  res.send(result);
});

ProfileRouter.get("/check_email", async (req, res) => {
  var data = req.query, result;

  var select = 'id, email_id',
  table_name = 'td_user_profile',
  whr = `email_id = '${data.email_id}'`,
  order = null;
  var res_dt = await db_Select(select,table_name,whr,order);
  if(res_dt.suc > 0){
    if(res_dt.msg.length > 0){
      result = {suc: 2, msg: "Email address is already exists"}
    }else{
      result = {suc: 1, msg: "Please enter Email address"}
    }
  }else{
    result = res_dt
  }
  res.send(result);
});

ProfileRouter.post("/send_otp", async (req, res) => {
  var otp = Math.floor(1000 + Math.random() * 9000);
res.send({ suc: 1, msg: 'Otp Sent', otp: 1234 })
  })

module.exports = { ProfileRouter };
