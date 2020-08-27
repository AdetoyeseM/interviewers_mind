import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ModalFit14 extends StatelessWidget {
  final ScrollController scrollController;

  const ModalFit14({Key key, this.scrollController}) : super(key: key);

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
            _buildTitle('Speak the right body language'),
            SizedBox(height: 4),
            Divider(),
            _buildDescription(
                'Dress appropriately, make eye contact, give a firm handshake, have good posture, speak clearly, and don\'t wear perfume or cologne! Sometimes interview locations are small rooms that may lack good air circulation. You want the interviewer paying attention to your job qualifications -- not passing out because you\'ve come in wearing Chanel No. 5 and the candidate before you was doused with Brut, and the two have mixed to form a poisonous gas that results in you not getting an offer!'),
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