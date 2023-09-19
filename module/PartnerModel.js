const dateFormat = require('dateformat')
const { db_Select } = require("./MasterModule");

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

module.exports = {partner_match}