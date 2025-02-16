

import 'package:categories/categories/data/models/categories_model.dart';

import '../../../core/client.dart';

class CategoriesRepository {
  CategoriesRepository({required this.client});

  final ApiClient client;
  List<CategoriesModel> _categories = [];

  Future<List<CategoriesModel>> fetchCategories({bool refresh = false}) async {
    if (_categories.isNotEmpty && !refresh) {
      return _categories;
    }

    List<dynamic> items = await client.fetchCategories();
    _categories = items.map((item) => CategoriesModel.fromJson(item)).toList();
    return _categories;
  }
}
