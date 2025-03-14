
import 'package:flutter/material.dart';

class MainCategoriesItem extends StatelessWidget {
  const MainCategoriesItem({
    super.key,
    required this.title,
    required this.image,
  });

  final String? title, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title!,
          style: TextStyle(
            color: Theme.of(context).colorScheme.onPrimary,
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(13),
          child: Image.network(
            image!,
            width: 356,
            height: 148,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
