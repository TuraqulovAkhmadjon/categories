import 'package:categories/categories/data/models/categories_view_model.dart';
import 'package:categories/categories/data/repositories/categories_repository.dart';
import 'package:categories/categories/presentation/widgets/categories_view.dart';
import 'package:categories/categories_page_app_bar.dart';
import 'package:categories/core/client.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CategoriesView(
        vm: CategoriesViewModel(
            categoriesRepo: CategoriesRepository(client: ApiClient())),
      ),
    );
  }
}

