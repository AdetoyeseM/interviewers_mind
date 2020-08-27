import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:interviewers_mind/Animations/animation.dart';
import 'dart:async';
import 'package:interviewers_mind/model/slideList.dart';
import 'package:interviewers_mind/model/slidedots.dart';
import 'package:interviewers_mind/model/slideItem.dart';
import 'package:interviewers_mind/screens/home.dart';

class GETTING extends StatefulWidget {
  @override
  _GETTINGState createState() => _GETTINGState();
}

class _GETTINGState extends State<GETTING> {
  int currentPage = 0;
  final PageController pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 10), (Timer timer) {
      if (currentPage < 4) {
        currentPage++;
      } else {
        currentPage = 0;
      }
      pageController.animateToPage(currentPage,
          duration: Duration(milliseconds: 900), curve: Curves.easeIn);
    });
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => showDialog<bool>(
        context: context,
        builder: (c) => CupertinoAlertDialog(
          title: Text('Prompt!'),
          content: Text('Do you really want to exit?'),
          actions: <Widget>[
            CupertinoDialogAction(
              child: Text('Yes'),
              onPressed: () => Navigator.pop(c, true),
            ),
            FlatButton(
              child: Text('No'),
              onPressed: () => Navigator.pop(c, false),
            ),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: FadeAnimation(
              1.5,
              Column(
                children: <Widget>[
                  Expanded(
                      child: Stack(
                    alignment: AlignmentDirectional.bottomCenter,
                    children: <Widget>[
                      PageView.builder(
                        scrollDirection: Axis.horizontal,
                        controller: pageController,
                        onPageChanged: _onPageChanged,
                        itemCount: slideList.length,
                        itemBuilder: (ctx, i) => SlideItem(i),
                      ),
                      Stack(
                        alignment: AlignmentDirectional.bottomCenter,
                        children: <Widget>[
                          Container(
                              margin: const EdgeInsets.only(bottom: 35),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  for (int i = 0; i < slideList.length; i++)
                                    if (i == currentPage)
                                      SlideDots(true)
                                    else
                                      SlideDots(false)
                                ],
                              )),
                        ],
                      )
                    ],
                  )),
                  SizedBox(height: 10),
                  FadeAnimation(
                      1.8,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          FlatButton(
                            child: new Text(
                              'GETTING STARTED',
                              style: (TextStyle(
                                  fontSize: 15,
                                  letterSpacing: 2,
                                  fontWeight: FontWeight.bold)),
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            color: Theme.of(context).primaryColor,
                            padding: const EdgeInsets.all(15),
                            textColor: Colors.white,
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Home()));
                            },
                          ),
                        ],
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
