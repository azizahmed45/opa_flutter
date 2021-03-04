import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:opa_flutter/app_color.dart';

class EventRegistration extends StatefulWidget {
  final Function toggleView;

  EventRegistration(this.toggleView);

  @override
  _EventRegistrationState createState() => _EventRegistrationState();
}

class _EventRegistrationState extends State<EventRegistration> {
  bool _current = false;
  bool _subscribed = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height - 180,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      widget.toggleView();
                    },
                    child: FaIcon(
                      FontAwesomeIcons.arrowLeft,
                      size: width/13.06,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Image(
              width: MediaQuery.of(context).size.width,
              height: width/1.96,
              fit: BoxFit.fill,
              image: NetworkImage(
                  'https://i.ytimg.com/vi/YShXBs0W8eQ/maxresdefault.jpg'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [1, 1, 1].map((url) {
                return Container(
                  width: 12,
                  height: 12,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current
                        ? Color.fromRGBO(0, 0, 0, 0.9)
                        : Color.fromRGBO(0, 0, 0, 0.4),
                  ),
                );
              }).toList(),
            ),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Event Details",
                        style: TextStyle(
                            fontSize: width/20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: width/28,
                      ),
                      Text(
                        "Name",
                        style: TextStyle(
                            fontSize: width/28, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "World Cup",
                        style: TextStyle(
                          fontSize: width/28,
                        ),
                      ),
                      SizedBox(
                        height: width/28,
                      ),
                      Text(
                        "Game",
                        style: TextStyle(
                            fontSize: width/28, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "PUBG",
                        style: TextStyle(
                          fontSize: width/28,
                        ),
                      ),
                      SizedBox(
                        height: width/28,
                      ),
                      Text(
                        "Date & Time",
                        style: TextStyle(
                            fontSize: width/28, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "17/12/2021 - 10:31pm",
                        style: TextStyle(
                          fontSize: width/28,
                        ),
                      ),
                      SizedBox(
                        height: width/28,
                      ),
                      Text(
                        "Platform",
                        style: TextStyle(
                            fontSize: width/28, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Facebook",
                        style: TextStyle(
                          fontSize: width/28,
                        ),
                      ),
                      SizedBox(
                        height: width/28,
                      ),
                      Text(
                        "Competition Rules",
                        style: TextStyle(
                            fontSize: width/28, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Lorem Ipsum is \nsimply dummy text ",
                        style: TextStyle(
                          fontSize: width/28,
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          if(_subscribed)
                          Container(
                            width: width/13.06,
                            height: width/13.06,
                            decoration: BoxDecoration(color: AppColors.TEAL_LITE, borderRadius: BorderRadius.circular(5)),
                            child: Align(
                              alignment: Alignment.center,
                                child: FaIcon(FontAwesomeIcons.check, size: 20,)),
                          ),
                          SizedBox(width: 10,),
                          Text(
                            "Subscribers: 5/25",
                            style: TextStyle(fontSize: width/21.77),
                          ),
                        ],
                      ),
                      if(_subscribed)
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            _subscribed = false;
                          });
                        },
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: width/13.06,
                              height: width/13.06,child: Align(
                                  alignment: Alignment.center,
                                  child: Icon(Icons.close, size: width/13.06, color: Colors.red,)),
                            ),
                            SizedBox(width: 5,),
                            Text(
                              "Unsubscribe",
                              style: TextStyle(fontSize: width/21.77),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: width/20,
            ),
            _subscribed ?

            Container(
              width: width/1.96,
              height: width/11.2,
              decoration: BoxDecoration(
                  color: AppColors.YELlOW_DARK,
                  borderRadius: BorderRadius.circular(10)),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Starts in 7d 2h 44min",
                  style: TextStyle(fontSize: width/24.5, fontWeight: FontWeight.w500, color: Colors.white),
                ),
              ),
            ):
            GestureDetector(
              onTap: (){
                setState(() {
                  _subscribed = true;
                });
              },
              child: Container(
                width: width/1.96,
                height: width/9.8,
                decoration: BoxDecoration(
                    color: AppColors.TEAL_LITE,
                    borderRadius: BorderRadius.circular(10)),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Subscribe: 200 OJ",
                    style: TextStyle(fontSize: width/24.5, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            )

            ,
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
