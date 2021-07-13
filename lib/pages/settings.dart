import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool toggleValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.1),
      appBar: AppBar(
        title: Center(
          child: Text("Betalen"),
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                  child: Container(
                    decoration: BoxDecoration(
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
                              Icons.lock_open_rounded,
                              size: 40,
                              color: Colors.white,
                            ),
                          ),
                          title: Text(
                            "Inloggen",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          subtitle:
                              Text("Alle voorkeuren in verband met inloggen"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Saldo zonder inloggen",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text("Saldo raadplegen zonder in te s ")
                                ],
                              ),
                              AnimatedContainer(
                                duration: Duration(milliseconds: 1000),
                                height: 40,
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: toggleValue
                                        ? Color.fromRGBO(0, 50, 100, 1)
                                        : Colors.white,
                                    border: Border.all(
                                        color:
                                            Color.fromRGBO(70, 75, 71, 0.3))),
                                child: Stack(
                                  children: [
                                    AnimatedPositioned(
                                      duration: Duration(milliseconds: 1000),
                                      curve: Curves.easeInOut,
                                      top: 3,
                                      left: toggleValue ? 60 : 0,
                                      right: toggleValue ? 0 : 60,
                                      child: InkWell(
                                        onTap: toggleButton,
                                        child: AnimatedSwitcher(
                                            duration:
                                                Duration(milliseconds: 1000),
                                            transitionBuilder: (Widget child,
                                                Animation<double> animation) {
                                              return ScaleTransition(
                                                scale: animation,
                                                child: child,
                                              );
                                            },
                                            child: toggleValue
                                                ? Icon(
                                                    Icons.check_circle,
                                                    color: Colors.white,
                                                    size: 35,
                                                    key: UniqueKey(),
                                                  )
                                                : Icon(
                                                    Icons.remove_circle_outline,
                                                    color: Color.fromRGBO(
                                                        0, 50, 100, 1),
                                                    size: 35,
                                                    key: UniqueKey(),
                                                  )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   children: [
                        //     Column(
                        //       children: [
                        //         Text("Saldo zonder inloggen"),
                        //         Text("Saldo zonder inloggen")
                        //       ],
                        //     ),
                        //     animatedSwitchMethod(
                        //         Color.fromRGBO(0, 50, 100, 1), Colors.white),
                        //   ],
                        // )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 230),
              child: Column(
                children: [
                  CustomTile(Icons.monetization_on_outlined, "Limieten",
                      "Beheer de limieten op je uitgaven"),
                  CustomTile(Icons.notification_add, "Meldingen",
                      "Zet meldingen aan of uit voor bepaalde zaken"),
                  CustomTile(Icons.my_location_outlined, "Taal",
                      "Stel je voorkeurtaal in voor deze app"),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    child: Container(
                      width: double.infinity,
                      height: 80,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 215, 0, 0.9),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Uitloggen",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "Meld je af op dit toestel",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  toggleButton() {
    setState(() {
      toggleValue = !toggleValue;
    });
  }
}

class CustomTile extends StatelessWidget {
  final IconData iconData;
  final String mainTitle;
  final String subTitle;
  CustomTile(this.iconData, this.mainTitle, this.subTitle);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Container(
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.8),
          ),
        ], borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: Color.fromRGBO(0, 50, 100, 1),
                borderRadius: BorderRadius.circular(10)),
            child: Icon(iconData, size: 50, color: Colors.white),
          ),
          title: Text(mainTitle),
          subtitle: Text(subTitle),
        ),
      ),
    );
  }
}
