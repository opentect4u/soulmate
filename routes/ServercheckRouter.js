const express = require('express'),
ServercheckRouter = express.Router(),
dateFormat = require("dateformat"),
path = require("path");

ServercheckRouter.get("/", async(req, res) => {
    var data = req.query;
    
})

module.exports = { ServercheckRouter};