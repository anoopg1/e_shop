import 'package:e_shop/core/constants/size_constants.dart';
import 'package:flutter/material.dart';

class Screencategory extends StatelessWidget {
  const Screencategory({super.key});

  @override
  Widget build(BuildContext context) {
    final categoryList = [
      "Electronics",
      "Jewelery",
      "Men's clothing",
      "Women's clothing"
    ];

    final categoryImageList = [
      "https://img.freepik.com/free-photo/modern-stationary-collection-arrangement_23-2149309643.jpg?size=626&ext=jpg&ga=GA1.2.843125331.1691313888&semt=sph",
      "https://img.freepik.com/free-vector/realistic-gold-silver-jewelry-display-black-mannequins-stands-grey-surface_1284-9644.jpg?size=626&ext=jpg&ga=GA1.1.843125331.1691313888&semt=sph",
      "https://img.freepik.com/free-photo/portrait-handsome-smiling-stylish-young-man_158538-19393.jpg?size=626&ext=jpg&ga=GA1.1.843125331.1691313888&semt=ais",
      "https://img.freepik.com/free-photo/dark-haired-woman-with-red-lipstick-smiles-leans-stand-with-clothes-holds-package-pink-background_197531-17609.jpg?size=626&ext=jpg&ga=GA1.1.843125331.1691313888&semt=ais"
    ];

    return Scaffold(
        body: ListView.separated(
          
            itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 300,
                          width: double.infinity,

                          decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                  image:
                                      NetworkImage(categoryImageList[index]))),
                        ),
                   
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            categoryList[index],
                            style: TextStyle(fontSize: 40,color: Colors.blueGrey),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            separatorBuilder: (context, index) => kheight10,
            itemCount: categoryList.length));
  }
}
