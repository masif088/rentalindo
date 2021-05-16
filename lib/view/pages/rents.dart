import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rentalindo/model/transactions_model.dart';

class Rents extends StatefulWidget {
  @override
  _RentsState createState() => _RentsState();
}

class _RentsState extends State<Rents> {

  int _groupIndex = 0;

  final _groupSegment = [
    Expanded(
        child: ListView.builder(
          itemCount: myrent.length,
          itemBuilder: (BuildContext context, int index){
            return Container(
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: Container(
                  width: double.infinity,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black12, width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    boxShadow: [BoxShadow(
                        color: Color(0x10000000),
                        offset: Offset(0.0, 4.0),
                        blurRadius: 5.0,
                        spreadRadius: 1.0
                    )],
                  ),
                  child: Row(
                    children: <Widget>[
                      SizedBox(width: 10.0,),
                      Container(
                        width: 48.0,
                        height: 48.0,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          image: DecorationImage(
                            image: AssetImage(myrent[index].product.imageUrl),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            SizedBox(height: 8.0,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(myrent[index].product.name),
                                Text(
                                  (myrent[index].product.price*myrent[index].rentaltime).toString(),
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Text(
                              myrent[index].transactiontime,
                              style: TextStyle(color: Colors.green),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  myrent[index].product.rental,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Container(
                                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                        color:
                                        (myrent[index].status == 'done') ? Colors.green :
                                        (myrent[index].status == 'on rent') ? Colors.orangeAccent :
                                        (myrent[index].status == 'payed') ? Colors.blue :
                                        (myrent[index].status == 'waiting for payment') ? Colors.amberAccent :
                                        (myrent[index].status == 'waiting for approval') ? Colors.deepPurpleAccent :
                                        Colors.black38
                                    ),
                                    child: Text(
                                      myrent[index].status,
                                      style: TextStyle(color: (myrent[index].status == 'waiting for payment') ?
                                      Colors.green : Colors.white),
                                    )
                                )
                              ],
                            ),
                            SizedBox(height: 8.0,),
                          ],
                        ),
                      ),
                      SizedBox(width: 10.0,),
                    ],
                  )
              ),
            );
          },
        )
    ),
    Expanded(
        child: ListView.builder(
          itemCount: myrental.length,
          itemBuilder: (BuildContext context, int index){
            return Container(
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: Container(
                  width: double.infinity,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black12, width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    boxShadow: [BoxShadow(
                        color: Color(0x10000000),
                        offset: Offset(0.0, 4.0),
                        blurRadius: 5.0,
                        spreadRadius: 1.0
                    )],
                  ),
                  child: Row(
                    children: <Widget>[
                      SizedBox(width: 10.0,),
                      Container(
                        width: 48.0,
                        height: 48.0,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          image: DecorationImage(
                            image: AssetImage(myrental[index].product.imageUrl),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            SizedBox(height: 8.0,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(myrental[index].product.name),
                                Text(
                                  (myrental[index].product.price*myrental[index].rentaltime).toString(),
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Text(
                              myrental[index].transactiontime,
                              style: TextStyle(color: Colors.green),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  myrental[index].product.rental,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Container(
                                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                        color:
                                        (myrental[index].status == 'done') ? Colors.green :
                                        (myrental[index].status == 'on rent') ? Colors.orangeAccent :
                                        (myrental[index].status == 'payed') ? Colors.blue :
                                        (myrental[index].status == 'wait for payment') ? Colors.amberAccent :
                                        (myrental[index].status == 'wait for approval') ? Colors.deepPurpleAccent :
                                        Colors.black38
                                    ),
                                    child: Text(
                                      myrental[index].status,
                                      style: TextStyle(color: (myrental[index].status == 'wait for payment') ?
                                      Colors.black : Colors.white),
                                    )
                                )
                              ],
                            ),
                            SizedBox(height: 8.0,),
                          ],
                        ),
                      ),
                      SizedBox(width: 10.0,),
                    ],
                  )
              ),
            );
          },
        )
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text("Rents"),
        ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Center(
              child: CupertinoSlidingSegmentedControl(
                backgroundColor: Colors.purple[50],
                groupValue: _groupIndex,
                children: <int, Widget> {
                  0: Container(
                    padding: EdgeInsets.symmetric(horizontal: 44.0),
                    child: Text(
                      "My rents",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  1: Text(
                    "My rental",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                },
                onValueChanged: (int index){
                  setState(() {
                    _groupIndex = index;
                  });
                },
              )
            ),
          ),
          _groupSegment[_groupIndex]
        ],
      ),
    );
  }
}

