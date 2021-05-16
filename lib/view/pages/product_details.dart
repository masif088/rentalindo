import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rentalindo/model/products_model.dart';

class Details extends StatefulWidget {
  final int id;
  final String category;
  final String name;
  final String brand;
  final String imageUrl;
  final String color;
  final String transmission;
  final String fuel;
  final int cc;
  final int seat;
  final int year;
  final int price;
  final int stock;
  final String desc;
  final String rental;
  final String location;

  Details(
      {this.id,
        this.category,
      this.name,
        this.brand,
      this.imageUrl,
      this.color,
      this.transmission,
      this.fuel,
      this.cc,
      this.seat,
      this.year,
      this.price,
      this.stock,
      this.desc,
      this.rental,
      this.location});

  @override
  _DetailsState createState() => _DetailsState(
        id: id,
        category: category,
        name: name,
        brand: brand,
        imageUrl: imageUrl,
        color: color,
        transmission: transmission,
        fuel: fuel,
        cc: cc,
        seat: seat,
        year: year,
        price: price,
        stock: stock,
        desc: desc,
        rental: rental,
        location: location,
      );
}

class _DetailsState extends State<Details> {
  final int id;
  final String category;
  final String name;
  final String brand;
  final String imageUrl;
  final String color;
  final String transmission;
  final String fuel;
  final int cc;
  final int seat;
  final int year;
  final int price;
  final int stock;
  final String desc;
  final String rental;
  final String location;

  _DetailsState(
      {this.id,
        this.category,
      this.name,
        this.brand,
      this.imageUrl,
      this.color,
      this.transmission,
      this.fuel,
      this.cc,
      this.seat,
      this.year,
      this.price,
      this.stock,
      this.desc,
      this.rental,
      this.location});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  leading: IconButton(
                    icon: Icon(CupertinoIcons.back),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  actions: <Widget>[
                    IconButton(
                      icon: Icon(Icons.share),
                      onPressed: () {},
                    ),
                  ],
                  expandedHeight: 300.0,
                  backgroundColor: Colors.purple,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Image.asset(
                      imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SliverList(
                  delegate: SliverChildListDelegate([
                    _ProductName(name: name),
                    _ProductLocation(
                      location: location,
                    ),
                    _ProductDetails(
                        color: color,
                        transmission: transmission,
                        fuel: fuel,
                        cc: cc,
                        seat: seat,
                        year: year,
                        stock: stock,
                        price: price),
                    _ProductDescriptions(desc: desc),
                    _RentalDetails(
                      rental: rental,
                      location: location,
                    ),
                    _MoreFromRental(),
                    Watermark()
                  ]),
                )
              ],
            ),
            floatingActionButton: InkWell(
                child: Container(
              width: 158,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  InkWell(
                    child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 8.0),
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                            border:
                                Border.all(color: Colors.amberAccent, width: 2),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 8.0,
                                  spreadRadius: 4.0,
                                  offset: Offset(1.0, 8.0))
                            ]),
                        child: Center(
                          child: Icon(Icons.bookmark),
                        )),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  InkWell(
                    child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 8.0),
                        height: 50.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 8.0,
                                  spreadRadius: 4.0,
                                  offset: Offset(1.0, 8.0))
                            ]),
                        child: Center(
                            child: Text(
                          "Book",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white),
                        ))),
                  )
                ],
              ),
            ))));
  }
}

class _ProductName extends StatelessWidget {
  final String name;

  _ProductName({this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.0, top: 16.0, bottom: 8.0),
      child: Container(
        child: Text(
          name,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
      ),
    );
  }
}

class _ProductLocation extends StatelessWidget {
  final String location;

  _ProductLocation({this.location});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 16.0, bottom: 16.0),
        child: Row(
          children: <Widget>[
            Icon(
              Icons.location_on,
              color: Colors.purple,
            ),
            SizedBox(width: 8.0),
            Text(
              location,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                  fontSize: 16),
            )
          ],
        ));
  }
}

class _ProductDetails extends StatelessWidget {
  final String color;
  final String transmission;
  final String fuel;
  final int cc;
  final int seat;
  final int year;
  final int stock;
  final int price;

