import 'package:burger/components/qty_widget.dart';
import 'package:burger/components/toggle_widget.dart';
import 'package:burger/model.dart';
import 'package:flutter/material.dart';

class DrinkDetils extends StatefulWidget {
  const DrinkDetils({super.key});

  @override
  State<DrinkDetils> createState() => _DrinkDetilsState();
}

class _DrinkDetilsState extends State<DrinkDetils> {
  final PageController _controller = PageController(viewportFraction: 0.50);
  double _currentPage = 0;

  @override
  void initState() {
    _controller.addListener(() {
      setState(() {
        _currentPage = _controller.page ?? 1;
      });
    });
    super.initState();
  }

  int selectedItem = 0;

  final drinks = DrinckModel.drincks;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            // ========= && ========= //
            SizedBox(height: 40),

            // ========= && ========= //
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // ========= && ========= //
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Icon(Icons.arrow_back),
                ),

                // ========= && ========= //
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      drinks[_currentPage.round()].name,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      drinks[_currentPage.round()].title,

                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),

                // ========= && ========= //
                Text(
                  "\$${drinks[_currentPage.round()].price}",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ],
            ),

            // ========= && ========= //
            SizedBox(height: 40),

            // ========= && ========= //
            Expanded(
              child: Stack(
                children: [
                  PageView.builder(
                    controller: _controller,
                    itemCount: drinks.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, i) {
                      final scale = 1 - (_currentPage - i).abs() * 1;
                      final TranslateY = (_currentPage - i).abs() * 350;
                      return Transform.translate(
                        offset: Offset(TranslateY, 0),
                        child: Transform.scale(
                          scale: scale.clamp(0.5, 1.0),
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                    drinks[i].image,
                                    fit: BoxFit.contain,
                                    height: 600,
                                  ),

                                  Positioned(
                                    bottom: 100,
                                    left: 0,
                                    right: 0,
                                    child: Container(
                                      width: 70,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black,
                                            blurRadius: 50,
                                            spreadRadius: 2,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),

                  // ========= && ========= //
                  Positioned(
                    bottom: 20,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ...List.generate(4, (i) {
                                return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectedItem = i;
                                    });
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: selectedItem == i
                                          ? Colors.orange
                                          : Colors.white,
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        width: 1,
                                        color: Colors.black87,
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.align_vertical_center_sharp,
                                      color: selectedItem == i
                                          ? Colors.white
                                          : Colors.black54,
                                    ),
                                  ),
                                );
                              }),
                            ],
                          ),

                          // ========= && ========= //
                          SizedBox(height: 25),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [ToggleWidget(), QtyWidget()],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // ========= && ========= //
          ],
        ),
      ),
    );
  }
}
