// responsive.dart
import 'package:flutter/material.dart';

class R {
  static bool isMobile(BuildContext c) => MediaQuery.of(c).size.width < 600;
  static EdgeInsets pagePadding(BuildContext c) =>
      EdgeInsets.symmetric(horizontal: isMobile(c) ? 12 : 16, vertical: 16);
  static double cardMinHeight(BuildContext c) => isMobile(c) ? 64 : 72;
  static double titleSize(BuildContext c) => isMobile(c) ? 16 : 18;
  static double subtitleSize(BuildContext c) => isMobile(c) ? 12.5 : 13.5;
}

// Keep your MaxWidth for large screens; it simply doesn’t constrain on phones.
class MaxWidth extends StatelessWidget {
  const MaxWidth({super.key, required this.child, this.maxWidth = 720});
  final Widget child;
  final double maxWidth;

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final cap = w < maxWidth ? w : maxWidth;
    return Align(
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: cap),
        child: child,
      ),
    );
  }
}
