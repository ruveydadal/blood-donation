import 'package:e_commerce/login.dart';
import 'package:flutter/material.dart';

class Survey extends StatefulWidget {
  const Survey({Key? key}) : super(key: key);

  @override
  State<Survey> createState() => _SurveyState();
}

class _SurveyState extends State<Survey> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content(),
    );
  }

  Widget content() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 110.0),
            child: Center(
              child: Container(
                child: ImageIcon(
                  AssetImage("assets/bloodtype.png"),
                  size: 200,
                  color: Colors.redAccent,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Please pick your\n     blood type",
            style: TextStyle(fontSize: 40),
          ),
          SizedBox(
            height: 30,
          ),
          bloodType("A", "B"),
          SizedBox(
            height: 20,
          ),
          bloodType("0", "AB"),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.grey[350],
                    borderRadius: BorderRadius.circular(8)),
                child: Center(
                    child: Text(
                  "+",
                  style: TextStyle(fontSize: 25),
                )),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.grey[350],
                    borderRadius: BorderRadius.circular(8)),
                child: Center(
                    child: Text(
                  "-",
                  style: TextStyle(fontSize: 25),
                )),
              )
            ],
          ),
          SizedBox(
            height: 50,
          ),
          loginButton("Finish"),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/booking');
            },
            child: Text(
              "Book Now!",
              style: TextStyle(color: Colors.redAccent, fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}

Widget bloodType(String type1, String type2) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        decoration: BoxDecoration(
            color: Colors.grey[350], borderRadius: BorderRadius.circular(20)),
        width: 180,
        height: 90,
        child: Center(
            child: Text(
          type1,
          style: TextStyle(fontSize: 20),
        )),
      ),
      SizedBox(
        width: 20,
      ),
      Container(
        decoration: BoxDecoration(
            color: Colors.grey[350], borderRadius: BorderRadius.circular(20)),
        width: 180,
        height: 90,
        child: Center(
            child: Text(
          type2,
          style: TextStyle(fontSize: 20),
        )),
      )
    ],
  );
}
