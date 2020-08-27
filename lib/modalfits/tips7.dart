import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ModalFit7 extends StatelessWidget {
  final ScrollController scrollController;

  const ModalFit7({Key key, this.scrollController}) : super(key: key);

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
            _buildTitle('Score a success in the first five minutes'),
            SizedBox(height: 4),
            Divider(),
            _buildDescription(
               'Some studies indicate that interviewers make up their minds about candidates in the first five minutes of the interview – and then spend the rest of the interview looking for things to confirm that decision! So what can you do in those five minutes to get through the gate? Come in with energy and enthusiasm, and express your appreciation for the interviewer\'s time. (Remember: She may be seeing a lot of other candidates that day and may be tired from the flight in. So bring in that energy!)Also, start off with a positive comment about the company – something like, "I\'ve really been looking forward to this meeting [not "interview"]. I think [the company] is doing great work in [a particular field or project], and I\'m really excited by the prospect of being able to contribute.'),
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