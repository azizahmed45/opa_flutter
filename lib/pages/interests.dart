import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:opa_flutter/app_color.dart';
import 'package:opa_flutter/widgets/gradient.dart';

class Interests extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: pageGradient,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Your Interest",
              style: TextStyle(fontSize: 20),
            ),
            Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
              margin: EdgeInsets.all(20),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 180,
                      child: Column(
                        children: <Widget>[
                          Text(
                            "Your Favourite Games",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          Divider(
                            color: Colors.black,
                            height: 10,
                            thickness: 3,
                          ),
                          SizedBox(height: 20,)
                        ],
                      ),
                    ),
                    Wrap(
                      spacing: 10,
                      children: <Widget>[
                        ChoiceChip(
                          label: Text(
                            "Fifa",
                            style: TextStyle(color: Colors.black),
                          ),
                          selected: true,
                          selectedColor: AppColors.YELlOW_LITE,
                        ),
                        ChoiceChip(
                          label: Text(
                            "Fortnite",
                            style: TextStyle(color: Colors.black),
                          ),
                          selected: false,
                          selectedColor: AppColors.YELlOW_LITE,
                        ),
                        ChoiceChip(
                          label: Text(
                            "Fifa",
                            style: TextStyle(color: Colors.black),
                          ),
                          selected: false,
                          selectedColor: AppColors.YELlOW_LITE,
                        ),
                        ChoiceChip(
                          label: Text(
                            "Fortnite",
                            style: TextStyle(color: Colors.black),
                          ),
                          selected: true,
                          selectedColor: AppColors.YELlOW_LITE,
                        ),
                        ChoiceChip(
                          label: Text(
                            "Fifa",
                            style: TextStyle(color: Colors.black),
                          ),
                          selected: false,
                          selectedColor: AppColors.YELlOW_LITE,
                        ),
                        ChoiceChip(
                          label: Text(
                            "Fortnite",
                            style: TextStyle(color: Colors.black),
                          ),
                          selected: false,
                          selectedColor: AppColors.YELlOW_LITE,
                        ),
                        ChoiceChip(
                          label: Text(
                            "Fifa",
                            style: TextStyle(color: Colors.black),
                          ),
                          selected: false,
                          selectedColor: AppColors.YELlOW_LITE,
                        ),
                        ChoiceChip(
                          label: Text(
                            "Fortnite",
                            style: TextStyle(color: Colors.black),
                          ),
                          selected: false,
                          selectedColor: AppColors.YELlOW_LITE,
                        ),
                        ChoiceChip(
                          label: Text(
                            "Pubg",
                            style: TextStyle(color: Colors.black),
                          ),
                          selected: false,
                          selectedColor: AppColors.YELlOW_LITE,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
              color: Colors.white,
              margin: EdgeInsets.all(20),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 180,
                      child: Column(
                        children: <Widget>[
                          Text(
                            "You Play On",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          Divider(
                            color: Colors.black,
                            height: 10,
                            thickness: 3,
                          ),
                          SizedBox(height: 20,)
                        ],
                      ),
                    ),
                    Wrap(
                      spacing: 10,
                      children: <Widget>[
                        ChoiceChip(
                          label: Text(
                            "Fifa",
                            style: TextStyle(color: Colors.black),
                          ),
                          selected: true,
                          selectedColor: AppColors.YELlOW_LITE,
                        ),
                        ChoiceChip(
                          label: Text(
                            "PC",
                            style: TextStyle(color: Colors.black),
                          ),
                          selected: false,
                          selectedColor: AppColors.YELlOW_LITE,
                        ),
                        ChoiceChip(
                          label: Text(
                            "Tablet",
                            style: TextStyle(color: Colors.black),
                          ),
                          selected: false,
                          selectedColor: AppColors.YELlOW_LITE,
                        ),
                        ChoiceChip(
                          label: Text(
                            "Mobile",
                            style: TextStyle(color: Colors.black),
                          ),
                          selected: true,
                          selectedColor: AppColors.YELlOW_LITE,
                        ),
                        ChoiceChip(
                          label: Text(
                            "PlayStation",
                            style: TextStyle(color: Colors.black),
                          ),
                          selected: false,
                          selectedColor: AppColors.YELlOW_LITE,
                        ),
                        ChoiceChip(
                          label: Text(
                            "XBox",
                            style: TextStyle(color: Colors.black),
                          ),
                          selected: false,
                          selectedColor: AppColors.YELlOW_LITE,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
              child: GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, "/dashboard");
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text("Skip"),
                    SizedBox(width: 10,),
                    FaIcon(FontAwesomeIcons.arrowRight)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
