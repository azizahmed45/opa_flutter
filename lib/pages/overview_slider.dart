import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:opa_flutter/widgets/gradient.dart';

class OverviewSlider extends StatefulWidget {
  @override
  _OverviewSliderState createState() => _OverviewSliderState();
}

class _OverviewSliderState extends State<OverviewSlider> {
  var list = [
    CarouselItem(),
    CarouselItem(),
    CarouselItem(),
  ];

  var _current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: pageGradient,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
        child: Center(
          child: Column(
            children: <Widget>[
              CarouselSlider(
                  items: list,
                  options: CarouselOptions(
                    height: 550,
                    viewportFraction: 1,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    },
                    scrollDirection: Axis.horizontal,
                  )),
              Stack(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: list.map((url) {
                      int index = list.indexOf(url);
                      return Container(
                        width: 18,
                        height: 18,
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 8.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _current == index
                              ? Color.fromRGBO(0, 0, 0, 0.9)
                              : Color.fromRGBO(0, 0, 0, 0.4),
                        ),
                      );
                    }).toList(),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 18,
                          margin: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 8.0),
                          child: Text("Skip"),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                            onTap: (){
                              Navigator.pushNamed(context, "/interests");
                            },
                            child: FaIcon(FontAwesomeIcons.arrowRight))
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CarouselItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            "HELLO",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
          ),
          Text(
            "Gamer",
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(
            height: 50,
          ),
          Image.asset("assets/images/others/logo.png"),
          SizedBox(
            height: 20,
          ),
          Text(
            "Lorem Ipsum",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
          ),
          Flexible(
            child: Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic",
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
