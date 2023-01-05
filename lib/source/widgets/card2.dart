import 'package:aimed_labs/source/resources/colour.dart';
import 'package:aimed_labs/source/resources/spacing.dart';
import 'package:flutter/material.dart';

class Card2 extends StatelessWidget {
  const Card2({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: Spacing.CARD_HEIGHT),
      child: SizedBox.expand(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.all(Spacing.CARD_MARGIN),
              padding: EdgeInsets.symmetric(horizontal: Spacing.CARD_PADDING),
              decoration: BoxDecoration(
                  color: Colour.CARD_COLOUR,
                  borderRadius:
                      BorderRadius.circular(Spacing.CARD_BORDER_RADIUS),
                  border: Border.all(
                    width: Spacing.CARD_BORDER,
                    color: Colour.CARD_BORDER_COLOUR,
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    child: Container(
                      height: Spacing.SECOND_CONTAINER_HEIGHT,
                      color: Colour.SECOND_CONTAINER_COLOUR,
                    ),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: Spacing.FIRST_CONTAINER_HEIGHT,
                width: Spacing.FIRST_CONTAINER_WIDTH,
                color: Colour.FIRST_CONTAINER_COLOUR,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
