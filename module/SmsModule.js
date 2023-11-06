const request = require('request');

const getOtp = (data) => {
    return new Promise((resolve, reject) => {
        var otp = Math.floor(1000 + Math.random() * 9000);
    const options = {
        method: 'GET',
        url: 'http://sms.digilexa.in/http-api.php',
        qs: {
          username: process.env.MESSAGE_USERNAME,
          password: process.env.MESSAGE_PASSWORD,
          senderid: process.env.MESSAGE_SENDER_ID,
          route: process.env.MESSAGE_ROUTE,
          number: data.phone_no.toString(),
          message: `Dear User, ${otp} is your OTP for Registration in My Soul Mate. OTP is valid for 5 minutes. For security reasons, DO NOT share this OTP with anyone -My Soul Mate`
        },
        headers: {Accept: '*/*'}
      };
      console.log(options.qs);
    
      request(options, function (error, response, body) {
        if (error) 
        {
          // throw new Error(error);
          resolve({suc:0, msg: 'OTP not send', err: error})
        }else{
          console.log(body);
          resolve({ suc: 1, msg: 'Otp Sent', otp: otp })
        }
      });
    })
};


const sendProfile_id = (phone_no, pro_id) => {
    return new Promise(async (resolve, reject) => {
        const options1 = {
            method: 'GET',
            url: 'http://sms.digilexa.in/http-api.php',
            qs: {
              username: process.env.MESSAGE_USERNAME,
              password: process.env.MESSAGE_PASSWORD,
              senderid: process.env.MESSAGE_SENDER_ID,
              route: process.env.MESSAGE_ROUTE,
              number: phone_no.toString(),
              message: `Welcome to My Soul Mate! Thank you for creating an account with us. Your profile ID is ${pro_id} -My Soul Mate`
            },
            headers: {Accept: '*/*'}
          };
    
          request(options1, function (error, response, body) {
            if (error) 
            {
              // throw new Error(error);
              resolve({suc:0, msg: 'Registration not done', err: error})
            }else{
              console.log(body);
              resolve({ suc: 1, msg: 'Registration completed successfully', profile_id: profile_id })
            }
          });
    })
};

module.exports = { getOtp, sendProfile_id }