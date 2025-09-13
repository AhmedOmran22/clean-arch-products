
import 'package:flutter/material.dart';

class CustomGoogleMapsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomGoogleMapsAppBar({super.key, required this.titleText});
  final String titleText;
  @override
  Widget build(BuildContext context) {
    return AppBar(centerTitle: true, title: Text(titleText));
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
