const db = require("../core/db");
// const dateFormat = require("dateformat");

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

const db_Insert = (table_name, fields, values, whr, flag) => {
    var sql = "",
        msg = "",
        tb_whr = whr ? `WHERE ${whr}` : "";
    // 0 -> INSERT; 1 -> UPDATE
    // IN INSERT flieds ARE TABLE COLOUMN NAME ONLY || IN UPDATE fields ARE TABLE NAME = VALUES
    if (flag > 0) {
        sql = `UPDATE ${table_name} SET ${fields} ${tb_whr}`;
        msg = "Updated Successfully !!";
    } else {
        sql = `INSERT INTO ${table_name} ${fields} VALUES ${values}`;
        msg = "Inserted Successfully !!";
    }
    // console.log(sql);
    return new Promise((resolve, reject) => {
        db.query(sql, (err, lastId) => {
            if (err) {
                console.log(err);
                data = { suc: 0, msg: JSON.stringify(err) };
            } else {
                data = { suc: 1, msg: msg, lastId };
            }
            resolve(data);
        });
    });
};

const db_Delete = (table_name, whr) => {
    whr = whr ? `WHERE ${whr}` : "";
    var sql = `DELETE FROM ${table_name} ${whr}`;
    return new Promise((resolve, reject) => {
        db.query(sql, (err, lastId) => {
            if (err) {
                console.log(err);
                data = { suc: 0, msg: JSON.stringify(err) };
            } else {
                data = { suc: 1, msg: "Deleted Successfully !!" };
            }
            resolve(data);
        });
    });
};

const db_Check = async (fields, table_name, whr) => {
    var sql = `SELECT ${fields} FROM ${table_name} WHERE ${whr}`;
    // console.log(sql);
    return new Promise((resolve, reject) => {
        db.query(sql, (err, result) => {
            if (err) {
                console.log(err);
                data = { suc: 0, msg: JSON.stringify(err) };
            } else {
                data = { suc: 1, msg: result.length };
            }
            resolve(data);
        });
    });
};

const EncryptDataToSend = (data) => {
    return new Promise((resolve, reject) => {
        var res_dt = data;
        res_dt = {suc:res_dt.suc, msg: res_dt.suc > 0 ? Buffer.from(JSON.stringify(res_dt.msg), 'utf8').toString('base64') : res_dt.msg }
        resolve(res_dt)
    })
}

var tot_match = 5
const globalValues = {
    tot_match: tot_match,
    each_marks: 100/tot_match,
    full_marks: 100/tot_match,
    worst_marks: 0
}

const SunshineMatch = {
    'G': globalValues.full_marks,
    'M': globalValues.full_marks/2,
    'VA': globalValues.worst_marks
}

const NumberMatch = {
    'G': globalValues.full_marks,
    'M': globalValues.full_marks/2,
    'VA': globalValues.worst_marks,
    'MA': (globalValues.full_marks/2)/2
}

module.exports = { db_Select, db_Insert, db_Delete, db_Check, EncryptDataToSend, globalValues, SunshineMatch, NumberMatch }