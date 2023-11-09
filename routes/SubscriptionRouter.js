const { EncryptDataToSend } = require('../module/MasterModule');
const { subscription_dtls } = require('../module/SubscriptionModule');

const express = require('express'),
subscriptionRouter = express.Router(),
dateFormat = require("dateformat");

subscriptionRouter.get("/get_subscription_dtls", async (req, res) => {
    var data = req.query;
    var res_dt = await subscription_dtls(data);
    res_dt = await EncryptDataToSend(res_dt);
    res.send(res_dt)
})

module.exports = { subscriptionRouter }