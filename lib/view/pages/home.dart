
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:rentalindo/model/categories_model.dart';
import 'package:rentalindo/model/products_model.dart';
import 'package:rentalindo/view/pages/accounts.dart';
import 'package:rentalindo/view/pages/product_details.dart';
import 'package:rentalindo/view/pages/rents.dart';
import 'package:rentalindo/view/pages/saved_list.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.purple, accentColor: Colors.white),
      home: MyHomePage(),

    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _tabIndex = 0;

  final tabs = [
    Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 30.0),
          _AppBar(),
          _SearchBar(),
          Expanded(
            child: ListView(
                children: <Widget>[
                  SectionSeparator(title: "Categories"),
                  CategoriesCard(),
                  SectionSeparator(title: "Popular"),
                  PopularSections(),
                  SectionSeparator(title: "Near You"),
                  NearYouSections(),
                  SectionSeparator(title: "New Listed"),
                  NewListedSections(),
                ]
            ),
          )
        ]
    ),
    SavedList(),
    Rents(),
    Accounts(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xf8f8f8f8),
      body: tabs[_tabIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 12,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.black38,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark), title: Text('Saved')),
          BottomNavigationBarItem(
              icon: Icon(Icons.vpn_key), title: Text('Rents')),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.profile_circled), title: Text('Account')),
        ],
        currentIndex: _tabIndex,
        onTap: (int index) {
          setState(() {
            _tabIndex = index;
          });
        }),
    );
  }
}

class _SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
        child: Container(
          height: 45.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              border: Border.all(width: 2.0, color: Colors.purple)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              SizedBox(width: 8.0),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search',
                  ),
                ),
              ),
              Icon(Icons.search, color: Colors.purple),
              SizedBox(width: 8.0)
            ],
          ),
        ),
      ),
    );
  }
}

class _AppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      child: Row(
        children: <Widget>[
          SizedBox(width: 16.0),
          Text(
            "Rentalindo",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32.0,
            ),
          )
        ],
      ),
    );
  }
}

