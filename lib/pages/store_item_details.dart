import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:opa_flutter/app_color.dart';

class StoreItemDetails extends StatefulWidget {

  final Function toggleView;

  StoreItemDetails(this.toggleView);

  @override
  _StoreItemDetailsState createState() => _StoreItemDetailsState();
}

class _StoreItemDetailsState extends State<StoreItemDetails> {

  int _count = 1;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height - 180,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              child: GestureDetector(
                onTap: () {
                  widget.toggleView();
                },
                child: FaIcon(
                  FontAwesomeIcons.arrowLeft,
                  size: width/13.06,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image(
                  height: MediaQuery.of(context).size.width / 3,
                  width: MediaQuery.of(context).size.width / 2,
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://play-lh.googleusercontent.com/JRd05pyBH41qjgsJuWduRJpDeZG0Hnb0yjf2nWqO7VaGKL10-G5UIygxED-WNOc3pg",
                      scale: 4)),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "PUBG",
              style: TextStyle(fontSize: width/15.68, fontWeight: FontWeight.w400),
            ),
            Divider(
              thickness: 1.5,
              endIndent: 50,
              indent: 50,
              color: Colors.black,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Quantity "),
                SizedBox(width: 10,),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: AppColors.YELlOW_LITE,
                      borderRadius: BorderRadius.circular(5)),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(_count.toString(), style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),),
                  ),
                ),
                SizedBox(width: 10,),
                GestureDetector(
                    onTap: (){
                      setState(() {
                        _count++;
                      });
                    },
                    child: FaIcon(FontAwesomeIcons.plus, size: 18,)),
                SizedBox(width: 10,),

                GestureDetector(
                    onTap: (){
                      setState(() {
                        _count--;
                      });
                    },child: FaIcon(FontAwesomeIcons.minus, size: 18,))
              ],
            ),
            SizedBox(height: width/7.84,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  width: width/3.92,
                  height: width/9.8,
                  decoration: BoxDecoration(color: AppColors.TEAL_LITE, borderRadius: BorderRadius.circular(10)),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("1200 OJ", style: TextStyle(fontSize: width/20, fontWeight: FontWeight.w500),),
                  ),
                ),
                Container(
                  width: width/3.92,
                  height: width/9.8,
                  decoration: BoxDecoration(color: AppColors.TEAL_LITE, borderRadius: BorderRadius.circular(10)),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("7 \$", style: TextStyle(fontSize: width/20, fontWeight: FontWeight.w500),),
                  ),
                )
              ],
            ),
            SizedBox(height: 30,),
            Divider(
              thickness: 1.5,
              color: Colors.black,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Product Description", style: TextStyle(fontSize: width/20, fontWeight: FontWeight.bold),),
                  Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy textever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic", style: TextStyle(fontSize: width/28,),),
                ],
              ),
            ),
            SizedBox(height: 50,)
          ],
        ),
      ),
    );
  }
}
