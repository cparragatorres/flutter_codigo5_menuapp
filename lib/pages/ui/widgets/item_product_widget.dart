import 'package:flutter/material.dart';
import 'package:menuapp/pages/ui/general/colors.dart';
import 'package:menuapp/pages/ui/widgets/general_widget.dart';
import 'package:menuapp/pages/ui/widgets/text_widget.dart';

class ItemProductWidget extends StatelessWidget {
  const ItemProductWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 12.0,
            offset: const Offset(4, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(14.0),
            child: Image.network(
              "https://knpr.org/sites/default/files/public/styles/detail_small/public/images/article/octopus_015b.jpg?itok=lWSF96aQ",
              height: 120,
              width: 120,
              fit: BoxFit.cover,
            ),
          ),
          dividerWidth6,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Pulpo frito",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: KBrandPrimaryColor,
                  ),
                ),Text(
                  "S/. 30.00",
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                    color: KBrandPrimaryColor,
                  ),
                ),
                divider3,
                TextNormal(
                  text: "Los platos de taco, hechos con tortillas de maíz caseras, amplían el cuadro de burrito con opciones adicionales de pescado, barbacoa de res y pulpo estofado.",
                  color: KBrandPrimaryColor.withOpacity(0.5),
                  maxLines: 3,
                ),
                divider3,
                Row(
                  children: [
                    Row(
                      children: List.generate(
                        1,
                            (index) => Icon(
                          Icons.star,
                          size: 14.0,
                          color: Color(0xffFDBF4F),
                        ),
                      ),
                    ),
                    dividerWidth6,
                    Text(
                      "4.0",
                      style: TextStyle(
                        fontSize: 12.0,
                        color: KBrandPrimaryColor,
                      ),
                    ),
                    dividerWidth3,
                    Text("|"),
                    dividerWidth3,
                    Text(
                      "20 min",
                      style: TextStyle(
                        fontSize: 12.0,
                        color: KBrandPrimaryColor,
                      ),
                    ),
                    dividerWidth3,
                    Text("|"),
                    dividerWidth3,
                    Text(
                      "Porciones: 1",
                      style: TextStyle(
                        fontSize: 12.0,
                        color: KBrandPrimaryColor,
                      ),
                    ),
                    dividerWidth3,
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
