import 'package:flutter/material.dart';

class BurgerPage extends StatefulWidget {
  static const tag = "burger_page";
  @override
  State<BurgerPage> createState() => _BurgerPageState();
}

class _BurgerPageState extends State<BurgerPage> {
  int itemCount = 1;
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Page"),
      ),
      body: Stack(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * .4,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage("images/burger_sandwich_PNG.png"),
          )),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: MediaQuery.of(context).size.height * .5,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.2),
                    offset: const Offset(0, -4),
                    blurRadius: 8,
                  )
                ]),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20.0,
                    left: 25,
                    right: 25,
                  ),
                  child: Row(
                    children: [
                      const Expanded(
                        child: Text(
                          "McDonal Burger",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 36,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child:  IconButton(
                          onPressed:(){
                            setState(() {
                              isPressed = !isPressed;
                            });
                          },
                          icon:isPressed ? const Icon(Icons.favorite) : const Icon(Icons.favorite_border),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    left: 25,
                  ),
                  child: Row(
                    children: const [
                      Text(
                        "15,95 \$",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10, left: 25, right: 25),
                  child: Text(
                      "Vỏ bánh Burger cấp đông khá tiện dụng, có thể cho thêm các loại nhân đa dạng tuỳ thích hoặc ăn bánh không nhân đều ngon. Món bánh mềm thích hợp cho cả gia đình, lại dễ sử dụng, không đòi hỏi thiết bị nướng…có thể làm nóng nhanh bằng lò vi sóng hoặc nồi chiên không dầu."),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18, left: 110),
                  child: Center(
                    child: Row(
                      children: [
                        Card(
                          color: const Color.fromARGB(255, 213, 213, 213),
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: IconButton(
                            onPressed: () {
                              if (itemCount > 0) {
                                setState(() {
                                  itemCount--;
                                });
                              }
                            },
                            icon: const Icon(Icons.remove),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: Text(
                            itemCount.toString(),
                            style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 30,
                            ),
                          ),
                        ),
                        Card(
                          color: Colors.teal,
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: IconButton(
                              onPressed: () {
                                  setState(() {
                                    itemCount++;
                                  });
                              },
                              icon: const Icon(Icons.add)),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Expanded(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.only(
                        top: 10,
                        left: 25,
                        right: 25,
                      ),
                      decoration: const BoxDecoration(
                        border: Border(
                          top: BorderSide(
                            color: Colors.grey,
                            width: 2.0,
                            style: BorderStyle.solid,
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "${(itemCount * 15.95).toStringAsFixed(2)} \$",
                            style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 22,
                            ),
                          ),
                          ElevatedButton.icon(
                            onPressed: () {
                              //TODO PAYMENT
                            },
                            icon: const Icon(
                              Icons.shopping_cart,
                              color: Colors.white,
                            ),
                            label: const Text("ORDER NOW"),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.teal),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