class SectionSeparator extends StatelessWidget {
  final String title;
  SectionSeparator({this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38.0,
      child: Padding(
        padding: EdgeInsets.only(bottom: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  SizedBox(width: 16.0),
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 15.0
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "See All",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w700,
                      fontSize: 15.0
                    ),
                  ),
                  SizedBox(width: 16.0)
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}

class PopularSections extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 209.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: popular.length,
        itemBuilder: (BuildContext context, int index){
          return Padding(
            padding: EdgeInsets.only(left: 16.0, bottom: 16.0),
            child: Container(
              width: 125.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                border: Border.all(color: Colors.black12, width: 1.0),
                boxShadow: [BoxShadow(
                    color: Color(0x10000000),
                    offset: Offset(0.0, 4.0),
                    blurRadius: 5.0,
                    spreadRadius: 1.0
                )],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Details(
                            id: popular[index].id,
                            category: popular[index].category,
                            name: popular[index].name,
                            brand: popular[index].brand,
                            imageUrl: popular[index].imageUrl,
                            color: popular[index].color,
                            transmission: popular[index].transmission,
                            fuel: popular[index].fuel,
                            cc: popular[index].cc,
                            year: popular[index].year,
                            seat: popular[index].seat,
                            price: popular[index].price,
                            stock: popular[index].stock,
                            desc: popular[index].desc,
                            rental: popular[index].rental,
                            location: popular[index].location,
                          )),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(18.0),
                              topRight: Radius.circular(18.0)
                          ),
                          image: DecorationImage(
                            image: AssetImage(popular[index].imageUrl),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    )
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 8.0, right: 8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 3.0),
                          Text(
                            popular[index].name,
                            style: TextStyle(
                                fontSize: 12
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text: 'Rp ',
                              style: DefaultTextStyle.of(context).style,
                              children: <TextSpan>[
                                TextSpan(
                                  text: popular[index].price.toString(),
                                  style: TextStyle(fontWeight: FontWeight.bold)
                                )
                              ],
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.location_on,
                                color: Colors.purple,
                                size: 12.0,
                              ),
                              Text(
                                popular[index].location,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.purple,
                                    fontSize: 11.0
                                ),
                              )
                            ],
                          ),
                          Center(
                            child: Container(
                              padding: EdgeInsets.only(
                                left: 8.0,
                                right: 8.0,
                                top: 4.0,
                                bottom: 4.0,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.purple,
                                borderRadius: BorderRadius.all(Radius.circular(8.0))
                              ),
                              child: Text(
                                "Book now",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 12
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 4.0),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class CategoriesCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 166.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index){
          return Padding(
            padding: EdgeInsets.only(left: 16.0, bottom: 16.0),
            child: Container(
              width: 308.0,
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                border: Border.all(color: Colors.black12, width: 2.0),
                boxShadow: [BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0.0, 4.0),
                    blurRadius: 4.0,
                    spreadRadius: 1.0
                )],
                image: DecorationImage(
                  image: AssetImage(categories[index].imageUrl),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class NearYouSections extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 209.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: near.length,
        itemBuilder: (BuildContext context, int index){
          return Padding(
            padding: EdgeInsets.only(left: 16.0, bottom: 16.0),
            child: Container(
              width: 125.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                border: Border.all(color: Colors.black12, width: 1.0),
                boxShadow: [BoxShadow(
                    color: Color(0x10000000),
                    offset: Offset(0.0, 4.0),
                    blurRadius: 5.0,
                    spreadRadius: 1.0
                )],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Expanded(
                      child: InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Details(
                              id: near[index].id,
                              category: near[index].category,
                              name: near[index].name,
                              brand: near[index].brand,
                              imageUrl: near[index].imageUrl,
                              color: near[index].color,
                              transmission: near[index].transmission,
                              fuel: near[index].fuel,
                              cc: near[index].cc,
                              year: near[index].year,
                              seat: near[index].seat,
                              price: near[index].price,
                              stock: near[index].stock,
                              desc: near[index].desc,
                              rental: near[index].rental,
                              location: near[index].location,
                            )),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(18.0),
                                topRight: Radius.circular(18.0)
                            ),
                            image: DecorationImage(
                              image: AssetImage(near[index].imageUrl),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      )
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 8.0, right: 8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 3.0),
                          Text(
                            near[index].name,
                            style: TextStyle(
                                fontSize: 12
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text: 'Rp ',
                              style: DefaultTextStyle.of(context).style,
                              children: <TextSpan>[
                                TextSpan(
                                    text: near[index].price.toString(),
                                    style: TextStyle(fontWeight: FontWeight.bold)
                                )
                              ],
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.location_on,
                                color: Colors.purple,
                                size: 12.0,
                              ),
                              Text(
                                near[index].location,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.purple,
                                    fontSize: 11.0
                                ),
                              )
                            ],
                          ),
                          Center(
                            child: Container(
                              padding: EdgeInsets.only(
                                left: 8.0,
                                right: 8.0,
                                top: 4.0,
                                bottom: 4.0,
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.purple,
                                  borderRadius: BorderRadius.all(Radius.circular(8.0))
                              ),
                              child: Text(
                                "Book now",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 12
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 4.0),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class NewListedSections extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 209.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: newlisted.length,
        itemBuilder: (BuildContext context, int index){
          return Padding(
            padding: EdgeInsets.only(left: 16.0, bottom: 16.0),
            child: Container(
              width: 125.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                border: Border.all(color: Colors.black12, width: 1.0),
                boxShadow: [BoxShadow(
                    color: Color(0x10000000),
                    offset: Offset(0.0, 4.0),
                    blurRadius: 5.0,
                    spreadRadius: 1.0
                )],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Expanded(
                      child: InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Details(
                              id: newlisted[index].id,
                              category: newlisted[index].category,
                              name: newlisted[index].name,
                              brand: newlisted[index].brand,
                              imageUrl: newlisted[index].imageUrl,
                              color: newlisted[index].color,
                              transmission: newlisted[index].transmission,
                              fuel: newlisted[index].fuel,
                              cc: newlisted[index].cc,
                              year: newlisted[index].year,
                              seat: newlisted[index].seat,
                              price: newlisted[index].price,
                              stock: newlisted[index].stock,
                              desc: newlisted[index].desc,
                              rental: newlisted[index].rental,
                              location: newlisted[index].location,
                            )),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(18.0),
                                topRight: Radius.circular(18.0)
                            ),
                            image: DecorationImage(
                              image: AssetImage(newlisted[index].imageUrl),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      )
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 8.0, right: 8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 3.0),
                          Text(
                            newlisted[index].name,
                            style: TextStyle(
                                fontSize: 12
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text: 'Rp ',
                              style: DefaultTextStyle.of(context).style,
                              children: <TextSpan>[
                                TextSpan(
                                    text: newlisted[index].price.toString(),
                                    style: TextStyle(fontWeight: FontWeight.bold)
                                )
                              ],
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.location_on,
                                color: Colors.purple,
                                size: 12.0,
                              ),
                              Text(
                                newlisted[index].location,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.purple,
                                    fontSize: 11.0
                                ),
                              )
                            ],
                          ),
                          Center(
                            child: Container(
                              padding: EdgeInsets.only(
                                left: 8.0,
                                right: 8.0,
                                top: 4.0,
                                bottom: 4.0,
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.purple,
                                  borderRadius: BorderRadius.all(Radius.circular(8.0))
                              ),
                              child: Text(
                                "Book now",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 12
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 4.0),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}



