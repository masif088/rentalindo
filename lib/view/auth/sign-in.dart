import 'dart:math';

import 'package:flutter/material.dart';
import 'package:rentalindo/view/auth/sign-up.dart';
import 'package:rentalindo/view/pages/home.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Signin extends StatelessWidget {
  TextEditingController tfemail =new TextEditingController();
  TextEditingController tfpassword =new TextEditingController();

  void login() async{
    print("Connection check");
    var url ='http://192.168.43.159/rentalindo/public/api/login';
    var form =json.encode({
      'email': tfemail.text,
      'password':tfpassword.text
    });
    var respond= await post(url, body: form);
    if(respond.statusCode==200){
      print(respond.body);
    }
    else{
      print("Connection failed");
    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                height: 40.0,
                width: 240.0,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    SizedBox(width: 16.0),
                    Expanded(
                      child: TextField(
                        controller: tfemail,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Email',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 40.0,
                width: 240.0,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    SizedBox(width: 16.0),
                    Expanded(
                      child: TextField(
                        controller: tfpassword,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  login();
//                  Navigator.push(context,
//                      MaterialPageRoute(builder: (context) => new Home()));
                },
                child: Container(
                  height: 40.0,
                  width: 240.0,
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  child: Center(
                    child: Text(
                      "Sign-in",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => new Signup()));
                },
                child: Container(
                  height: 40.0,
                  width: 240.0,
                  child: Center(
                    child: Text(
                      "Tidak punya akun.",
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
