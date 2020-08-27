import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:interviewers_mind/Animations/animation.dart';
import 'package:interviewers_mind/model/homeModel.dart';
import 'package:interviewers_mind/model/data.dart';
import 'package:interviewers_mind/model/hometile.dart';
import 'package:interviewers_mind/screens/dressing.dart';
import 'package:interviewers_mind/screens/salary.dart';
import 'package:interviewers_mind/screens/tips.dart';
import 'QA.dart';
import 'cv.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<HomeModel> home = new List();

  @override
  void initState() {
    home = getHome();
    super.initState();
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
              onPressed: () {
                exit(0);
              },
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
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: FadeAnimation(
              1.0,
              Container(
                padding: EdgeInsets.all(7),
                child: Image.asset('assets/images/menu.png'),
                height: 20,
                width: 20,
              ),
            ),
            title: FadeAnimation(
              1.0,
              Row(
                children: [
                  Image.asset(
                    'assets/images/vector1.png',
                    height: 30,
                  ),
                  Text(
                    "Interviewer's Mind",
                    style: TextStyle(
                        color: Colors.black54, fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            elevation: 0.0,
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 14, vertical: 14),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FadeAnimation(
                      1.1,
                      Text(
                        "Get Prepared",
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.black54,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    FadeAnimation(
                      1.1,
                      Text(
                        "Pluck Up your courage",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black54,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    FadeAnimation(
                      1.2,
                      Container(
                        height: 150,
                        child: ListView.builder(
                            padding: EdgeInsets.symmetric(horizontal: 4),
                            itemCount: home.length,
                            shrinkWrap: true,
                            physics: ClampingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return HomeListTile(
                                title: home[index].title,
                                imgUrl: home[index].imgUrl,
                              );
                            }),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    FadeAnimation(
                      1.3,
                      Text(
                        "Start Learning",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black54,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                    FadeAnimation(
                      1.4,
                      Container(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Card(
                              color: Colors.lightBlue[50],
                              elevation: 1,
                              child: ListTile(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Tips()));
                                },
                                leading: CachedNetworkImage(
                                  placeholder: (context, url) =>
                                      CircularProgressIndicator(),
                                  imageUrl:
                                      'https://firebasestorage.googleapis.com/v0/b/interview-s-mind.appspot.com/o/interviewpix%2Fvector1.png?alt=media&token=6eb9a257-855b-4c16-9338-17109a676e39',
                                ),
                                title: Text(
                                  'Top Interview Tips',
                                  style:
                                      TextStyle(letterSpacing: 2, fontSize: 14),
                                  textAlign: TextAlign.left,
                                ),
                                subtitle: Text(''),
                              )),
                          Card(
                              color: Colors.green[50],
                              elevation: 1,
                              child: ListTile(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => QA()));
                                },
                                leading: CachedNetworkImage(
                                  placeholder: (context, url) =>
                                      CircularProgressIndicator(),
                                  imageUrl:
                                      'https://firebasestorage.googleapis.com/v0/b/interview-s-mind.appspot.com/o/interviewpix%2Fquestions.png?alt=media&token=cfff39d7-25d6-48ca-ac89-6917718b6581',
                                ),
                                title: Text(
                                  'Top Interview Q & A',
                                  style:
                                      TextStyle(letterSpacing: 2, fontSize: 14),
                                  textAlign: TextAlign.left,
                                ),
                                subtitle: Text(''),
                              )),
                          Card(
                              color: Colors.red[50],
                              elevation: 1,
                              child: ListTile(
                                onTap: () {
                                  //   createInterstitialAd()..load()..show();
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Dressing()));
                                },
                                leading: CachedNetworkImage(
                                  placeholder: (context, url) =>
                                      CircularProgressIndicator(),
                                  imageUrl:
                                      'https://firebasestorage.googleapis.com/v0/b/interview-s-mind.appspot.com/o/interviewpix%2Fdrezz.png?alt=media&token=3de6cb72-2d9a-4600-8848-4ba3d3b54047',
                                ),
                                title: Text(
                                  'Dressing Etiquettes',
                                  style:
                                      TextStyle(letterSpacing: 2, fontSize: 14),
                                  textAlign: TextAlign.left,
                                ),
                                subtitle: Text(''),
                              )),
                          Card(
                              color: Colors.blue[100],
                              elevation: 1,
                              child: ListTile(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => CV()));
                                },
                                leading: CachedNetworkImage(
                                  placeholder: (context, url) =>
                                      CircularProgressIndicator(),
                                  imageUrl:
                                      'https://firebasestorage.googleapis.com/v0/b/interview-s-mind.appspot.com/o/interviewpix%2Fcvv.png?alt=media&token=e0a8e764-69b6-43d4-a790-8a6e0b60b418',
                                ),
                                title: Text(
                                  'CV & Cover letter \nbuilder',
                                  style:
                                      TextStyle(letterSpacing: 2, fontSize: 14),
                                  textAlign: TextAlign.left,
                                ),
                                subtitle: Text(''),
                              )),
                          Card(
                              color: Colors.grey[100],
                              elevation: 1,
                              child: ListTile(
                                onTap: () { 
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Salary()));
                                },
                                leading: CachedNetworkImage(
                                  placeholder: (context, url) =>
                                      CircularProgressIndicator(),
                                  imageUrl:
                                      'https://firebasestorage.googleapis.com/v0/b/interview-s-mind.appspot.com/o/interviewpix%2Fnego.png?alt=media&token=7a98eafa-0dfc-48c7-9a1d-4f8e4397fd9d',
                                ),
                                title: Text(
                                  'Salary Negotiation',
                                  style:
                                      TextStyle(letterSpacing: 2, fontSize: 14),
                                  textAlign: TextAlign.left,
                                ),
                                subtitle: Text(''),
                              )),
                          Card(
                              color: Colors.green[100],
                              elevation: 1,
                              child: ListTile(
                                onTap: () {
                                  // createInterstitialAd()..load()..show();
                                  Navigator.pop(context);
                                },
                                leading: CachedNetworkImage(
                                  placeholder: (context, url) =>
                                      CircularProgressIndicator(),
                                  imageUrl:
                                      'https://firebasestorage.googleapis.com/v0/b/interview-s-mind.appspot.com/o/interviewpix%2Fvector4.png?alt=media&token=d4e36975-7ce1-4635-adf3-8143b1384423',
                                ),
                                title: Text(
                                  'Job Search',
                                  style:
                                      TextStyle(letterSpacing: 2, fontSize: 14),
                                  textAlign: TextAlign.left,
                                ),
                                subtitle: Text(''),
                              )),
                        ],
                      )),
                    )
                  ]),
            ),
          )),
    );
  }
}
