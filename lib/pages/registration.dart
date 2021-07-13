import 'package:banking_app/pages/history.dart';
import 'package:flutter/material.dart';

class Registration extends StatelessWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 50, 100, 1),
        elevation: 0,
        title: Center(
          child: Text(
            "Registration",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
        leading: Icon(
          Icons.arrow_back_sharp,
          color: Colors.white,
        ),
        actions: [
          Icon(
            Icons.search,
            color: Colors.white,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
            ),
            Container(
              alignment: Alignment.center,
              height: 230,
              decoration: BoxDecoration(
                color: Color.fromRGBO(0, 50, 100, 1),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                                child: CardContent("Master Card", "Merk")),
                            Container(
                                child:
                                    CardContent("10 Dec 2017", "Activating")),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                                child: CardContent("Kredietkaart", "Type")),
                            Container(
                                child:
                                    CardContent("10 Dec 2022", "Geldigheid")),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 130),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage("assets/card.png"),
                    ),
                    CustomContainer(
                        Color.fromRGBO(0, 50, 100, 1),
                        Colors.white,
                        Color.fromRGBO(0, 50, 100, 1),
                        "Nieuwe kaart aanvragen"),
                    SizedBox(
                      height: 15,
                    ),
                    CustomContainer(Colors.white, Color.fromRGBO(0, 50, 100, 1),
                        Color.fromRGBO(0, 50, 100, 1), "Kaart aanvragen"),
                    SizedBox(
                      height: 20,
                    ),
                    CustomContainer(
                        Color.fromRGBO(220, 20, 60, 1),
                        Colors.white,
                        Color.fromRGBO(220, 20, 60, 1),
                        "CARD STOP"),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text(
                        "Kaart gestolen?",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Contacteer Card Stop onmiddelijk!",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  final Color backColor;
  final Color frontColor;
  final Color fontColor;
  final String custonText;
  CustomContainer(
      this.backColor, this.fontColor, this.frontColor, this.custonText);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) => History()));
      },
      child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: 50,
          decoration: BoxDecoration(
              color: backColor,
              border: Border.all(color: frontColor, width: 1),
              borderRadius: BorderRadius.circular(10)),
          child: Center(
              child: Text(
            custonText,
            style: TextStyle(color: fontColor, fontWeight: FontWeight.w600),
          ))),
    );
  }
}

class CardContent extends StatelessWidget {
  final String mainTitile;
  final String subTitle;
  CardContent(this.mainTitile, this.subTitle);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$mainTitile",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        Text(
          "$subTitle",
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
      ],
    );
  }
}
