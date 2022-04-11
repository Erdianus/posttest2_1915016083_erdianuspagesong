import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LayoutBarbershop(),
    );
  }
}

class LayoutBarbershop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 100),
                child: Text(
                  "WELCOME TO BARBERSHOP",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/logo_barbershop.png"),
                ),
              ),
            ),
            Container(
              width: 150,
              height: 50,
              child: Center(
                child: Text(
                  'Order Now',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(3, 6),
                    blurRadius: 10,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
