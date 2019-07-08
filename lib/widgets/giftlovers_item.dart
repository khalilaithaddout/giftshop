import 'package:flutter/material.dart';
import 'package:giftshop/util/const.dart';

class giftloversItem extends StatefulWidget {
  final String img;
  final String name;
  final String email;
  final String stars;


  giftloversItem({
    Key key,
    @required this.img,
    @required this.name,
    @required this.email,
    @required this.stars,
  })
      : super(key: key);

  @override
  _TrendingItemState createState() => _TrendingItemState();
}

class _TrendingItemState extends State<giftloversItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 0, bottom: 0),
      child: Container(
        height: MediaQuery.of(context).size.height/7,
        width: MediaQuery.of(context).size.width,
        child: Card(
          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10.0)),
          elevation: 3.0,
          child: Column(
            children: <Widget>[
              new Divider(
                height: 10.0,
              ),
              new ListTile(
                leading: new CircleAvatar(
                      backgroundImage: AssetImage(
                        "${widget.img}",
                      ),
                      radius: 25.0,
                    ),
                title: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                            Text(
                              " ${widget.name} ",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              "${widget.stars} gifts",
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                  ],
                ),
                subtitle: new Container(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: new Text(
                    "${widget.email}",
                    style: new TextStyle(color: Colors.grey, fontSize: 10.0),
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
