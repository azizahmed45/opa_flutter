import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../event_registration.dart';

class ComPage extends StatefulWidget {
  @override
  _ComPageState createState() => _ComPageState();
}

class _ComPageState extends State<ComPage> {

  bool _showRegisterPage = false;

  void toggleGetSpin() {
    setState(() {
      _showRegisterPage = !_showRegisterPage;
    });
  }


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: MediaQuery.of(context).size.height - 180,
      width: MediaQuery.of(context).size.width,
      child:
          Stack(
            children: <Widget>[
              Scrollbar(
        isAlwaysShown: true,
        child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: width/35, horizontal: width/19.6),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          _showRegisterPage = true;
                        });
                      },
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image(
                              width: width/1.2,
                              height: width/2.3,
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  'https://i.ytimg.com/vi/YShXBs0W8eQ/maxresdefault.jpg'),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              alignment: Alignment.center,
                              height: width/13.06,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [
                                    Colors.white10,
                                    Colors.white70,
                                    Colors.white,
                                    Colors.white70,
                                    Colors.white10
                                  ],
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight)),
                              child: Text(
                                "REGISTRATION",
                                style: TextStyle(fontSize: width/22),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
      ),
              if(_showRegisterPage)  EventRegistration(toggleGetSpin)
            ],
          ),
    );
  }
}
