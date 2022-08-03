import 'package:flutter/material.dart';
import 'package:menuapp/pages/ui/general/colors.dart';
import 'package:menuapp/pages/ui/widgets/general_widget.dart';
import 'package:menuapp/pages/ui/widgets/item_category_widget.dart';
import 'package:menuapp/pages/ui/widgets/search_widget.dart';
import 'package:menuapp/pages/ui/widgets/text_widget.dart';

import '../ui/general/fonts.dart';

class HomeCustomerPage extends StatefulWidget {
  const HomeCustomerPage({Key? key}) : super(key: key);

  @override
  State<HomeCustomerPage> createState() => _HomeCustomerPageState();
}

class _HomeCustomerPageState extends State<HomeCustomerPage> {
  int indexCategory = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextNormal(
                  text: "Bienvenidos",
                ),
                H1(
                  text: "El Pez Gordo",
                ),
                divider12,
                SearchWidget(),
                divider12,
                TextNormal(
                  text: "Promociones",
                ),
                divider12,
                SizedBox(
                  height: 260.0,
                  child: PageView.builder(
                    itemCount: 3,
                    controller: PageController(
                      initialPage: 0,
                      viewportFraction: 0.8,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: const EdgeInsets.only(right: 16.0),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(14.0),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              "https://avatars.mds.yandex.net/i?id=8aff467d415a5384b6ff3439dca1f381-5648031-images-thumbs&n=13",
                            ),
                          ),
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                margin: const EdgeInsets.all(14.0),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 6.0,
                                  vertical: 4.0,
                                ),
                                decoration: BoxDecoration(
                                    color: KBrandSecondaryColor,
                                    borderRadius: BorderRadius.circular(8.0)),
                                child: Text(
                                  "50% Desc",
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                margin: const EdgeInsets.symmetric(
                                  vertical: 18.0,
                                  horizontal: 14.0,
                                ),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0,
                                  vertical: 10.0,
                                ),
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.88),
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 6.0, vertical: 0.0),
                                      decoration: BoxDecoration(
                                        color: KBrandSecondaryColor,
                                        borderRadius:
                                            BorderRadius.circular(6.0),
                                      ),
                                      child: Text(
                                        "Plato de fondo",
                                        style: TextStyle(
                                            color: KBrandPrimaryColor),
                                      ),
                                    ),
                                    divider3,
                                    Text(
                                      "Cevichito",
                                      style: TextStyle(
                                        color: KBrandPrimaryColor,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    divider3,
                                    // Text(
                                    //   "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit",
                                    //   style: TextStyle(
                                    //     color: KBrandPrimaryColor.withOpacity(0.5),
                                    //     fontSize: 14.0,
                                    //     fontWeight: FontWeight.normal,
                                    //   ),
                                    // ),
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
                          ],
                        ),
                      );
                    },
                  ),
                ),
                divider20,
                TextNormal(
                  text: "Categorias",
                  color: null,
                ),
                divider12,
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  child: Row(
                    children: [
                      ItemCategoryWitget(
                        text: "Todos",
                        select: indexCategory == 0,
                        onTap: () {
                          indexCategory = 0;
                          setState(() {});
                        },
                      ),
                      ItemCategoryWitget(
                        text: "Platos de fondo",
                        select: indexCategory == 1,
                        onTap: () {
                          indexCategory = 1;
                          setState(() {});
                        },
                      ),
                      ItemCategoryWitget(
                        text: "Bebidas",
                        select: indexCategory == 2,
                        onTap: () {
                          indexCategory = 2;
                          setState(() {});
                        },
                      ),
                      ItemCategoryWitget(
                        text: "Entradas",
                        select: indexCategory == 3,
                        onTap: () {
                          indexCategory = 3;
                          setState(() {});
                        },
                      ),
                      ItemCategoryWitget(
                        text: "Postres",
                        select: indexCategory == 4,
                        onTap: () {
                          indexCategory = 4;
                        },
                      ),
                    ],
                  ),
                ),
                divider20,
                Container(
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
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              "Pulpo frito",
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600,
                                color: KBrandPrimaryColor,
                              ),
                            ),
                            TextNormal(
                              text: "Los platos de taco, hechos con tortillas de maíz caseras, amplían el cuadro de burrito con opciones adicionales de pescado, barbacoa de res y pulpo estofado.",
                              color: KBrandPrimaryColor.withOpacity(0.5),
                              maxLines: 3,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
