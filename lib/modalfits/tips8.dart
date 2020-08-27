import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ModalFit8 extends StatelessWidget {
  final ScrollController scrollController;

  const ModalFit8({Key key, this.scrollController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
                  child: SafeArea(
      top: false,
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(mainAxisSize: MainAxisSize.min, 
          children: <Widget>[
            Divider(),
            _buildTitle('Get on the same side as the interviewer'),
            SizedBox(height: 4),
            Divider(),
            _buildDescription(
               'Many interviewers view job interviews as adversarial: Candidates are going to try to pry an offer out of the interviewer, and the interviewer\'s job is to hold onto it. Your job is to transform this "tug of war" into a relationship in which you\'re both on the same side. You could say something as simple as, "I\'m happy to have the chance to learn more about your company and to let you learn more about me, so we can see if this is going to be a good match or not. I always think that the worst thing that can happen is to be hired into a job that\'s wrong for you – then nobody\'s happy!'),
          ]),
      ),
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