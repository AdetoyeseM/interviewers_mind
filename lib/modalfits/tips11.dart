import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ModalFit11 extends StatelessWidget {
  final ScrollController scrollController;

  const ModalFit11({Key key, this.scrollController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
                  child: SafeArea(
      top: false,
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            Divider(),
            _buildTitle('Make your selling points clear'),
            SizedBox(height: 4),
            Divider(),
            _buildDescription(
               'If a tree falls in the forest and no one is there to hear it, did it make a sound? More important, if you communicate your selling points during a job interview and the interviewer doesn\'t get it, did you score? On this question, the answer is clear: No! So don\'t bury your selling points in long-winded stories. Instead, tell the interviewer what your selling point is first, then give the example'),
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