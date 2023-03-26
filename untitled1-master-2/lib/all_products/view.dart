import 'package:flutter/material.dart';

import '../product_card.dart';
import '../search_field.dart';

class AllProductsView extends StatelessWidget {
  const AllProductsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent[100],
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SearchField(),
            const SizedBox(height: 25,),
            Expanded(
              child: GridView.builder(
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) => const ProductCard(
                  title: 'Italian pizza',
                  description: '7Pcs',
                  price: '150',
                  image: 'banana',
                ), gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, mainAxisSpacing: 10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}