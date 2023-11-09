const db = require("../core/db"),
fs = require('fs'),
path = require('path'),
request = require("request"),
dateFormat = require("dateformat");

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
    jotok_max: 38,
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

const ElementoryField = [
    {flag: 'A', start: 1, end: 4, fields: [1,2,3,4]},
    {flag: 'W', start: 10, end: 1, fields: [10,11,12,1]},
    {flag: 'F', start: 7, end: 10, fields: [7,8,9,10]},
    {flag: 'E', start: 4, end: 7, fields: [4,5,6,7]},
]

const MongalField = [
    {flag: 'A', fields: [1,4,7,8,12]},
    {flag: 'M', fields: [1,4,7,8,12]},
]

const MoonShineNotMatchField = [2,6,8,14];


const GenPassword = () => {
    return new Promise((resolve, reject) => {
var alpha = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N',
      'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z',
      '1', '2', '3', '4', '5', '6', '7', '8', '9', '0',
      'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n',
      'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'];
  var a = alpha[Math.floor(Math.random() * 62)];
  var b = alpha[Math.floor(Math.random() * 62)];
  var c = alpha[Math.floor(Math.random() * 62)];
  var d = alpha[Math.floor(Math.random() * 62)];
  var e = alpha[Math.floor(Math.random() * 62)];
  var sum_id = a + b + c + d + e;
  var sum = sum_id.toUpperCase();
  resolve(sum)
    })
  
}

const getAccessTokenMaster = () => {
    return new Promise((resolve, reject) => {
        // var access_token = fs.readFileSync(path.join(__dirname, '../accessToken.json'), 'utf-8')
        // access_token = JSON.parse(access_token)
        // resolve(access_token)
        var access_token = fs.readFileSync(path.join(__dirname, '../accessToken.json'), 'utf-8')
		var tokenFile = JSON.parse(access_token)
		if (dateFormat(tokenFile.created_dt, "yyyy-mm-dd") == dateFormat(new Date(), "yyyy-mm-dd")){
			const timeDiff = parseInt(
				(new Date().getTime() -
				  new Date(Date.parse(tokenFile.created_dt)).getTime()) /
				  (60 * 60 * 1000)
			  );
			if (timeDiff >= 1) {
				var options = {
					method: "POST",
					url: process.env.GENERATE_TOKEN_API,
					headers: {
						"Content-Type": "application/json",
					},
					body: JSON.stringify({
						grant_type: process.env.GRANT_TYPE,
						client_id: process.env.CLIENT_ID,
						client_secret: process.env.CLIENT_SECRET,
					}),
				};
				request(options, function (error, response) {
					if (error) throw new Error(error);
					var output = JSON.parse(response.body);
					resolve(output.access_token)
				});
			}else{
				resolve(tokenFile.token)
			}
		}else{
			var options = {
				method: "POST",
				url: process.env.GENERATE_TOKEN_API,
				headers: {
					"Content-Type": "application/json",
				},
				body: JSON.stringify({
					grant_type: process.env.GRANT_TYPE,
					client_id: process.env.CLIENT_ID,
					client_secret: process.env.CLIENT_SECRET,
				}),
			};
			request(options, function (error, response) {
				if (error) throw new Error(error);
				var output = JSON.parse(response.body);
				resolve(output.access_token)
			});
		}
    })
}

module.exports = { db_Select, db_Insert, db_Delete, db_Check, EncryptDataToSend,GenPassword, globalValues, SunshineMatch, NumberMatch, ElementoryField, MongalField, MoonShineNotMatchField, getAccessTokenMaster }