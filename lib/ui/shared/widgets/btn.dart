import 'package:flutter/material.dart';
import 'package:flutter_finance_portfolio/const.dart';
import 'package:google_fonts/google_fonts.dart';

enum BtnSeverity { primary, secondary }

class Btn extends StatelessWidget {
  const Btn({
    super.key,
    required this.label,
    required this.onPressed,
    this.icon,
    this.severity = BtnSeverity.primary,
    this.height = 58,
  });
  final String label;
  final void Function() onPressed;
  final IconData? icon;
  final BtnSeverity severity;
  final double height;

  Color _getBtnColor() {
    return severity == BtnSeverity.primary ? primaryColor : Colors.white;
  }

  Color _getTextColor() {
    return severity == BtnSeverity.primary ? Colors.white : primaryColor;
  }

  BorderSide _getBorderSide() {
    return severity == BtnSeverity.primary
        ? BorderSide.none
        : BorderSide(color: primaryColor);
  }

  @override
  Widget build(BuildContext context) {
    Text text = Text(
      label,
      style: GoogleFonts.poppins(
        color: _getTextColor(),
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ),
    );
    Widget buttonContent =
        icon != null
            ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon, color: _getTextColor()),
                const SizedBox(width: 8),
                text,
              ],
            )
            : text;

    return MaterialButton(
      onPressed: onPressed,
      color: _getBtnColor(),
      elevation: 0,
      focusElevation: 0,
      highlightElevation: 0,
      height: height,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32),
        side: _getBorderSide(),
      ),
      child: buttonContent,
    );
  }
}
