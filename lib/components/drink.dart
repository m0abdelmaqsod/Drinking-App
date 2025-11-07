import 'package:flutter/material.dart';

class Drink extends StatelessWidget {
  const Drink({
    super.key,
    required this.image,
    required this.name,
    required this.title,
  });

  final String image;
  final String name;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 0),
          child: Card(
            color: Colors.white,
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 60),
              child: Row(),
            ),
          ),
        ),

        // ========= && =========== //
        Positioned(
          top: -10,
          left: 10,
          bottom: 50,
          child: Image.asset(image, fit: BoxFit.contain),
        ),

        // ========= && =========== //
        Positioned(
          top: 50,
          left: 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),

              // ========= && =========== //
              SizedBox(height: 3),

              Text(title, style: TextStyle(fontSize: 15)),
            ],
          ),
        ),

        // ========= && =========== //
        Positioned(
          right: 25,
          bottom: 50,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.grey[700],
                  size: 20,
                ),
              ),
            ),
          ),
        ),
        // ========= && =========== //
      ],
    );
  }
}
