import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:menuapp/pages/ui/general/colors.dart';
import 'package:menuapp/pages/ui/widgets/general_widget.dart';
import 'package:menuapp/pages/ui/widgets/search_widget.dart';
import 'package:menuapp/pages/ui/widgets/text_widget.dart';

import '../ui/general/fonts.dart';

class HomeCustomerPage extends StatefulWidget {
  const HomeCustomerPage({Key? key}) : super(key: key);

  @override
  State<HomeCustomerPage> createState() => _HomeCustomerPageState();
}

class _HomeCustomerPageState extends State<HomeCustomerPage> {
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
                const Text(
                  "Bienvenidos",
                ),
                H1(
                  text: "El Pez Gordo",
                ),
                divider12,
                SearchWidget(),
                divider12,
                Text("Promociones"),
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
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "Cevichito",
                                      style: TextStyle(
                                        color: KBrandPrimaryColor,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
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
                                            5,
                                            (index) => Icon(
                                              Icons.star,
                                              size: 14.0,
                                              color: Color(0xffFDBF4F),
                                            ),
                                          ),
                                        ),
                                        dividerWidth6,
                                        Text("4.0"),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
