

import 'package:categories/categories/presentation/widgets/main_categoreis_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../data/models/categories_view_model.dart';
import 'category_item.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key, required this.vm});

  final CategoriesViewModel vm;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: vm,
      builder: (context, _) {
        return Scaffold(
           extendBody: true,
          body: CategoriesBody(viewModel: vm),
        );
      },
    );
  }
}

class CategoriesBody extends StatelessWidget {
  const CategoriesBody({
    super.key,
    required this.viewModel,
  });

  final CategoriesViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: viewModel,
      builder: (context, _) {
        return ListView(
          children: [
            if (viewModel.mainCategories != null)
              MainCategoriesItem(
                title: viewModel.mainCategories?.title,
                image: viewModel.mainCategories?.image,
              ),
            SizedBox(
              height: 20,
            ),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
              ),
              itemCount: viewModel.categories.length,
              itemBuilder: (context, index) {
                return CategoriesItem(
                  image: viewModel.categories[index].image,
                  title: viewModel.categories[index].title,
                );
              },
            ),
          ],
        );
      },
    );
  }
}