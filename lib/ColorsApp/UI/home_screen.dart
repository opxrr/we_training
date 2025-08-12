import 'package:flutter/material.dart';
import '../customWidgets/custom_color_btn.dart';

class HomeScreen extends StatelessWidget {
  List<Map> colorCollection = [
    {'colorName': 'RED', 'colorObject': Colors.red},
    {'colorName': 'GREEN', 'colorObject': Colors.green},
    {'colorName': 'BLUE', 'colorObject': Colors.blue},
    {'colorName': 'BROWN', 'colorObject': Colors.brown},
    {'colorName': 'BLACK', 'colorObject': Colors.black},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Colors App'),
        centerTitle: true,
        leading: Icon(Icons.color_lens_sharp),
      ),
      backgroundColor: Colors.grey,
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Spacer(),
            for (int i = 0; i < colorCollection.length; i++)
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ColorBtn(
                    label: colorCollection[i]['colorName'],
                    textColor: colorCollection[i]['colorObject'],
                    buttonColor: Colors.white,
                    screenColor: colorCollection[i]['colorObject'],
                  ),
                  SizedBox(height: 30),
                ],
              ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
