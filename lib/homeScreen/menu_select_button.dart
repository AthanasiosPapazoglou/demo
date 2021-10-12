import 'package:flutter/material.dart';
import '../crossAppUtilities/constants.dart';
import 'package:demo/fetch_Info.dart';

class MenuSelectionButton extends StatelessWidget {
  final String buttonText;
  final IconData providedIcon;
  final Color iconColor;
  final Color cardColor;
  final String pageID;

  MenuSelectionButton({
    required this.buttonText, 
    required this.providedIcon, 
    required this.iconColor, 
    required this.cardColor, 
    required this.pageID});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, pageID);
        },
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
      ),
    );
  }
}
