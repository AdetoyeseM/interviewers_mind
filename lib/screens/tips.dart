import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:interviewers_mind/Animations/animation.dart';
import 'package:interviewers_mind/modalfits/tips1.dart';
import 'package:interviewers_mind/modalfits/tips10.dart';
import 'package:interviewers_mind/modalfits/tips11.dart';
import 'package:interviewers_mind/modalfits/tips12.dart';
import 'package:interviewers_mind/modalfits/tips13.dart';
import 'package:interviewers_mind/modalfits/tips14.dart';
import 'package:interviewers_mind/modalfits/tips15.dart';
import 'package:interviewers_mind/modalfits/tips16.dart';
import 'package:interviewers_mind/modalfits/tips2.dart';
import 'package:interviewers_mind/modalfits/tips3.dart';
import 'package:interviewers_mind/modalfits/tips4.dart';
import 'package:interviewers_mind/modalfits/tips5.dart';
import 'package:interviewers_mind/modalfits/tips6.dart';
import 'package:interviewers_mind/modalfits/tips7.dart';
import 'package:interviewers_mind/modalfits/tips8.dart';
import 'package:interviewers_mind/modalfits/tips9.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import 'home.dart';

class Tips extends StatefulWidget {
  @override
  _TipsState createState() => _TipsState();
}

