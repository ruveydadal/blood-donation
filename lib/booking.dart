import 'package:flutter/material.dart';

class Booking extends StatefulWidget {
  const Booking({Key? key}) : super(key: key);

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: content());
  }

  Widget content() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Center(
            child: Container(
              height: 350,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  )),
              child: Image.asset(
                'assets/donation.png',
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "      Blood Bank\nLocation Near You",
            style: TextStyle(fontSize: 25),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(20)),
                height: 100,
                width: 150,
                child: Icon(
                  Icons.gps_fixed,
                  size: 40,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 40),
              Container(
                decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(20)),
                height: 100,
                width: 150,
                child: Icon(
                  Icons.map,
                  size: 40,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(20)),
            height: 100,
            width: 150,
            child: Icon(
              Icons.phone,
              size: 40,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Text("Can I give blood?",
              style: TextStyle(color: Colors.redAccent, fontSize: 18)),
          SizedBox(
            height: 10,
          ),
          Text(
            "Share on social media!",
            style: TextStyle(color: Colors.redAccent, fontSize: 18),
          ),
        ],
      ),
    );
  }
}
