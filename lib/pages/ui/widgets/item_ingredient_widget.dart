import 'package:flutter/material.dart';
import 'package:menuapp/pages/ui/widgets/text_widget.dart';

class ItemIngredientWidget extends StatelessWidget {

  String text;

  ItemIngredientWidget({
    required this.text,
});


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: 12.0, vertical: 10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 12.0,
            offset: const Offset(4, 4),
          ),
        ],
      ),
      child: TextNormal(
        text: text,
      ),
    );
  }
}
