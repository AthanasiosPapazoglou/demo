import 'package:flutter/material.dart';
import '../crossAppUtilities/constants.dart';

class MenuSelectionButton extends StatelessWidget {

  final String buttonText;

  MenuSelectionButton({this.buttonText = 'Please Provide a Text'});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(kMenuButtonsSpacing),
          child: Text(
            buttonText,
            style: TextStyle(
              fontSize: kMenuButtonsTextSize,
            ),
          ),
        ),
      ],
    );
  }
}