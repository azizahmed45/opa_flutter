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
                itemCount: 30,
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
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                    ),
                  );
                },
              ),
            ),
          ),
          // Container(
          //   height: MediaQuery.of(context).size.height,
          //   width: MediaQuery.of(context).size.width,
          //   child: GridView.builder(gridDelegate: null, itemBuilder: null),
          // )
        ],
      ),
    );
  }
}
