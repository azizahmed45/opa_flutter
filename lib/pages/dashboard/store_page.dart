import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:opa_flutter/app_color.dart';

class StorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: <Widget>[
          Container(
            height: 30,
            child: Scrollbar(
              isAlwaysShown: true,
              child: ListView.builder(
                padding: EdgeInsets.only(left: 10),
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 2),
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
          SizedBox(height: 10,),
          Container(
            height: MediaQuery.of(context).size.height - 225,
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
                      child: Column(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image(
                                height: MediaQuery.of(context).size.width / 3 - 5*6 / 0.6,
                                width: MediaQuery.of(context).size.width / 3 - 5*6,
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://play-lh.googleusercontent.com/JRd05pyBH41qjgsJuWduRJpDeZG0Hnb0yjf2nWqO7VaGKL10-G5UIygxED-WNOc3pg",
                                    scale: 4)),
                          ),
                          Text("PUBG MOBILE", style: TextStyle(fontWeight: FontWeight.bold),),
                          Text("300 OJ | 2\$"),
                        ],
                      ),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
