import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:menuapp/pages/ui/general/colors.dart';
import 'package:menuapp/pages/ui/widgets/general_widget.dart';

import '../general/fonts.dart';


class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.06),
                  blurRadius: 12.0,
                  offset: const Offset(4, 4),
                ),
              ],
            ),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "Buscar producto",
                hintStyle: TextStyle(
                  fontSize: textNormalSize,
                  color: KBrandPrimaryColor.withOpacity(0.6),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14.0),
                  borderSide: BorderSide.none,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ),
        dividerWidth10,
        Container(
          width: 56,
          height: 56,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14.0),
            color: KBrandSecondaryColor,
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                KBrandSecondaryColor,
                Color(0xff12DBB0)
              ],
            ),
            boxShadow: [
              BoxShadow(
                color: KBrandSecondaryColor.withOpacity(0.3),
                offset: const Offset(5, 5),
                blurRadius: 12.0,
              ),
            ],
          ),
          child: SvgPicture.asset(
            'assets/icons/search.svg',
            color: Colors.white,
            height: 24.0,
            fit: BoxFit.scaleDown,
          ),
        ),
      ],
    );
  }
}
