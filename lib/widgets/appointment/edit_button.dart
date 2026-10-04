import 'package:flutter/material.dart';

import '../../core/constants/app_assets.dart';
import '../../core/widgets/app_image.dart';

class EditButton extends StatelessWidget {
  const EditButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppImage(AppAssets.edit, size: 40);
  }
}