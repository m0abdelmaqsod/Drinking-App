import 'package:flutter/material.dart';

class QtyWidget extends StatefulWidget {
  const QtyWidget({super.key});

  @override
  State<QtyWidget> createState() => _QtyWidgetState();
}

class _QtyWidgetState extends State<QtyWidget> {
  int Quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  if (Quantity > 1) {
                    Quantity--;
                  }
                });
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "-",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                ),
              ),
            ),

            // ========= && ========= //
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                Quantity.toString(),
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),

            // ========= && ========= //
            GestureDetector(
              onTap: () {
                setState(() {
                  Quantity++;
                });
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "+",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
