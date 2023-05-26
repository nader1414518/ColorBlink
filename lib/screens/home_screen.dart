import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  Color mainColor = Colors.red;
  int currentIndex = 0;

  List<Color> colorSwatch = [
    Colors.red,
    Colors.orange,
    Colors.green,
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: mainColor,
        ),
        onTap: () {
          setState(() {
            currentIndex++;
          });

          if (currentIndex > colorSwatch.length - 1) {
            setState(() {
              currentIndex = 0;
            });
          }

          setState(() {
            mainColor = colorSwatch[currentIndex];
          });
        },
      ),
    );
  }
}