class _TipsState extends State<Tips> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: FadeAnimation(
      1.0,
      Column(children: [
        Stack(
          children: [
            CachedNetworkImage(
                imageUrl:
                    'https://firebasestorage.googleapis.com/v0/b/interview-s-mind.appspot.com/o/interviewpix%2Finterview6.jpg?alt=media&token=c670fb99-7400-49da-9579-14389173f293',
                height: 300,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
                color: Colors.black54,
                colorBlendMode: BlendMode.darken),
            FadeAnimation(
              1.2,
              Container(
                height: 300,
                color: Colors.black12,
                padding: EdgeInsets.only(top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                        left: 7,
                        right: 24,
                      ),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                             Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                            },
                            child: Container(
                              child: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    FadeAnimation(
                      1.4,
                      Container(
                          padding: EdgeInsets.only(
                            left: 24,
                            right: 24,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RotatedBox(
                                quarterTurns: 1,
                                child: Text(
                                  'Interview Tips',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 35),
                                ),
                              ),
                              SizedBox(width: 10),
                              Positioned(
                                left: 50,
                                top: 51,
                                child: Column(
                                  children: <Widget>[
                                    SizedBox(height: 20),
                                    Text(
                                      'Career',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 60,
                                      ),
                                    ),
                                    Text(
                                      'Resources',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    FadeAnimation(
                      1.6,
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30))),
                        height: 20,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        FadeAnimation(
          1.8,
          Container(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Divider(
                    height: 1,
                  ),
                  ListTile(
                      trailing: Icon(Icons.arrow_right),
                      title: Text('Research the Industry and Company', style: (TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.w300)),),
                      leading: CircleAvatar(child: Text('1.')),
                      onTap: () => showMaterialModalBottomSheet(
                            expand: false,
                            context: context,
                            backgroundColor: Colors.transparent,
                            builder: (context, scrollController) =>
                                ModalFit(scrollController: scrollController),
                          )),
                  Divider(),
                  ListTile(
                      trailing: Icon(Icons.arrow_right),
                      title: Text(
                          'Clarify Your "selling Points" and the reasons you want the job ', style: (TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.w300)),),
                      leading: CircleAvatar(child: Text('2.')),
                      onTap: () => showMaterialModalBottomSheet(
                            expand: false,
                            context: context,
                            backgroundColor: Colors.transparent,
                            builder: (context, scrollController) =>
                                ModalFit2(scrollController: scrollController),
                          )),
                  Divider(),
                  ListTile(
                      trailing: Icon(Icons.arrow_right),
                      title: Text(
                          'Anticipate the Interviews concerns and reservations', style: (TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.w300)),),
                      leading: CircleAvatar(child: Text('3.')),
                      onTap: () => showMaterialModalBottomSheet(
                            expand: false,
                            context: context,
                            backgroundColor: Colors.transparent,
                            builder: (context, scrollController) =>
                                ModalFit3(scrollController: scrollController),
                          )),
                  Divider(),
                  ListTile(
                      trailing: Icon(Icons.arrow_right),
                      title: Text('Prepare for common interview questions', style: (TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.w300)),),
                      leading: CircleAvatar(child: Text('4.')),
                      onTap: () => showMaterialModalBottomSheet(
                            expand: false,
                            context: context,
                            backgroundColor: Colors.transparent,
                            builder: (context, scrollController) =>
                                ModalFit4(scrollController: scrollController),
                          )),
                  Divider(),
                  ListTile(
                      trailing: Icon(Icons.arrow_right),
                      title: Text('Line up your questions for the interviewer', style: (TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.w300)),),
                      leading: CircleAvatar(child: Text('5.')),
                      onTap: () => showMaterialModalBottomSheet(
                            expand: false,
                            context: context,
                            backgroundColor: Colors.transparent,
                            builder: (context, scrollController) =>
                                ModalFit5(scrollController: scrollController),
                          )),
                  Divider(),
                  ListTile(
                      trailing: Icon(Icons.arrow_right),
                      title: Text('Practice, Practice, Practice', style: (TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.w300)),),
                      leading: CircleAvatar(child: Text('6.')),
                      onTap: () => showMaterialModalBottomSheet(
                            expand: false,
                            context: context,
                            backgroundColor: Colors.transparent,
                            builder: (context, scrollController) =>
                                ModalFit6(scrollController: scrollController),
                          )),
                  Divider(),
                  ListTile(
                      trailing: Icon(Icons.arrow_right),
                      title: Text('Score a success in the first five minutes', style: (TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.w300)),),
                      leading: CircleAvatar(child: Text('7.')),
                      onTap: () => showMaterialModalBottomSheet(
                            expand: false,
                            context: context,
                            backgroundColor: Colors.transparent,
                            builder: (context, scrollController) =>
                                ModalFit7(scrollController: scrollController),
                          )),
                  Divider(),
                  ListTile(
                      trailing: Icon(Icons.arrow_right),
                      title: Text('Get on the same side as the interviewer', style: (TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.w300)),),
                      leading: CircleAvatar(child: Text('8.')),
                      onTap: () => showMaterialModalBottomSheet(
                            expand: false,
                            context: context,
                            backgroundColor: Colors.transparent,
                            builder: (context, scrollController) =>
                                ModalFit8(scrollController: scrollController),
                          )),
                  Divider(),
                  ListTile(
                      trailing: Icon(Icons.arrow_right),
                      title: Text(
                          'Be assertive and take responsibility for the interview', style: (TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.w300)),),
                      leading: CircleAvatar(child: Text('9.')),
                      onTap: () => showMaterialModalBottomSheet(
                            expand: false,
                            context: context,
                            backgroundColor: Colors.transparent,
                            builder: (context, scrollController) =>
                                ModalFit9(scrollController: scrollController),
                          )),
                  Divider(),
                  ListTile(
                      trailing: Icon(Icons.arrow_right),
                      title: Text(
                          'Be ready to handle illegal and inappropriate questions', style: (TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.w300)),),
                      leading: CircleAvatar(child: Text('10.')),
                      onTap: () => showMaterialModalBottomSheet(
                            expand: false,
                            context: context,
                            backgroundColor: Colors.transparent,
                            builder: (context, scrollController) =>
                                ModalFit10(scrollController: scrollController),
                          )),
                  Divider(),
                  ListTile(
                      trailing: Icon(Icons.arrow_right),
                      title: Text('Make Your selling points clear', style: (TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.w300)),),
                      leading: CircleAvatar(child: Text('11')),
                      onTap: () => showMaterialModalBottomSheet(
                            expand: false,
                            context: context,
                            backgroundColor: Colors.transparent,
                            builder: (context, scrollController) =>
                                ModalFit11(scrollController: scrollController),
                          )),
                  Divider(),
                  ListTile(
                      title: Text('Think Positive', style: (TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.w300)),),
                      leading: CircleAvatar(child: Text('12')),
                      trailing: Icon(Icons.arrow_right),
                      onTap: () => showMaterialModalBottomSheet(
                            expand: false,
                            context: context,
                            backgroundColor: Colors.transparent,
                            builder: (context, scrollController) =>
                                ModalFit12(scrollController: scrollController),
                          )),
                  Divider(),
                  ListTile(
                      title: Text('Close on a positive note', style: (TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.w300)),),
                      trailing: Icon(Icons.arrow_right),
                      leading: CircleAvatar(
                        child: Text('13'),
                      ),
                      onTap: () => showMaterialModalBottomSheet(
                            expand: false,
                            context: context,
                            backgroundColor: Colors.transparent,
                            builder: (context, scrollController) =>
                                ModalFit13(scrollController: scrollController),
                          )),
                  Divider(),
                  ListTile(
                      trailing: Icon(Icons.arrow_right),
                      title: Text('Speak the right body language', style: (TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.w300)),),
                      leading: CircleAvatar(child: Text('14')),
                      onTap: () => showMaterialModalBottomSheet(
                            expand: false,
                            context: context,
                            backgroundColor: Colors.transparent,
                            builder: (context, scrollController) =>
                                ModalFit14(scrollController: scrollController),
                          )),
                  
                  Divider(),
                  ListTile(
                      trailing: Icon(Icons.arrow_right),
                      title: Text('Ask Questions', style: (TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.w300)),),
                      leading: CircleAvatar(child: Text('15')),
                      onTap: () => showMaterialModalBottomSheet(
                            expand: false,
                            context: context,
                            backgroundColor: Colors.transparent,
                            builder: (context, scrollController) =>
                                ModalFit16(scrollController: scrollController),
                          )),
                          Divider(),
                  ListTile(
                      trailing: Icon(Icons.arrow_right),
                      title: Text('Dont Give up', style: (TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.w300)),),
                      leading: CircleAvatar(child: Text('16.')),
                      onTap: () => showMaterialModalBottomSheet(
                            expand: false,
                            context: context,
                            backgroundColor: Colors.transparent,
                            builder: (context, scrollController) =>
                                ModalFit15(scrollController: scrollController),
                          )),
                ],
              ),
            ),
          ),
        ),
      ]),
    )));
  }
}
