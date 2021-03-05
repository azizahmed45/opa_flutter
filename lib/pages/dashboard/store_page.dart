import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:opa_flutter/app_color.dart';
import 'package:opa_flutter/pages/store_item_details.dart';

class StorePage extends StatefulWidget {
  @override
  _StorePageState createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {

  bool _showDetails = false;

  void toggleGetSpin() {
    setState(() {
      _showDetails = !_showDetails;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: 55,
                child: Scrollbar(
                  isAlwaysShown: true,
                  child: ListView.builder(
                    padding: EdgeInsets.only(left: 10),
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 2,),
                        child: ChoiceChip(
                          label: Text(
                            "Fifa ${index}",
                            style: TextStyle(color: Colors.black),
                          ),
                          selected: index == 1,
                          selectedColor: AppColors.YELlOW_LITE,
                          disabledColor: AppColors.TEAL_LITE,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Divider(
                thickness: 1.5,
                color: Colors.black,
                indent: 20,
                endIndent: 20,
              ),
              Container(
                height: MediaQuery.of(context).size.height - 255,
                width: MediaQuery.of(context).size.width,
                child: Scrollbar(
                  isAlwaysShown: true,
                  child: GridView.builder(
                      itemCount: 30,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          // childAspectRatio: 3 / 2
                      ),
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.all(2),
                          margin: EdgeInsets.all(2),
                          // color: Colors.teal,
                          child: GestureDetector(
                            onTap: (){
                              setState(() {
                                _showDetails = true;
                              });
                            },
                            child: Column(
                              children: <Widget>[
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image(
                                      height: MediaQuery.of(context).size.width / 7 ,
                                      width: MediaQuery.of(context).size.width / 4.5,
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          "https://play-lh.googleusercontent.com/JRd05pyBH41qjgsJuWduRJpDeZG0Hnb0yjf2nWqO7VaGKL10-G5UIygxED-WNOc3pg",
                                          scale: 4)),
                                ),
                                SizedBox(height: 5,),
                                Text("PUBG MOBILE", style: TextStyle(fontSize: 12,),),
                                SizedBox(height: 5,),
                                Text("300 OJ | 2\$", style: TextStyle(fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ),
            ],
          ),
          if(_showDetails)  StoreItemDetails(toggleGetSpin)
        ],
      ),
    );
  }
}
