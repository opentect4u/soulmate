const db = require("../core/db");

const db_Select = (select, table_name, whr, order) => {
    var tb_whr = whr ? `WHERE ${whr}` : "";
    var tb_order = order ? order : "";
    let sql = `SELECT ${select} FROM ${table_name} ${tb_whr} ${tb_order}`;
    // console.log(sql);
    return new Promise((resolve, reject) => {
        db.query(sql, (err, result) => {
            if (err) {
                console.log(err);
                data = { suc: 0, msg: JSON.stringify(err) };
            } else {
                data = { suc: 1, msg: result, sql };
            }
            resolve(data);
        });
    });
};

const user_groom_loc = (data) =>{
    return new Promise (async (resolve, reject) => {
        var select =
            "a.*, b.edu_name education_name, c.occu_name, d.income income_name",
            table_name = "td_user_education a LEFT JOIN md_education b ON a.heigh_education=b.id LEFT JOIN  md_occupation c ON a.occup=c.id  LEFT JOIN md_income d ON a.income=d.id",
            whr = data.user_id > 0 ? `a.user_id=${data.user_id}` : null,
            order = null;
        var res_dt = await db_Select(select, table_name, whr, order);
        resolve(res_dt)
    })
}

const user_basic_info = (data) => {
  return new Promise (async (resolve, reject) => {
    var select = "a.id user_id, b.id id, b.profile_id, b.dob, b.email_id, b.phone_no, a.marital_status,a.height,a.weight,a.family_status,a.family_values,a.family_type,a.disability_flag,a.body_type,a.drinking_habbits,a.age,b.gender, a.age,a.eating_habbits,a.smoking_habbits,a.no_sister,a.no_brother,a.father_occupation,a.mother_occupation,a.family_location,a.about_my_family,b.u_name,b.ac_for,b.mother_tong mother_tong_id, d.lang_name mother_tong, b.about_us, c.caste_name, b.caste_id, b.religion, b.oth_comm_marry_flag, b.jotok_rasi_id, b.kundali_file_name, e.beng_rashi, b.file_path, b.rasi_id",
        table_name = "td_user_p_dtls a LEFT JOIN td_user_profile b ON a.user_id=b.id LEFT JOIN md_caste_list c ON b.caste_id=c.id LEFT JOIN md_language d ON b.mother_tong=d.id LEFT JOIN md_rashi_pos e ON b.rasi_id = e.position",
        whr = data.user_id > 0 ? `a.user_id=${data.user_id}` : null,
        order = null;
    var res_dt = await db_Select(select, table_name, whr, order);
    // console.log(res_dt);
    resolve(res_dt)
  })
}


const user_hobbies = (data) => {
    return new Promise (async (resolve, reject) => {
        var hobbie_data = {}, res_dt;
        var hobbies_tb_data = [
            {field_name: "id, hobbies_interest", table_name: "td_user_hobbies_int", input_field: "field_Hobbies_Interests"},
            {field_name: "id, music_name", table_name: "td_user_hobbies_music", input_field: "field_Music"},
            {field_name: "id, sports_name", table_name: "td_user_hobbies_sports", input_field: "field_Sports"},
            {field_name: "id, movie_name", table_name: "td_user_hobbies_movies", input_field: "field_Preferred_Movies"},
            {field_name: "id, lang_name", table_name: "td_user_hobbies_lang", input_field: "field_Spoken_Languages"},
        ]
    
        for(let dt of hobbies_tb_data){
            var select = `${dt.field_name}`,
                table_name = `${dt.table_name}`,
                whr = data.user_id > 0 ? `user_id=${data.user_id}` : null,
                order = null;
            res_dt = await db_Select(select, table_name, whr, order);
            res_dt.suc > 0 ? hobbie_data[dt.input_field] = res_dt.msg : ''
        }
        res_dt = {suc: 1, msg: hobbie_data}
       resolve(res_dt)
   })
  }


module.exports = {db_Select, user_groom_loc, user_basic_info, user_hobbies}