import "package:flutter/material.dart";

class HamberGersList extends StatefulWidget {
  @override
  State<HamberGersList> createState() => _HamberGersListState();
}

class _HamberGersListState extends State<HamberGersList> {
  @override
  Widget build(BuildContext context) {
    int items = 10;

    Widget baconBurgerImage = Container(
      height: 140,
      child: Image.asset("images/burgerPNG.png"),
    );
    Widget burgerSandwich = Container(
      height: 140,
      child: Image.asset("images/burger_sandwich_PNG.png"),
    );

    return SliverToBoxAdapter(
      child: Container(
        height: 250,
        margin: const EdgeInsets.only(top: 10),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: items,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        left: 20, right: index == items ? 20 : 0),
                    height: 240,
                    width: 200,
                    child: GestureDetector(
                      onTap: () {
                        //TODO NAVIGATOR
                      },
                      child: Card(
                        color: Colors.teal,
                        elevation: 3,
                        // margin: const EdgeInsets.all(10),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(45),
                          bottomLeft: Radius.circular(45),
                          topRight: Radius.circular(45),
                          bottomRight: Radius.circular(15),
                        )),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Column(
                            children: [
                              Text(
                                index.isEven ? "Bacon burger" : "Beef burger",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Spacer(),
                              Row(
                                children: [
                                  const Spacer(),
                                  const Text(
                                    "15,95 \$ CAN",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Spacer(),
                                  Container(
                                    width: 45,
                                    height: 45,
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: const Icon(Icons.add),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 60,
                    left: -15,
                    child: GestureDetector(
                      onTap: () {
                        //TODO Navigator
                      },
                      child: index.isEven ? burgerSandwich : baconBurgerImage,
                    ),
                  )
                ],
              );
            }),
      ),
    );
  }
}
