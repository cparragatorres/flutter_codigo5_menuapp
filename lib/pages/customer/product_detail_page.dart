import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:menuapp/pages/ui/general/colors.dart';
import 'package:menuapp/pages/ui/widgets/text_widget.dart';

import '../ui/widgets/general_widget.dart';

class ProductDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50.0),
                    bottomLeft: Radius.circular(50.0),
                  ),
                  child: Image.network(
                    "https://i.pinimg.com/originals/91/c9/34/91c9347ba2701c13f9d6cec2821482c4.jpg",
                    height: height * 0.45,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned.fill(
                  bottom: -25.0,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      constraints: BoxConstraints(
                        maxWidth: width * 0.8,
                        minWidth: width * 0.8,
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 14.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.06),
                            offset: const Offset(0, 5),
                            blurRadius: 12.0,
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Chupe de camarones",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: KBrandPrimaryColor,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          divider3,
                          TextNormal(text: "Plato de fondo"),
                          divider3,
                          Row(
                            mainAxisSize: MainAxisSize.min,
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
                                ),
                              ),
                              dividerWidth3,
                              Text("|"),
                              dividerWidth3,
                              Text(
                                "20 min",
                                style: TextStyle(
                                  fontSize: 12.0,
                                ),
                              ),
                              dividerWidth3,
                              Text("|"),
                              dividerWidth3,
                              Text(
                                "Porciones: 1",
                                style: TextStyle(
                                  fontSize: 12.0,
                                ),
                              ),
                              dividerWidth3,
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            divider40,
            divider12,
            TextNormal(text: "Descripción"),
            TextNormal(text: "Del mejor chupe de camarones que alguna vez comerás. Vamos todos a mudarnos a Perú, ya. Y a los que ya están allá: felicitaciones por la belleza en la que viven."),
          ],
        ),
      ),
    );
  }
}
