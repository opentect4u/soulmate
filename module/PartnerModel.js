const dateFormat = require('dateformat')
const { db_Select, SunshineMatch, NumberMatch, globalValues, ElementoryField, MongalField } = require("./MasterModule");

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
        if (res_dt.suc > 0 && res_dt.msg.length > 0) {
            var marks = SunshineMatch[res_dt.msg[0].match_flag]
            resolve(marks)
        } else {
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
        if (res_dt.suc > 0 && res_dt.msg.length > 0) {
            var marks = NumberMatch[res_dt.msg[0].frnd_flag]
            resolve(marks)
        } else {
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

const JotokMatch = (hus_rasi_id, wif_rasi_id) => {
    return new Promise(async (resolve, reject) => {
        var select = `marks`,
            table_name = `md_jotok_chakra`,
            whr = `hus_jotok_rasi_id = ${hus_rasi_id} AND wife_jotok_rasi_id = ${wif_rasi_id}`,
            order = null;
        var res_dt = await db_Select(select, table_name, whr, order)
        if (res_dt.suc > 0 && res_dt.msg.length > 0) {
            var marks = res_dt.msg[0].marks
            marks = marks > 0 ? (globalValues.each_marks / globalValues.jotok_max) * marks : 0
            resolve(marks)
        } else {
            var select = `marks`,
                table_name = `md_jotok_chakra`,
                whr = `hus_jotok_rasi_id = ${wif_rasi_id} AND wife_jotok_rasi_id = ${hus_rasi_id}`,
                order = null;
            var res_dt = await db_Select(select, table_name, whr, order)
            var marks = res_dt.suc > 0 && res_dt.msg.length > 0 ? res_dt.msg[0].marks : 0
            marks = marks > 0 ? (globalValues.each_marks / globalValues.jotok_max) * marks : 0
            resolve(marks)
        }
    })
}

const ElementMatch = (filePath) => {
    return new Promise((resolve, reject) => {
        try{
        var data = require(`../raw_data/${filePath}`)
        if(data.status == 'ok'){
            var planet_data = data.data.planet_position
            var asc_pos = planet_data.findIndex(dt => dt.name == 'Ascendant'), planets = [], result = [], elementVal = []
            // console.log(planet_data[asc_pos].position);
            // while(arrRotate){
            //  if() 
            // }
            for (let dt of planet_data) {
                dt.position = dt.position >= planet_data[asc_pos].position ? Math.abs(parseInt(dt.position - planet_data[asc_pos].position)) + 1 : (dt.position + planet_data[asc_pos].position) - 1
                planets.push(dt.position)
            }
    
            planets = [...new Set(planets)]
            for (let dt of planets) {
                result.push({ pos: dt, no_of_planet: planet_data.filter((pdt) => pdt.position == dt && pdt.name != 'Ascendant').length })
            }
    
            for (dt of ElementoryField) {
                var eleObj = {}, totPla = 0
                for (rdt of result) {
                    if (dt.fields.includes(rdt.pos)) {
                        totPla += rdt.no_of_planet
                    }
                }
                eleObj[dt.flag] = totPla
                elementVal.push(eleObj)
            }
            resolve(elementVal)
        }else{
            resolve([])
        }
        }catch(err){
            console.log(err);
            resolve([])
        }
    })
}

const MongalMatch = (filePath) => {
    return new Promise((resolve, reject) => {
        try{
        var data = require(`../raw_data/${filePath}`), asc_mangal = false, moon_mangal = false;
            if(data.status == 'ok'){
                var planet_data = data.data.planet_position
                var asc_pos = planet_data.findIndex(dt => dt.name == 'Ascendant'), elementVal = []

                for (let dt of planet_data) {
                    dt.position = dt.position >= planet_data[asc_pos].position ? Math.abs(parseInt(dt.position - planet_data[asc_pos].position)) + 1 : (dt.position + planet_data[asc_pos].position) - 1
                }
                var asc_planet_data = planet_data

                for(let dt of asc_planet_data){
                    if(MongalField[0].fields.includes(dt.position)){
                        if(dt.name == 'Mars'){
                            asc_mangal = 80
                        }
                    }
                }

                var moon_pos = planet_data.findIndex(dt => dt.name == 'Moon'), elementVal = []

                for (let dt of planet_data) {
                    dt.position = dt.position >= planet_data[moon_pos].position ? Math.abs(parseInt(dt.position - planet_data[moon_pos].position)) + 1 : (dt.position + planet_data[moon_pos].position) - 1
                }

                var moon_planet_data = planet_data

                for(let dt of moon_planet_data){
                    if(MongalField[1].fields.includes(dt.position)){
                        if(dt.name == 'Mars'){
                            moon_mangal = 20
                        }
                    }
                }

                var marks = (asc_mangal ? asc_mangal : 0) + (moon_mangal ? moon_mangal : 0)

                // for (dt of MongalField) {
                //     var eleObj = {}, totPla = 0
                //         if (dt.fields.includes(dt.position)) {
                //             totPla += dt.no_of_planet
                //         }
                
                //     eleObj[dt.flag] = totPla
                //     elementVal.push(eleObj)
                // }

                resolve(marks)
            }else{
                resolve(0)
            }
        }catch(err){
            console.log(err);
            resolve([])
        }
    })
}

module.exports = { partner_match, RashiMatch, NumberMatchWithDate, JotokMatch, ElementMatch, MongalMatch }