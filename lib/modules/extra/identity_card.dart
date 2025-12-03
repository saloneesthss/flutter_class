import 'package:flutter/material.dart';

class IdentityCard extends StatefulWidget {
  const IdentityCard({super.key});

  @override
  State<IdentityCard> createState() => _IdentityCardState();
}

class _IdentityCardState extends State<IdentityCard> {
  textWidget(String title, String subtitle) {
    return RichText(
      text: TextSpan(
        text: title,
        style: TextStyle(color: Colors.black, fontSize: 16),
        children: [
          TextSpan(
            text: subtitle,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            )
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Card',
          style: TextStyle(
            color: Colors.black87,
            fontSize: 25,
          ),
        ),
      ),
      body: Center(
        child: Container(
          height: 250,
          width: double.infinity,
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.white54,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.indigo, width: 2),
          ),
          child: Row(
            children: [
              Flexible(
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/salonee.jpg'),
                      fit: BoxFit.cover,
                    ),
                    shape: BoxShape.circle,
                    // borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                ),
              ),
              SizedBox(width: 20),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 10,
                  children: [
                    textWidget('Name: ', 'Salonee Shrestha'),
                    textWidget('Age: ', '21'),
                    textWidget('Address: ', 'Madhyapur Thimi-4, Bhaktapur'),
                    textWidget('Level: ', 'BCA'),
                    textWidget('DOB: ', '03-14-2004'),
                    textWidget('Phone: ', '9748285363'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
