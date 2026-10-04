import 'package:flutter/material.dart';

class AppImage extends StatelessWidget {
  final String path;
  final double size;

  const AppImage(this.path, {super.key, this.size = 24});

  @override
  Widget build(BuildContext context) {
    return Image.asset(path, width: size, height: size, fit: BoxFit.contain);
  }
}