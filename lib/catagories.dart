import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int currentSelectItem = 0;
  @override
  Widget build(BuildContext context) {
    int items = 10;
    return SliverToBoxAdapter(
        child: Container(
      margin: const EdgeInsets.only(top: 10),
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items,
        itemBuilder: ((context, index) => Stack(
              children: [
                Column(
                  children: [
                    Container(
                      height: 90,
                      width: 90,
                      margin:
                          EdgeInsets.only(left: index == 0 ? 20 : 0, right: 15),
                      child: GestureDetector(
                        onTap: () => setState(() {
                          currentSelectItem = index;
                        }),
                        child: Card(
                          color: index == currentSelectItem ? Colors.black.withOpacity(0.7) : Colors.white,
                          elevation: 3,
                          margin: const EdgeInsets.all(10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Icon(
                            Icons.fastfood,
                            color:index == currentSelectItem ?Colors.white : Colors.black.withOpacity(0.7),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Positioned(
                    bottom: 0,
                    child: Container(
                      margin:
                          EdgeInsets.only(left: index == 0 ? 20 : 0, right: 15),
                      width: 90,
                      child: const Center(
                        child: Text("Burger"),
                      ),
                    )),
              ],
            )),
      ),
    ));
  }
}
