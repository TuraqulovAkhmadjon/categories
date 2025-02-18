import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class categories_bottom_nav_bar extends StatelessWidget {
  const categories_bottom_nav_bar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Container(
          width: 280,
          height: 56,
          decoration: BoxDecoration(
            color: Color(0xffFD5D69),
            borderRadius: BorderRadius.circular(33),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset("assets/svg/home.svg"),
              SvgPicture.asset("assets/svg/community.svg"),
              SvgPicture.asset("assets/svg/categories.svg"),
              SvgPicture.asset("assets/svg/profile.svg"),
            ],
          )),
    );
  }
}
