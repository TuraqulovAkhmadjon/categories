import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarCergulirContener extends StatelessWidget {
  const AppBarCergulirContener({
    super.key,
    required this.image,
  });

  final image;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 28,
        height: 28,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(14)),
        child: SvgPicture.asset(
          image,
          fit: BoxFit.none,
        ));
  }
}
