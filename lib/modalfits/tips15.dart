import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ModalFit15 extends StatelessWidget {
  final ScrollController scrollController;

  const ModalFit15({Key key, this.scrollController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SafeArea(
      top: false,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(mainAxisSize: MainAxisSize.min, 
        children: <Widget>[
          Divider(),
          _buildTitle('Don\'t give up'),
          SizedBox(height: 4),
          Divider(),
          _buildDescription(
              'If you\'ve had a bad interview for a job that you truly think would be a great fit for you (not just something you want badly), don\'t give up! Write a note, send an email, or call the interviewer to let him or her know that you think you did a poor job of communicating why you think this job would be a good match. Reiterate what you have to offer the company, and say that you\'d like an opportunity to contribute. Whether this strategy will get you a job offer depends on the company and on you. But one thing\'s for sure: If you don\'t try, your chances are exactly zero. We\'ve seen this approach work on numerous occasions, and we encourage you to give it that last shot.'),
        ]),
      ),
    ));
  }
}

_buildTitle(String text) {
  return Wrap(
    children: <Widget>[
      Text('$text',
          style: TextStyle(
              color: Colors.black, fontStyle: FontStyle.normal, fontWeight: FontWeight.w400, fontSize: 20))
    ],
  );
}
 _buildDescription (String text){
    return Wrap(
      children: <Widget>[
        Text('$text',style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300,  fontSize: 18))
      ],
    );
  }