import 'package:flutter/material.dart';
import 'package:rentalindo/model/products_model.dart';
import 'package:rentalindo/view/pages/product_details.dart';

class SavedList extends StatefulWidget {
  @override
  _SavedListState createState() => _SavedListState();
}

class _SavedListState extends State<SavedList> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          backgroundColor: Colors.purple,
          centerTitle: false,
          snap: true,
          pinned: true,
          floating: true,
          title: Text("Saved Listing"),
        ),
        SliverPadding(
          padding: EdgeInsets.all(16.0),
          sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 2/3,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0
              ),
              delegate: SliverChildBuilderDelegate(
                    (context, int index){
                    return Container(
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
                                      id: saved[index].id,
                                      category: saved[index].category,
                                      name: saved[index].name,
                                      brand: saved[index].brand,
                                      imageUrl: saved[index].imageUrl,
                                      color: saved[index].color,
                                      transmission: saved[index].transmission,
                                      fuel: saved[index].fuel,
                                      cc: saved[index].cc,
                                      seat: saved[index].seat,
                                      year: saved[index].year,
                                      price: saved[index].price,
                                      stock: saved[index].stock,
                                      desc: saved[index].desc,
                                      rental: saved[index].rental,
                                      location: saved[index].location,
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
                                      image: AssetImage(saved[index].imageUrl),
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
                                    saved[index].name,
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
                                            text: saved[index].price.toString(),
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
                                        saved[index].location,
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
                    );
                  },
                  childCount: saved.length
              )
          ),
        )
      ],
    );
  }
}

