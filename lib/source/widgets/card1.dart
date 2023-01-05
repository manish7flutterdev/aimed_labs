import 'package:aimed_labs/source/resources/colour.dart';
import 'package:aimed_labs/source/resources/spacing.dart';
import 'package:flutter/material.dart';

class Card1 extends StatelessWidget {
  const Card1({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: Spacing.CARD_HEIGHT),
      child: SizedBox.expand(
        child: Container(
          margin: EdgeInsets.all(Spacing.CARD_MARGIN),
          padding: EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
              color: Colour.CARD_COLOUR,
              borderRadius: BorderRadius.circular(Spacing.CARD_BORDER_RADIUS),
              border: Border.all(
                width: Spacing.CARD_BORDER,
                color: Colour.CARD_BORDER_COLOUR,
              )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: Spacing.FIRST_CONTAINER_HEIGHT,
                width: Spacing.FIRST_CONTAINER_WIDTH,
                color: Color.fromRGBO(196, 196, 196, 1),
              ),
              Flexible(
                child: Container(
                  height: Spacing.SECOND_CONTAINER_HEIGHT,
                  color: Color.fromRGBO(168, 216, 173, 1),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
