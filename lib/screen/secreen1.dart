import 'package:flutter/material.dart';
import '../main.dart';

class myFirstScren extends StatefulWidget {
  const myFirstScren({super.key});

  @override
  State<myFirstScren> createState() => _myFirstScrenState();
}

class _myFirstScrenState extends State<myFirstScren> {
  String gender = "";
  String Wight="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 62, 182, 66),
      ),
      body: ListView(children: [
        Column(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://media.istockphoto.com/photos/the-ingredients-for-homemade-pizza-on-white-wooden-background-picture-id1163838814?k=20&m=1163838814&s=612x612&w=0&h=8GdUZPZeLBIhUwfmwzvyHvsNLwm0zlekJMa5ND7f84U=",
                  ),
                ),
              ),
              width: double.infinity,
              height: 300,
            ),
            Container(
              child: Text(
                'Healthy food   Healthy life',
                style: TextStyle(
                  fontFamily: 'OleoScript',
                  fontSize: 22,
                ),
              ),
            ),
            RadioListTile(
              selectedTileColor: Colors.red,
              secondary: Icon(Icons.man),
              title: Text("male"),
              value: "male",
              groupValue: gender,
              onChanged: (val) {
                setState(() {
                  gender = val.toString();
                });
              },
            ),
            RadioListTile(
              selectedTileColor: Colors.red,
              secondary: Icon(Icons.man),
              title: Text("female"),
              value: "female",
              groupValue: gender,
              onChanged: (val) {
               setState(() {
                  gender = val.toString();
               });
              },
            ),
            Text(
              'choose youe state',
              style: TextStyle(
                fontFamily: 'OleoScript',
                fontSize: 22,
              ),
            ),

            RadioListTile(
              selectedTileColor: Colors.red,
              secondary: Icon(Icons.widgets),
              title: Text("Increase or decrease in weight"),
              value: "Increase or decrease in weight",
              groupValue: Wight,
              onChanged: (val) {
                setState(() {
                  Wight = val.toString();
                });
                
              },
            ),
            RadioListTile(
              selectedTileColor: Colors.red,
              secondary: Icon(Icons.fitbit_sharp),
              title: Text("Maintaining a stable weight"),
              value: "Maintaining a stable weight",
              groupValue: Wight,
              onChanged: (val) { setState(() {
                Wight = val.toString();
              });
                
              },
            ),




            ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return (MyApp());
                    },
                  ));
                });
              },
              icon: Icon(
                Icons.home_filled,
              ),
              label: Text(
                'back to home',
                style: TextStyle(fontFamily: 'MarckScript', fontSize: 32),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
