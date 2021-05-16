import 'package:flutter/material.dart';
import 'package:rentalindo/view/pages/home.dart';

class Signup extends StatelessWidget {
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
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',
                        ),
                      ),
                    ),
                  ],
                ),
              ), Container(
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
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Kota',
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
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Email',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => new Home()));
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
                      "Sign-un",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
