import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  final dish = ["PANEER BUTTER MASALA","PANEER TIKKA MASALA","PANEER ANAGARA","VEG BIRYANI","CHOLE MASALA","PAV BHAJI"];
  final price=[100,120,100,100,120,100];
  final description = ["Made with authentic indian spices including raw onions, tomatoes and garlic.","Made with authentic spicy indian spices including raw onions, tomatoes and garlic."];
  final imgs=["assets/images/food2.jpg","assets/images/food3.jpg","assets/images/food3.jpg","assets/images/food3.jpg","assets/images/food3.jpg","assets/images/food3.jpg"];
  int index1 =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: ListView.builder(
          itemCount: dish.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.all(8),
              color: CupertinoColors.white,
              child: Row(
                children: [
                  Container(
                    width: 220,
                    child: Column(
                      children: [
                        Align(alignment: Alignment.centerLeft,child: Text(dish[index],style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
                        const SizedBox(height: 10,),
                        Container(
                            child: Row(
                              children: [
                                Text("Rs: ${price[index].toString()}",style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                const SizedBox(width: 10,),
                                IconButton(onPressed: (){}, icon: Icon(Icons.info)),
                                FavoriteButton(
                                  isFavorite: false,
                                  valueChanged: (_isFavorite) {
                                  },
                                ),
                              ],
                            )
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Container(
                    child: Column(
                      children: [
                        Container(width:120,child: Image.asset(imgs[index].toString(),)),
                        const SizedBox(height: 10,),
                        ElevatedButton.icon(
                                onPressed: (){}, label: const Text("Add to cart",style: TextStyle(fontSize: 10),),icon: const Icon(Icons.add_shopping_cart),),
                      ],
                    ),
                  ),

                ],
              ),

            );
          },
      ),
    );
  }
}
