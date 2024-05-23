import 'package:news_app/Screens/Customs/category_model.dart';

List<CategoryModel> getcategories() {
  List<CategoryModel> category = [];

  CategoryModel categorymodel = CategoryModel();

  categorymodel.categoryname = "Busniess";
  categorymodel.image = "images/Busniess.png";
  category.add(CategoryModel());

  categorymodel.categoryname = "Entertainments";
  categorymodel.image = "images/entertainments.png";
  category.add(CategoryModel());

  categorymodel.categoryname = "Health";
  categorymodel.image = "images/health.png";
  category.add(CategoryModel());

  categorymodel.categoryname = "Sports";
  categorymodel.image = "images/sports.png";
  category.add(CategoryModel());

  return category;
}
