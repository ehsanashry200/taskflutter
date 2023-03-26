import 'package:flutter/material.dart';
import 'custom_text.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.title,
    required this.description,
    required this.price,
    required this.image,
  }) : super(key: key);

  final String title;
  final String description;
  final String price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.grey.withOpacity(0.5),
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Center(
              child: Image.asset('assets/images/$image.jpg'),
            ),
          ),
          MyText(
            data: title,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          MyText(
            data: description,
            color: Colors.grey,
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyText(
                data: '\$$price',
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              const Icon(Icons.favorite, color: Colors.orangeAccent,),
            ],
          )
        ],
      ),
    );
  }
}
