import 'package:burger/components/drink.dart';
import 'package:burger/drink_detils.dart';
import 'package:burger/model.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            // ========= && =========== //
            SizedBox(height: 50),

            // ========= && =========== //
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Menu",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
                ),
                GestureDetector(
                  child: Icon(
                    Icons.shopping_bag_outlined,
                    size: 28,
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),

            // ========= && =========== //
            SizedBox(height: 20),

            // ========= && =========== //
            Expanded(
              child: ListView.builder(
                controller: controller,
                itemCount: DrinckModel.drincks.length,
                itemBuilder: (context, i) {
                  final item = DrinckModel.drincks[i];
                  return AnimatedBuilder(
                    animation: controller,
                    builder: (context, child) {
                      double offset = 0;
                      if (controller.hasClients) {
                        offset = controller.offset / 160 - i;
                      }
                      offset = offset.clamp(0, 1);

                      return Transform.scale(
                        scale: 1 - (offset * 0.2),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => DrinkDetils(),
                              ),
                            );
                          },
                          child: Drink(
                            image: item.image,
                            name: item.name,
                            title: item.title,
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
