import 'package:categories/app_bar_cergulir_contener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class CategoriesPageAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CategoriesPageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: const Color(0xff1E1E1E),
      leading: IconButton(
        onPressed: () {
          GoRouter.of(context).pop();
        },
        icon: SvgPicture.asset(
          "assets/icons/backarrow.svg",
          width: 30,
          height: 14,
          fit: BoxFit.none,
        ),
      ),
      title: const Center(
        child: Text(
          "Categories",
          style: TextStyle(
            color: Color(0xffFD5D69),
            fontSize: 22,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              AppBarCergulirContener(image: "assets/icons/notification.svg"),
              SizedBox(width: 8),
              AppBarCergulirContener(image: "assets/icons/search.svg"),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
