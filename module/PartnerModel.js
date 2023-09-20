const dateFormat = require('dateformat')
const { db_Select, SunshineMatch, NumberMatch } = require("./MasterModule");

const partner_match = (dob) => {
    return new Promise(async (resolve, reject) => {
      var select = `rashi_id`,
      table_name = `md_sunshine_rashi`,
      whr = `STR_TO_DATE(CONCAT(YEAR(CURDATE()), '-', frm_month, '-', frm_date), '%Y-%m-%d') <= '${dateFormat(new Date(), "yyyy")}-${dateFormat(dob, "mm-dd")}' AND STR_TO_DATE(CONCAT(YEAR(CURDATE()), '-', to_month, '-', to_date), '%Y-%m-%d') >= '${dateFormat(new Date(), "yyyy")}-${dateFormat(dob, "mm-dd")}'`,
      order = null;
      var partner_match_dt = await db_Select(select, table_name, whr, order)
      resolve(partner_match_dt)
    })
}

const RashiMatch = (own_rashi, partner_rashi) => {
    return new Promise(async (resolve, reject) => {
        var select = `match_flag`,
            table_name = `md_rashi_match_frndsp`,
            whr = `frm_rashi_id = ${own_rashi} AND to_rashi_id = ${partner_rashi}`,
            order = null;
        var res_dt = await db_Select(select, table_name, whr, order)
        if(res_dt.suc > 0 && res_dt.msg.length > 0){
            var marks = SunshineMatch[res_dt.msg[0].match_flag]
            resolve(marks)
        }else{
            var select = `match_flag`,
                table_name = `md_rashi_match_frndsp`,
                whr = `frm_rashi_id = ${partner_rashi} AND to_rashi_id = ${own_rashi}`,
                order = null;
            var res_dt = await db_Select(select, table_name, whr, order)
            var marks = res_dt.suc > 0 && res_dt.msg.length > 0 ? SunshineMatch[res_dt.msg[0].match_flag] : 0
            resolve(marks)
        }
    })
}

const NumberMatchWithDate = (ownDate, partnerDate) => {
    return new Promise(async (resolve, reject) => {
        var select = `frnd_flag`,
            table_name = `md_frndsp_btwn_number`,
            whr = `frm_number = ${ownDate} AND to_number = ${partnerDate}`,
            order = null;
        var res_dt = await db_Select(select, table_name, whr, order)
        if(res_dt.suc > 0 && res_dt.msg.length > 0){
            var marks = NumberMatch[res_dt.msg[0].frnd_flag]
            resolve(marks)
        }else{
            var select = `frnd_flag`,
                table_name = `md_frndsp_btwn_number`,
                whr = `frm_number = ${partnerDate} AND to_number = ${ownDate}`,
                order = null;
            var res_dt = await db_Select(select, table_name, whr, order)
            var marks = res_dt.suc > 0 && res_dt.msg.length > 0 ? NumberMatch[res_dt.msg[0].frnd_flag] : 0
            resolve(marks)
        }
    })
}

module.exports = {partner_match, RashiMatch, NumberMatchWithDate}