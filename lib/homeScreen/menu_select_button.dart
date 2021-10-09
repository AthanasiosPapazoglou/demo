import 'package:flutter/material.dart';
import '../crossAppUtilities/constants.dart';

class MenuSelectionButton extends StatelessWidget {
  final String buttonText;
  final IconData providedIcon;
  final Color iconColor;
  final Color cardColor;

  MenuSelectionButton({required this.buttonText, required this.providedIcon, required this.iconColor, required this.cardColor});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        decoration: BoxDecoration(
          color: cardColor,
          border: Border.all(color: Colors.black45),
          borderRadius: BorderRadius.circular(8.0),
        ),
        padding: EdgeInsets.symmetric(vertical: 14),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              buttonText,
              style: TextStyle(fontSize: kMenuButtonsTextSize),
            ),
            Icon(providedIcon, size: 30, color: iconColor,),
          ],
        ),
      ),
    );
  }
}
