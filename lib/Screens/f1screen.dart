import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Screens/Customs/building_images.dart'; // Ensure this file contains CustomImage
import 'package:news_app/Screens/Customs/category_model.dart'; // Ensure this file contains CategoryModel
import 'package:news_app/Screens/Customs/imagebuilding.dart'; // Ensure this file contains buildImage
import 'package:news_app/Screens/Customs/newsdata.dart'; // Ensure this file contains getcategories

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  List<CategoryModel> categories = [];
  List<Carosulslider> sliders = [];
  @override
  void initState() {
    super.initState();
    categories = getcategories();
    sliders =
        getcarsolimages(); // Ensure this function is defined and returns a List<CategoryModel>
  }

  @override
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
              margin: const EdgeInsets.only(top: 20),
              height: 100, // Add a fixed height for the horizontal list
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return CustomImage(
                    image: categories[index].image,
                    categoryname: categories[index].categoryname,
                  );
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              child: CarouselSlider.builder(
                itemCount: sliders.length,
                itemBuilder: (context, index, realIndex) {
                  return buildImage(sliders[index].images!, index);
                },
                options: CarouselOptions(
                  height: 200,
                  viewportFraction: 1,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
