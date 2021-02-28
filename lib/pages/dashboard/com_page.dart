import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ComPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 180,
      width: MediaQuery.of(context).size.width,
      child:
          // Text("aziz")
          Scrollbar(
        isAlwaysShown: true,
        child: ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image(
                        width: 350,
                        height: 180,
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            'https://i.ytimg.com/vi/YShXBs0W8eQ/maxresdefault.jpg'),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        alignment: Alignment.center,
                        height: 30,
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
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}
