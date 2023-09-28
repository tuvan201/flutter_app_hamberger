import 'package:flutter/material.dart';
import 'header.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme:
              const AppBarTheme(color: Colors.teal, centerTitle: true)),
      debugShowCheckedModeBanner: false,
      home: Hamberger(),
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
      body: CustomScrollView(slivers: [
        SliverAppBar(
          pinned: true,
          title: const Text("Devider Me"),
          leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart))
          ],
        ),
        Header(),

        //Test cuộn thanh header vẫn hiển thị title cho appbar
        //  SliverList(
        //   delegate: SliverChildBuilderDelegate(
        //     (context, index) {
        //       return ListTile(
        //         title: Text('Item $index'),
        //       );
        //     },
        //     childCount: 20, // Số lượng item bạn muốn hiển thị
        //   ),
        // ),
      ]),
    );
  }
}
