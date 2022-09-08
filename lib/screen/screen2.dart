import 'package:flutter/material.dart';
import '../main.dart';

class mySeondScreen extends StatefulWidget {
  const mySeondScreen({super.key});

  @override
  State<mySeondScreen> createState() => _mySeondScreenState();
}

class _mySeondScreenState extends State<mySeondScreen> {
  List myItems = [
    'less than 18 years',
    '18-24 years',
    '24-30 years',
    '30-40 years',
    'more 40 years'
  ];
  String selectItems = '24-30 years';
  bool drinking = false;
  bool sports = false;
  bool fruits = false;
  bool break1 = false;
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
              child: Text(
                'Enter your information to get the best plan',
                style: TextStyle(
                  fontFamily: 'OleoScript',
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              child: SizedBox(height: 55),
            ),
            Text(
              'choose your age',
              style: TextStyle(fontSize: 23),
            ),
            Divider(
              thickness: 4,
              color: Colors.grey,
            ),
            DropdownButton(
              value: selectItems,
              items: myItems
                  .map((e) => DropdownMenuItem(
                        value: e,
                        child: Text('{$e}'),
                      ))
                  .toList(),
              onChanged: (val) {
                setState(() {
                  selectItems = val.toString();
                });
              },
            ),
            SizedBox(height: 77),
            CheckboxListTile(
              secondary: Icon(
                Icons.local_drink_outlined,
                color: Colors.amber,
              ),
              subtitle: Text("The plan contains healthy drinks",
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 20,
                      color: Colors.green[700])),
              value: drinking,
              onChanged: (val) {
                setState(() {
                  drinking = val!;
                });
              },
            ),
            SizedBox(height: 77),
            CheckboxListTile(
              secondary: Icon(
                Icons.sports,
                color: Colors.amber,
              ),
              subtitle: Text("The plan contains Gymnastics",
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 20,
                      color: Colors.green[700])),
              value: sports,
              onChanged: (val) {
                setState(() {
                  sports = val!;
                });
              },
            ),
            SizedBox(height: 77),
            CheckboxListTile(
              secondary: Icon(
                Icons.free_breakfast,
                color: Colors.amber,
              ),
              subtitle: Text(
                  "It mainly depends on dates, fruits and vegetables",
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 20,
                      color: Colors.green[700])),
              value: fruits,
              onChanged: (val) {
                setState(() {
                  fruits = val!;
                });
              },
            ),
            SizedBox(height: 77),
            CheckboxListTile(
              secondary: Icon(
                Icons.food_bank,
                color: Colors.amber,
              ),
              subtitle: Text("Contains a break day",
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 20,
                      color: Colors.green[700])),
              value: break1,
              onChanged: (val) {
                setState(() {
                  break1 = val!;
                });
              },
            ),
            SizedBox(height: 77),
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
            Divider(
              thickness: 4,
              color: Colors.grey,
            ),
          ],
        )
      ]),
    );
  }
}
