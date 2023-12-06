const express = require('express'),
    PaymentRouter = express.Router(),
    dateFormat = require("dateformat"),
    qs = require('querystring');
const { db_Insert, db_Select } = require('../module/MasterModule');
const { reqEncrypt, reqDecrypt } = require('../module/ccavutil');

PaymentRouter.post('/encReqData', async (req, res) => {
    var workingKey = process.env.WORKING_KEY,		//Put in the 32-Bit key shared by CCAvenues.
	accessCode = process.env.ACCESS_CODE,		//Put in the access code shared by CCAvenues.
	encRequest = '',
	formbody = '',
    datetime = dateFormat(new Date(), "yyyy-mm-dd HH:MM:ss");

    var data = req.body,
    body = `merchant_id=${data.merchant_id}&order_id=${data.order_id}&currency=${data.currency}&amount=${data.amount}&redirect_url=${data.redirect_url}&cancel_url=${data.cancel_url}&language=${data.language}&billing_name=${data.billing_name}&billing_address=${data.billing_address}&billing_city=${data.billing_city}&billing_state=${data.billing_state}&billing_zip=${data.billing_zip}&billing_country=${data.billing_country}&billing_tel=${data.billing_tel}&billing_email=${data.billing_email}&delivery_name=${data.delivery_name}&delivery_address=${data.delivery_address}&delivery_city=${data.delivery_city}&delivery_state=${data.delivery_state}&delivery_zip=${data.delivery_zip}&delivery_country=${data.delivery_country}&delivery_tel=${data.delivery_tel}&merchant_param1=${data.merchant_param1}&merchant_param2=${data.merchant_param2}&merchant_param3=${data.merchant_param3}&merchant_param4=${data.merchant_param4}&merchant_param5=${data.merchant_param5}&promo_code=&customer_identifier=`;
    // console.log(body);
    var table_name = 'td_payment_request',
        fields = `(tnx_date,merchant_id,order_id,currency,amount,redirect_url,cancel_url,language,billing_name,billing_address,billing_city,billing_state,billing_zip,billing_country,billing_tel,billing_email,delivery_name,delivery_address,delivery_city,delivery_state,delivery_zip,delivery_country,delivery_tel,customer_identifier,pack_id,created_by,created_dt)`,
        values = `("${datetime}", "${data.merchant_id}", "${data.order_id}", "${data.currency}", "${data.amount}", "${data.redirect_url}", "${data.cancel_url}", "${data.language}", "${data.billing_name}", "${data.billing_address}", "${data.billing_city}", "${data.billing_state}", "${data.billing_zip}", "${data.billing_country}", "${data.billing_tel}", "${data.billing_email}", "${data.delivery_name}", "${data.delivery_address}", "${data.delivery_city}", "${data.delivery_state}", "${data.delivery_zip}", "${data.delivery_country}", "${data.delivery_tel}", "${data.user_id}", "${data.pack_id}", "${data.user}", "${datetime}")`,
        whr = null,
        flag = 0;
    var req_dt = await db_Insert(table_name, fields, values, whr, flag)
    encRequest = reqEncrypt(body,workingKey);
    formbody = '<form id="nonseamless" method="post" name="redirect" action="https://test.ccavenue.com/transaction/transaction.do?command=initiateTransaction"> <input type="hidden" id="encRequest" name="encRequest" value="' + encRequest + '"><input type="hidden" name="access_code" id="access_code" value="' + accessCode + '"><script language="javascript">document.redirect.submit();</script></form>';
    // console.log(encRequest);
    // res.send({suc: req_dt.suc > 0 ? 1 : 0, msg: encRequest})
    res.writeHead(200, {"Content-Type": "text/html"});
        res.send(formbody);
        // res.end();
})

