import 'package:flutter/material.dart';
import 'header.dart';
import 'catagories.dart';
import "hamberger_list.dart";
import 'burger_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: const AppBarTheme(color: Colors.teal, centerTitle: true),
          bottomAppBarTheme: const BottomAppBarTheme(color: Colors.teal),
          ),
      initialRoute: '/',
      routes:{
        '/':(context) => Hamberger(),
        BurgerPage.tag: (_)=> BurgerPage(),
        } ,
      debugShowCheckedModeBanner: false,
    );
  }
}

class Hamberger extends StatefulWidget {
  @override
  State<Hamberger> createState() => _HambergerState();
}

class _HambergerState extends State<Hamberger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //tạo 1 scrollview cho việc khả dụng thao tác kéo thả hoặc lướt xuống cho giao diện người dùng
      body: CustomScrollView(slivers: [
        //appbar application
        SliverAppBar(
          pinned: true,
          title: const Text("Devider Me"),
          leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart))
          ],
        ),
        //body application
        Header(),
        Categories(),
        HamberGersList(row: 1,),
        HamberGersList(row: 2),
      ]),
      //bottom application
      extendBody: true,  //khả dụng cho việc hiển thị body content tại khoảng trống của bottom
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        onPressed: () {},
        child: const Icon(Icons.home),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius:const  BorderRadius.vertical(top: Radius.circular(40)),
        child: Container(
          color: Colors.black38,
          child: BottomAppBar(
            shape: const CircularNotchedRectangle(), //tạo khía hình tròn cho nút home
            child: Row(
              children: [
                const Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add_alert,
                      color: Colors.white,
                    )),
                const Spacer(),
                const Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.turned_in,
                       color: Colors.white)
                    ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
