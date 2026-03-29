import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BasicAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BasicAppBar({
    super.key,
    this.title,
    this.leading,
    this.actions,
    this.centerTitle = true,
  });

  final Widget? title;
  final Widget? leading;
  final bool centerTitle;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: centerTitle,
      elevation: 0,
      leadingWidth: 70.w,
      backgroundColor: Colors.transparent,
      scrolledUnderElevation: 0,
      title: title,
      leading: leading,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