PaymentRouter.post('/payRes', async (req, res) => {
    // console.log(request.body, 'DATATA');
    var workingKey = process.env.WORKING_KEY,
    reqData = req.body,
    datetime = dateFormat(new Date(), "yyyy-mm-dd HH:MM:ss");;
    var encryption = reqData.encResp;

    var data = reqDecrypt(encryption,workingKey);
    var res_dt = data.split('&').map(dt => {
        var ndt = {};
        ndt[dt.split('=')[0]] = dt.split('=')[1]
        return ndt;
    })
    var newResDt = {}
    for(let dt of res_dt){
        // console.log(Object.keys(dt));
        newResDt[Object.keys(dt)[0]] = Object.values(dt)[0]
    }
    var table_name = 'td_payment_request',
        fields = `tracking_id = "${newResDt.tracking_id}", bank_ref_no = "${newResDt.bank_ref_no}", order_status = "${newResDt.order_status}", failure_message = "${newResDt.failure_message}", payment_mode = "${newResDt.payment_mode}", status_code = "${newResDt.status_code}", status_message = "${newResDt.status_message}", vault = "${newResDt.vault}", offer_type = "${newResDt.offer_type}", offer_code = "${newResDt.offer_code}", discount_value = "${newResDt.discount_value}", mer_amount = "${newResDt.mer_amount}", eci_value = "${newResDt.eci_value}", response_code = "${newResDt.response_code}", billing_notes = "${newResDt.billing_notes}", trans_rec_date = "${dateFormat(new Date(newResDt.trans_date), 'yyyy-mm-dd HH:MM:ss')}", modified_by = "${newResDt.billing_name}", modified_dt = "${datetime}"`,
        values = null,
        whr = `order_id = ${newResDt.order_id}`,
        flag = 1;
    var req_dt = await db_Insert(table_name, fields, values, whr, flag)
    console.log(newResDt);
    // res.send(newResDt)
    res.redirect('https://mysoulmate.co.in/#/home')
})

PaymentRouter.post('/get_pay_response', async (req, res) => {
    var data = req.body
    var select = '*', 
    table_name = 'td_payment_request', 
    whr = `order_id = ${data.order_id}`, 
    order = null;
    var res_dt = await db_Select(select, table_name, whr, order)
    res.send(res_dt)
})

PaymentRouter.get('/testPayReq', async (req, res) => {
    // var data = req.query.data
    // data = JSON.parse(data)
    // console.log(data);

    var workingKey = 'F128A98235BD51AD0FAFD653EA16346E',		//Put in the 32-Bit key shared by CCAvenues.
	accessCode = 'AVWF05KL38AI00FWIA',		//Put in the access code shared by CCAvenues.
	encRequest = '',
	formbody = '',
    datetime = dateFormat(new Date(), "yyyy-mm-dd HH:MM:ss");

    // var body = `merchant_id=2985958&order_id=${data.order_id}&currency=${data.currency}&amount=${data.amount}&redirect_url=${data.redirect_url}&cancel_url=${data.cancel_url}&language=${data.language}&billing_name=${data.billing_name}&billing_address=${data.billing_address}&billing_city=${data.billing_city}&billing_state=${data.billing_state}&billing_zip=${data.billing_zip}&billing_country=${data.billing_country}&billing_tel=${data.billing_tel}&billing_email=${data.billing_email}&delivery_name=${data.delivery_name}&delivery_address=${data.delivery_address}&delivery_city=${data.delivery_city}&delivery_state=${data.delivery_state}&delivery_zip=${data.delivery_zip}&delivery_country=${data.delivery_country}&delivery_tel=${data.delivery_tel}&merchant_param1=${data.merchant_param1}&merchant_param2=${data.merchant_param2}&merchant_param3=${data.merchant_param3}&merchant_param4=${data.merchant_param4}&merchant_param5=${data.merchant_param5}&promo_code=&customer_identifier=`;
    // console.log(body);
    var body = 'merchant_id=2985958&order_id=1701766066698&currency=INR&amount=6400&redirect_url=http://202.21.38.178:3000/payRes&cancel_url=http://202.21.38.178:3000/payRes&language=EN&billing_name=asd&billing_address=asd&billing_city=asd&billing_state=sd&billing_zip=1223&billing_country=asd&billing_tel=12345678987&billing_email=as@gmail.com&delivery_name=asd&delivery_address=asd&delivery_city=asd&delivery_state=sd&delivery_zip=1223&delivery_country=asd&delivery_tel=12345678987&merchant_param1=&merchant_param2=&merchant_param3=&merchant_param4=&merchant_param5=&promo_code=&customer_identifier=';
    encRequest = reqEncrypt(body,workingKey);
    formbody = '<form id="nonseamless" method="post" name="redirect" action="https://test.ccavenue.com/transaction/transaction.do?command=initiateTransaction"> <input type="hidden" id="encRequest" name="encRequest" value="' + encRequest + '"><input type="hidden" name="access_code" id="access_code" value="' + accessCode + '"><script language="javascript">document.redirect.submit();</script></form>';
    // console.log(encRequest);
    // res.send({suc: req_dt.suc > 0 ? 1 : 0, msg: encRequest})
    res.writeHead(200, {"Content-Type": "text/html"});
    res.write(formbody);
    res.end();
})

module.exports = {PaymentRouter}