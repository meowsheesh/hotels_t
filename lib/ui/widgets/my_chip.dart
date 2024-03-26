import 'package:flutter/material.dart';

class MyChip extends StatelessWidget {
  const MyChip({super.key, required this.text, required this.icon, this.color, this.textColor});
  final String text;
  final Icon? icon;
  final Color? color;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, bottom: 8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(5),
            topRight: Radius.circular(5),
            bottomLeft: Radius.circular(5),
            bottomRight: Radius.circular(5),
          ),
          color: color ?? Color.fromRGBO(255, 198, 0, 0.20000000298023224),
        ),
        padding:
        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            icon ?? const SizedBox.shrink(),
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: textColor ?? Color.fromRGBO(255, 168, 0, 1),
                fontFamily: 'SFProDisplay',
                fontSize: 16,
                letterSpacing: 0,
                fontWeight: FontWeight.normal,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
