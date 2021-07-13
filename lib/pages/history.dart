import 'package:flutter/material.dart';

class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white.withOpacity(0.95),
        appBar: AppBar(
          title: Center(
            child: Text("Mijn uitgaven"),
          ),
          backgroundColor: Color.fromRGBO(0, 50, 100, 1),
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
              ),
              Container(
                height: 150,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 50, 100, 1),
                ),
              ),
              Center(
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 30),
                    child: Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromRGBO(250, 250, 250, 1)),
                      height: 170,
                      width: 352,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ListTile(
                            leading: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(0, 50, 100, 1),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Icon(
                                Icons.remove_red_eye_outlined,
                                size: 40,
                                color: Colors.white,
                              ),
                            ),
                            title: Text(
                              "John Williams",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                            subtitle: Text("Zichtrekening"),
                            trailing: Text(
                              "\$293,42",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w800,
                                color: Color.fromRGBO(0, 50, 100, 1),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 16.0, right: 16, top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "BE08 0004 7192 8273",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                Text(
                                  "\$253,82",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 16.0, right: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "BE08 0004 7192 8273",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  "\$253,82",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 230),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Deze Week",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ColumnContainer("22 \nOCT", "Aankoop Maestro",
                          "Carrefour Sint-Kruis", "29,61"),
                      ColumnContainer(
                          "19 \nOCT", "Paypal", "Domicilering", "134,27"),
                      ColumnContainer(
                          "18 \nOCT", "Storting Maestro", "Delhaize", "29,61"),
                      ColumnContainer(
                          "16 \nOCT", "Coinbase", "Bitcoin", "59,61"),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Vorige Week",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ColumnContainer(
                          "14 \nOCT", "Bankcontact", "Brico Plan-it", "22,61"),
                      ColumnContainer(
                          "13 \nOCT", "Mastercard", "Factuur", "114,27"),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

class ColumnContainer extends StatelessWidget {
  final String inputDate;
  final String titleText;
  final String subtitleText;
  final String spentMoney;
  ColumnContainer(
      this.inputDate, this.titleText, this.subtitleText, this.spentMoney);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            inputDate,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87),
          ),
          Container(
            child: Column(
              children: [
                Text(titleText,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87)),
                Text(
                  subtitleText,
                  style: TextStyle(
                    color: Colors.grey[600],
                  ),
                )
              ],
            ),
          ),
          Text("-\$$spentMoney",
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                  fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}
