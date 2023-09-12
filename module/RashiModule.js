const { db_Select } = require("./MasterModule")

const CalculatejotokMarks = (hus_rasi_id, wif_rasi_id) => {
    return new Promise(async (resolve, reject) => {
        var select = `marks`,
          table_name = `md_jotok_chakra`,
          whr = `hus_jotok_rasi_id = ${hus_rasi_id} AND wife_jotok_rasi_id = ${wif_rasi_id}`,
          order = null;
        var res_dt = await db_Select(select, table_name, whr, order)
        resolve(res_dt)
    })
}

module.exports = {CalculatejotokMarks}