import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final bool showBottom;
  final List<String>? categories;
  final VoidCallback? onBackPressed;
  final VoidCallback? onSearchPressed;
  final VoidCallback? onCartPressed;
  final Color? backgroundColor; // Optional background color

  const CustomAppBar({
    super.key,
    this.title,
    this.showBottom = false,
    this.categories,
    this.onBackPressed,
    this.onSearchPressed,
    this.onCartPressed,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    final Color iconColor = showBottom ? Colors.black.withValues(alpha: 0.7) : Colors.white;
    return AppBar(
      backgroundColor: backgroundColor ?? Colors.white,
      leadingWidth: 65,
      leading: IconButton(
        onPressed: onBackPressed ?? ()=>Navigator.pop(context),
        icon: SvgPicture.asset(
          "assets/icons/back.svg",//constants
          width: 18,
          height: 18,
          colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
        ),
      ),
      actions: [
        IconButton(
          onPressed: onSearchPressed ??() {},
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
            colorFilter:  ColorFilter.mode(iconColor, BlendMode.srcIn),
            width: 24,
            height: 24,
            fit: BoxFit.contain,
          ),
        ),IconButton(
          onPressed: onCartPressed ?? () {},
          icon: SvgPicture.asset(
            "assets/icons/cart.svg",
            colorFilter:  ColorFilter.mode(iconColor, BlendMode.srcIn),
            width: 24,
            height: 24,
            fit: BoxFit.contain,

          ),
        ),
      ],
      bottom: showBottom && categories != null//pass
          ? PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Text(
                title??"",
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            TabBar(
                padding:const EdgeInsets.symmetric(horizontal: 8.0) ,
                labelColor: Colors.black,
                indicatorColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                dividerHeight: 0,
                indicator: const UnderlineTabIndicator(
                  borderSide: BorderSide(width: 3.0, color: Colors.black),
                  insets: EdgeInsets.only(right: 28.0),
                ),
                tabs: categories!.map((category) => Tab(text: category)).toList(),
              ),

          ],
        ),
      )
          : null,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(showBottom ? 120.0 : 56.0);
}