  _ProductDetails({
    this.color,
    this.transmission,
    this.fuel,
    this.cc,
    this.seat,
    this.year,
    this.stock,
    this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 8.0, bottom: 16.0, right: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                height: 80.0,
                width: 80.0,
                decoration: BoxDecoration(
                    color: Color(0xFFf5e1f4),
                    borderRadius: BorderRadius.all(Radius.circular(16.0))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    SizedBox(height: 8.0),
                    Icon(Icons.brush),
                    Text("Warna"),
                    Text(
                      color,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8.0),
                  ],
                ),
              ),
              Container(
                height: 80.0,
                width: 80.0,
                decoration: BoxDecoration(
                    color: Color(0xFFf5e1f4),
                    borderRadius: BorderRadius.all(Radius.circular(16.0))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    SizedBox(height: 8.0),
                    Icon(Icons.polymer),
                    Text("Transmisi"),
                    Text(
                      transmission,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8.0),
                  ],
                ),
              ),
              Container(
                height: 80.0,
                width: 80.0,
                decoration: BoxDecoration(
                    color: Color(0xFFf5e1f4),
                    borderRadius: BorderRadius.all(Radius.circular(16.0))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    SizedBox(height: 8.0),
                    Icon(Icons.local_gas_station),
                    Text("BBM"),
                    Text(
                      fuel,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8.0),
                  ],
                ),
              ),
              Container(
                height: 80.0,
                width: 80.0,
                decoration: BoxDecoration(
                    color: Color(0xFFf5e1f4),
                    borderRadius: BorderRadius.all(Radius.circular(16.0))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    SizedBox(height: 8.0),
                    Icon(Icons.closed_caption),
                    Text("CC"),
                    Text(
                      cc.toString(),
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8.0),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.0, bottom: 16.0, right: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                height: 80.0,
                width: 80.0,
                decoration: BoxDecoration(
                    color: Color(0xFFf5e1f4),
                    borderRadius: BorderRadius.all(Radius.circular(16.0))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    SizedBox(height: 8.0),
                    Icon(Icons.airline_seat_recline_normal),
                    Text("Kursi"),
                    Text(
                      seat.toString(),
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8.0),
                  ],
                ),
              ),
              Container(
                height: 80.0,
                width: 80.0,
                decoration: BoxDecoration(
                    color: Color(0xFFf5e1f4),
                    borderRadius: BorderRadius.all(Radius.circular(16.0))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    SizedBox(height: 8.0),
                    Icon(Icons.calendar_today),
                    Text("Tahun"),
                    Text(
                      year.toString(),
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8.0),
                  ],
                ),
              ),
              Container(
                height: 80.0,
                width: 80.0,
                decoration: BoxDecoration(
                    color: Color(0xFFf5e1f4),
                    borderRadius: BorderRadius.all(Radius.circular(16.0))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    SizedBox(height: 8.0),
                    Icon(Icons.equalizer),
                    Text("Stock"),
                    Text(
                      stock.toString(),
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8.0),
                  ],
                ),
              ),
              Container(
                height: 80.0,
                width: 80.0,
                decoration: BoxDecoration(
                    color: Color(0xFFf5e1f4),
                    borderRadius: BorderRadius.all(Radius.circular(16.0))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(height: 8.0),
                    Icon(Icons.attach_money),
                    Text("Price/day"),
                    Text(
                      price.toString(),
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8.0),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class _ProductDescriptions extends StatelessWidget {
  final String desc;

  _ProductDescriptions({this.desc});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 8.0,
          width: double.infinity,
          color: Color(0x11555555),
        ),
        Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  "Product Description",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Text(
                  desc,
                ),
              ],
            )),
      ],
    );
  }
}

class _RentalDetails extends StatelessWidget {
  final String rental;
  final String location;

  _RentalDetails({this.location, this.rental});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 8.0,
          width: double.infinity,
          color: Color(0x11555555),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
          child: Row(
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.purple,
              ),
              SizedBox(
                width: 16.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    rental,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text(
                    location,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.purple,
                        fontSize: 16),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _MoreFromRental extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 8.0,
          width: double.infinity,
          color: Color(0x11555555),
        ),
        Padding(
            padding: EdgeInsets.only(left: 16.0, top: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  "More From This Rental",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(
                  height: 16.0,
                ),
              ],
            )),
        Container(
          height: 209.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: products.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.only(left: 16.0, bottom: 16.0),
                child: Container(
                  width: 125.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    border: Border.all(color: Colors.black12, width: 1.0),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0x10000000),
                          offset: Offset(0.0, 4.0),
                          blurRadius: 5.0,
                          spreadRadius: 1.0)
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Expanded(
                          child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Details(
                                      id: products[index].id,
                                      category: products[index].category,
                                      name: products[index].name,
                                      brand: products[index].brand,
                                      imageUrl: products[index].imageUrl,
                                      color: products[index].color,
                                      transmission:
                                          products[index].transmission,
                                      fuel: products[index].fuel,
                                      cc: products[index].cc,
                                      seat: products[index].seat,
                                      year: products[index].year,
                                      price: products[index].price,
                                      stock: products[index].stock,
                                      desc: products[index].desc,
                                      location: products[index].location,
                                      rental: products[index].rental,
                                    )),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(18.0),
                                topRight: Radius.circular(18.0)),
                            image: DecorationImage(
                              image: AssetImage(products[index].imageUrl),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      )),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 8.0, right: 8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 3.0),
                              Text(
                                products[index].name,
                                style: TextStyle(fontSize: 12),
                              ),
                              RichText(
                                text: TextSpan(
                                  text: 'Rp ',
                                  style: DefaultTextStyle.of(context).style,
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: products[index].price.toString(),
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold))
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
                                    "Lokasi",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.purple,
                                        fontSize: 11.0),
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
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(8.0))),
                                  child: Text(
                                    "Book now",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 12),
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
        )
      ],
    );
  }
}

class Watermark extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 8.0,
          width: double.infinity,
          color: Color(0x11555555),
        ),
        Padding(
            padding: EdgeInsets.symmetric(vertical: 32.0, horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  "© Rentalindo by TheA™",
                  style: TextStyle(color: Colors.black12),
                ),
              ],
            )),
      ],
    );
  }
}
