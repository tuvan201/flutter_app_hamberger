import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SliverList(
        delegate: SliverChildListDelegate([
      Stack(
        children: [
          Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                height: size.height / 5,
                decoration: const BoxDecoration(
                    color: Colors.teal,
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(45)),
                    boxShadow: [
                      BoxShadow(blurRadius: 2),
                    ]),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          const CircleAvatar(
                            backgroundColor: Colors.white70,
                            radius: 30,
                            child: CircleAvatar(
                              backgroundImage: AssetImage("images/minion.jpg"),
                              radius: 25,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Column(
                            children: [
                              const Text(
                                "Nguyễn Văn Tú",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              Container(
                                padding: const EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.black54),
                                child: const Text(
                                  "GOLD Member",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Text(
                        "154 \$ CAN",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ],
                  ),
                ]),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: 50,
              width: size.width,
              child: Card(
                elevation: 3,
                margin: const EdgeInsets.symmetric(horizontal: 40),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.only(left: 15),
                    border: InputBorder.none,
                    hintText: "What does your belly want to eat?",
                    suffixIcon: Icon(Icons.search, color: Colors.black,),
                    prefixIconConstraints: BoxConstraints(minHeight: 0, minWidth: 15)
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    ]));
  }
}
