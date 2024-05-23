import 'package:flutter/material.dart';
import 'package:news_app/Screens/Customs/building_images.dart';
import 'package:news_app/Screens/Customs/category_model.dart';
import 'package:news_app/Screens/Customs/newsdata.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  List<CategoryModel> categories = [];

  void iniState() {
    categories = getcategories();

    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Updated",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "News",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            )
          ],
        ),
        elevation: 0.5,
      ),
      body: Container(
          child: Column(
        children: [
          Container(
            child: ListView.builder(
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return CustomImage(
                    image: categories[index].image,
                    category: categories[index].categoryname,
                  );
                }),
          )
        ],
      )),
    );
  }
}
