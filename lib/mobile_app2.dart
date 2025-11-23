import 'package:flutter/material.dart';

class MobileApp2 extends StatefulWidget {
  const MobileApp2({super.key});

  @override
  State<MobileApp2> createState() => _MobileApp2State();
}

class _MobileApp2State extends State<MobileApp2> {
  int value = 0;
   void decrement() {
    if(value > 0) {
      setState(() {
        value--;
      });
    } else {
      print("Value cannot be negative");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Stateful Widget',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.teal,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 10,
          children: [Text(
            'The value is $value',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.italic,
            ),
          ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amberAccent,
                    padding: EdgeInsets.all(15),
                    elevation: 0,
                    shape: CircleBorder(),
                  ),
                  onPressed: () {
                    setState(() {
                      value++;
                    });
                  }, child: Icon(Icons.add, size: 25, color: Colors.black,),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amberAccent,
                      padding: EdgeInsets.all(15),
                      elevation: 0,
                      shape: CircleBorder(),
                  ),
                  onPressed: () {
                    decrement();
                  }, child: Icon(Icons.remove, size: 25, color: Colors.black87,),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
