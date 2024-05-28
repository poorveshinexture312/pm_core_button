import 'package:flutter/material.dart';



class PMCoreButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isEnabled;
  final Color? fillColor;
  final Color? borderColor;
  final Color? textColor;
  final double? radius;
  final double? borderWidth;
  final String? fontFamily;
  final OutlinedBorder? shape;

  const PMCoreButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.isEnabled = true,
    this.fillColor,
    this.borderColor,
    this.textColor,
    this.radius,
    this.borderWidth,
    this.fontFamily,
    this.shape,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isEnabled ? onPressed : null,
      style: ButtonStyle(
        backgroundColor: fillColor != null
            ? MaterialStateProperty.all<Color>(fillColor!)
            : null,
        side: borderColor != null && borderWidth != null
            ? MaterialStateProperty.all<BorderSide>(
          BorderSide(
            color: borderColor!,
            width: borderWidth!,
          ),
        )
            : null,
        shape: shape != null
            ? MaterialStateProperty.all<OutlinedBorder>(shape!)
            : null,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontFamily: fontFamily,
        ),
      ),
    );
  }
}
