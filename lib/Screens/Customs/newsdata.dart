import 'package:news_app/Screens/Customs/category_model.dart';

List<CategoryModel> getcategories() {
  return [
    CategoryModel(image: "images/busniess.png", categoryname: "Busniess"),
    CategoryModel(image: "images/entertain.png", categoryname: "Entertaiments"),
    CategoryModel(image: "images/health.png", categoryname: "Health"),
    CategoryModel(image: "images/sports.png", categoryname: "Sports"),
  ];
}

List<Carosulslider> getcarsolimages() {
  return [
    Carosulslider(images: "images/busniess.png", names: "Busniess"),
    Carosulslider(images: "images/entertain.png", names: "Entertaiments"),
    Carosulslider(images: "images/health.png", names: "Health"),
    Carosulslider(images: "images/sports.png", names: "Sports"),
  ];
}
