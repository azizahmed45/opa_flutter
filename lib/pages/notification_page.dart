import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotificationPage extends StatefulWidget {
  final Function toggleView;

  NotificationPage(this.toggleView);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: height - 80,
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 30,
                ),
                GestureDetector(
                  onTap: () {
                    widget.toggleView();
                  },
                  child: FaIcon(
                    FontAwesomeIcons.arrowLeft,
                    size: width / 13.06,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Notifications",
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
          ),
          Container(
            height: height - 220,
            child: ListView.builder(
              itemCount: 50,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return NotificationItem(title: "Notify", details: "Lorem Ipsum is simply dummy text of the printing and typesettingindustry. Lorem Ipsum has been the industry's standard dummy textever since the 1500s.",);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class NotificationItem extends StatelessWidget {
  final String title;
  final String details;

  NotificationItem({this.title, this.details});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Card(elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
              Text(details)
            ],
          ),
        ),
      ),
    );
  }
}
