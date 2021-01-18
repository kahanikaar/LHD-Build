var Cryptr = require('cryptr');
var express=require("express");
var conn = require('./../config');
cryptr = new Cryptr('myTotalySecretKey');
 
module.exports.register=function(req,res){
  
  var encryptedString = cryptr.encrypt(req.body.password);
    var users={
        "name":req.body.name,
        "roll":req.body.roll,
        "email":req.body.email,
        "password":encryptedString
    }
    conn.query('INSERT INTO userinfo SET ?',users, function (error, results, fields) {
      if (error) {
        res.json({
            status:false,
            message:'Errors in query!'
        })
      }else{
        res.redirect('/login.html');
      }
    });
}