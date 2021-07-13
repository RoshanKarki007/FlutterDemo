import 'package:flutter/material.dart';

class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Betalen"),
        ),
        backgroundColor: Color.fromRGBO(0, 50, 100, 1),
        elevation: 0,
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color.fromRGBO(0, 50, 100, 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Icon(
                Icons.check,
                size: 40,
                color: Color.fromRGBO(0, 50, 100, 1),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0, bottom: 10),
              child: Text(
                "De Betaling is goed verlopen.",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Text(
              "Thomas G. heeft 	\$45,84 van jou \nontvangen",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
