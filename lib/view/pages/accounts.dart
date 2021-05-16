import 'package:flutter/material.dart';

class Accounts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(text: "As a customer"),
              Tab(text: "As a rental"),
            ],
          ),
          title: Text('Account name'),
          centerTitle: false,
          leading: Row(
            children: <Widget>[
              SizedBox(width: 16.0),
              CircleAvatar(backgroundColor: Colors.white),
            ],
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.notifications, color: Colors.white,),
            ),
            IconButton(
              icon: Icon(Icons.settings, color: Colors.white,),
            ),
          ],
        ),
        body: TabBarView(
          children: [
            CustomScrollView(
              slivers: <Widget>[
                SliverList(
                  delegate: SliverChildListDelegate([
                    Container(
                      height: 8.0,
                      width: double.infinity,
                      color: Color(0x11555555),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
                      child: Text(
                        "Your dashboard",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16.0),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.bookmark, color: Colors.black12,),
                            SizedBox(width: 16.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Saved List",
                                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
                                ),
                                SizedBox(width: 16.0),
                                Text(
                                  "Subtitle saved list",
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ]),
                )
              ],
            ),
            Icon(Icons.directions_transit),
          ],
        ),
      ),
    );
  }
}
