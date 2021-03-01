import 'package:flutter/material.dart';
import 'package:instagramtutorialpart2/components/card.dart';
import 'package:instagramtutorialpart2/components/edittexttapped.dart';
import 'package:instagramtutorialpart2/components/iconbutton.dart';
import 'package:instagramtutorialpart2/components/iconbuttontapped.dart';
import 'package:instagramtutorialpart2/components/search.dart';
import 'package:instagramtutorialpart2/components/searchtapped.dart';
import 'package:instagramtutorialpart2/components/switch.dart';
import 'components/button.dart';
import 'components/buttontapped.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // SET ICONS HERE

  var icons1 = Icons.home;
  var icons2 = Icons.settings;
  var icons3 = Icons.favorite;
  var icons4 = Icons.message;

  //

  bool buttonPressed1 = false;
  bool buttonPressed2 = false;
  bool buttonPressed3 = false;
  bool buttonPressed4 = false;
  bool onSearchPressed = false;
  bool onLabelTapped = false;
  bool onshareTapped = false;
  bool _enable = false;

  void _letsPress1() {
    setState(() {
      buttonPressed1 = true;
      buttonPressed2 = false;
      buttonPressed3 = false;
      buttonPressed4 = false;
    });
  }

  void _letsPress2() {
    setState(() {
      buttonPressed1 = false;
      buttonPressed2 = true;
      buttonPressed3 = false;
      buttonPressed4 = false;
    });
  }

  void _letsPress3() {
    setState(() {
      buttonPressed1 = false;
      buttonPressed2 = false;
      buttonPressed3 = true;
      buttonPressed4 = false;
    });
  }

  void _letsPress4() {
    setState(() {
      buttonPressed1 = false;
      buttonPressed2 = false;
      buttonPressed3 = false;
      buttonPressed4 = true;
    });
  }

  void _letsPress5() {
    setState(() {
      onSearchPressed = !onSearchPressed;
    });
  }

  void _letsPress6() {
    setState(() {
      onLabelTapped = !onLabelTapped;
    });
  }

  void _letsPress7() {
    setState(() {
      onshareTapped = !onshareTapped;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 24),
              Padding(
                  padding: EdgeInsets.all(20),
                  child: GestureDetector(
                    onTap: _letsPress5,
                    child: onSearchPressed ? SearchTapped() : SearchXD(),
                  )),
              Padding(
                padding: EdgeInsets.all(20),
                child: CardXD(
                  child: Row(
                    children: [
                      Image.asset('images/user4.png', width: 100, height: 100),
                      SizedBox(width: 10),
                      Flexible(
                        child: Text(
                            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                fontSize: 13, color: Colors.grey[700])),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: _letsPress6,
                      child: onLabelTapped
                          ? IconButtonTapped(
                              icon: Icons.location_on,
                              text: 'Label',
                            )
                          : IconButtonXD(
                              icon: Icons.location_on,
                              text: 'Label',
                            ),
                    ),
                    GestureDetector(
                      onTap: _letsPress7,
                      child: onshareTapped
                          ? IconButtonTapped(icon: Icons.share, text: 'Share')
                          : IconButtonXD(
                              icon: Icons.share,
                              text: 'Share',
                            ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                          // FIRST BUTTON
                          onTap: _letsPress1,
                          child: buttonPressed1
                              ? ButtonTapped(
                                  icon: icons1,
                                )
                              : MyButton(
                                  icon: icons1,
                                )),
                    ),
                    Expanded(
                      child: GestureDetector(
                          // SECOND BUTTON
                          onTap: _letsPress2,
                          child: buttonPressed2
                              ? ButtonTapped(
                                  icon: icons2,
                                )
                              : MyButton(
                                  icon: icons2,
                                )),
                    ),
                    Expanded(
                      child: GestureDetector(
                          // THIRD BUTTON
                          onTap: _letsPress3,
                          child: buttonPressed3
                              ? ButtonTapped(
                                  icon: icons3,
                                )
                              : MyButton(
                                  icon: icons3,
                                )),
                    ),
                    Expanded(
                      child: GestureDetector(
                          // FOURTH BUTTON
                          onTap: _letsPress4,
                          child: buttonPressed4
                              ? ButtonTapped(
                                  icon: icons4,
                                )
                              : MyButton(
                                  icon: icons4,
                                )),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: CustomSwitch(
                  value: _enable,
                  onChanged: (bool val) {
                    setState(() {
                      _enable = val;
                    });
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Edittexttapped(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
