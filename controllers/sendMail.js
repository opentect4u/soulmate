const nodemailer = require("nodemailer");

const sendMail = async (req, res) => {
const transporter = nodemailer.createTransport({
    service: 'Gmail',
    auth: {
      type: 'OAuth2',
      user:  'synergicbbps@gmail.com',
      clientId: "56334895501-mtotjrjom8ruop9qmfefvmr3irqqven3.apps.googleusercontent.com",
      clientSecret: "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",
      refreshToken: "1//04VUrxmTKVzCgCgYIARAAGAQSNwF-L9IrXcOCR3aKhf8tYvBNzteEwwSaGijQM-KfeEkRz3vEvcjOF4pAGODdcUtgIRHlaMl6zNo",
      accessToken: "ya29.a0AfB_byAX6zCNouODbKkUBKM4MSX3IjRvlTNdHxz2-mGWCgfgt2CqC3fba_RETZKqWUwInVWAlRN2e4eGwBBakgEmBeD62IRycT0n6l7tArILNWjZ08VvQoGDp1K25Ckjx0oaeovaqQXDo68bSRZ5-Wk13tUwDPPLxAaCgYKAX8SARISFQGOcNnC3bHIhEo_E1U0x_dA80oDbw0169",
},
  });
  
  const mailOptions = {
    from: 'synergicbbps@gmail.com',
    to: 'sayantika.dhar04@gmail.com',
    subject: 'Hello from Nodemailer with OAuth2',
    text: 'This is a test email sent from Nodemailer with OAuth2 in Node.js.',
  };
  
  transporter.sendMail(mailOptions, (error, info) => {
    if (error) {
      console.error('Error sending email:', error);
    } else {
      console.log('Email sent:', info.response);
    }
  });

};

module.exports = sendMail;