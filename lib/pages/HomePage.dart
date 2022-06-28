import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isLoggedIn = false;

  Widget buildHomeScreen() {
    return Text('Home Page');
  }

  Scaffold buildSignInScreen() {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
              Theme.of(context).accentColor,
              Theme.of(context).primaryColor
            ])),
        alignment: Alignment.center,
        child: Column(
            children: <Widget>[
              Text(
                "Insta Winsta",
                style: TextStyle(
                    fontSize: 92, color: Colors.white, fontFamily: "Signatra"),
              ),
              GestureDetector(
                  onTap: () => "Button Tapped",
                  child: Container(
                    width: 270,
                    height: 65,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://th.bing.com/th/id/R.b1979b3bd67138a079d9ee9f432911e2?rik=VbPWuBHwqikEpg&riu=http%3a%2f%2fwww.androidpolice.com%2fwp-content%2fuploads%2f2017%2f02%2fnexus2cee_GoogleG.png&ehk=GHLwAPrk9IUc7Il1vp9zkaP9x0DVSdIjY20Qr7wTm4s%3d&risl=&pid=ImgRaw&r=0"),
                            fit: BoxFit.cover)),
                  ))
            ],
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (isLoggedIn) {
      return buildHomeScreen();
    } else {
      return buildSignInScreen();
    }
  }
}
