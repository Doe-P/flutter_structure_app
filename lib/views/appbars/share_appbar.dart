import 'package:flutter/material.dart';
import 'package:flutter_structure_app/views/colors/colors.dart';
import 'package:flutter_structure_app/views/styles/text_style.dart';

class ShareAppbar extends StatelessWidget with PreferredSizeWidget {
  const ShareAppbar(
      {Key? key,
      required this.title,
      this.color = blackColor,
      this.center = false,
      this.elevation = 0.0})
      : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);

  final String title;
  final Color color;
  final bool center;
  final double elevation;

  @override
  final Size preferredSize;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: color,
      elevation: elevation,
      leading: IconButton(
        onPressed: () => Navigator.of(context).pop(),
        icon: const Icon(
          Icons.arrow_back_ios_rounded,
          color: whiteColor,
        ),
      ),
      title: Text(title, style: notosansFont()),
      centerTitle: center,
    );
  }
}
