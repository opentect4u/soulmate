// const accessToken = require('../googleAccessToken.json'),
nodemailer = require('nodemailer');

// const SendUserEmail = (emailId) => {
    const SendUserEmail = () => {
    return new Promise((resolve, reject) => {
        // const transporter = nodemailer.createTransport({
        //     service: 'Gmail',
        //     auth: {
        //     type: 'OAuth2',
        //     user: process.env.GOOGLE_USER_ID,
        //     clientId: process.env.GOOGLE_CLIENT_ID,
        //     clientSecret: process.env.GOOGLE_CLIENT_SECRET,
        //     refreshToken: process.env.GOOGLE_REDIRECT_URL,
        //     accessToken: accessToken.token,
        //     },
        // });
        const transporter = nodemailer.createTransport({
        //    configOptions : {
        //         host: "email-smtp.ap-south-1.amazonaws.com",
        //         port: 587,
        //         tls: {
        //             rejectUnauthorized: true,
        //             // minVersion: "TLSv1.2"
        //         }
        //     }
        host: 'email-smtp.ap-south-1.amazonaws.com',
        port: 587,
        secure: false,
        auth: {
        user: 'AKIAZBYUUR636YJISSUT	',
        pass: 'BKBR0FJZfKUHOyEOLBMwaa99XBybd07/v2Ik8IFRbxLU	'
       },
        tls: {
        // do not fail on invalid certs
        rejectUnauthorized: true
    }
        });
        const mailOptions = {
            // from: process.env.GOOGLE_USER_ID,
            // to: `${emailId}`,
            // subject: 'Hello from Nodemailer with OAuth2',
            // text: 'This is a test email sent from Nodemailer with OAuth2 in Node.js.',
            from: 'info@mysoulmate.co.in',
            // from: process.env.GOOGLE_USER_ID,
            to: `tanmoy@mysoulmate.co.in`,
            subject: 'Hello from Nodemailer with OAuth2',
            text: 'This is a test email sent from Nodemailer with OAuth2 in Node.js.',
        };
        
        transporter.sendMail(mailOptions, (error, info) => {
            if (error) {
                console.error('Error sending email:', error);
                resolve(error)
            } else {
                console.log('Email sent:', info.response);
                resolve(info)
            }
        });    
    })
}

module.exports = {SendUserEmail}