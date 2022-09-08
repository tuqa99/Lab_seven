import 'package:flutter/material.dart';
import 'package:labseven/screen/screen2.dart';
import 'package:labseven/screen/secreen1.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return home();
  }
}

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 90, 218, 96),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 62, 182, 66),
      ),
      drawer: Drawer(),
      body: ListView(children: [
        Column(
          children: [
            Container(
              alignment: Alignment.center,
              width: 400,
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                color: Colors.amber,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://media.istockphoto.com/photos/calories-counting-diet-food-control-and-weight-loss-concept-tablet-picture-id1170651234?k=20&m=1170651234&s=612x612&w=0&h=pu2_Z0fRjS0WtHboFPqKQ1Nbo13VNVt_5_8HnWtSdVs='),
                  ),
                ),
                width: 300,
                height: 350,
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Divider(
              thickness: 10,
              color: Colors.green,
              height: 44,
            ),
            ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return (myFirstScren());
                    },
                  ));
                });
              },
              icon: Icon(
                Icons.new_label,
              ),
              label: Text(
                'Start your new plan',
                style: TextStyle(fontFamily: 'MarckScript', fontSize: 32),
              ),
            ),
            SizedBox(
              height: 44,
            ),
            ElevatedButton.icon(
              onPressed: () {   setState(() {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return (mySeondScreen());
                    },
                  ));
                });},
              icon: Icon(
                Icons.health_and_safety_sharp,
              ),
              label: Text(
                'healthy recipes',
                style: TextStyle(fontFamily: 'MarckScript', fontSize: 32),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
