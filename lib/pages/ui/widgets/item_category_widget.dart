import 'package:flutter/material.dart';
import 'package:menuapp/pages/ui/general/colors.dart';
import 'package:menuapp/pages/ui/widgets/general_widget.dart';

class ItemCategoryWitget extends StatelessWidget {
  String text;
  bool select;
  Function onTap;

  ItemCategoryWitget({
    required this.text,
    required this.select,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onTap();
      },
      child: Container(
        margin: const EdgeInsets.only(right: 20.0),
        child: Column(
          children: [
            Text(
              text,
              style: TextStyle(
                fontWeight: select ? FontWeight.bold : FontWeight.normal,
                color: select
                    ? KBrandPrimaryColor
                    : KBrandPrimaryColor.withOpacity(0.6),
              ),
            ),
            divider6,
            select
                ? Container(
                    width: 20,
                    height: 4,
                    decoration: BoxDecoration(
                      color: KBrandSecondaryColor,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
