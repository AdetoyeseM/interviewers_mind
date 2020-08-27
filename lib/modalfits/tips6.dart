import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ModalFit6 extends StatelessWidget {
  final ScrollController scrollController;

  const ModalFit6({Key key, this.scrollController}) : super(key: key);

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
            _buildTitle('Practice, practice, practice'),
            SizedBox(height: 4),
            Divider(),
            _buildDescription(
                'It\'s one thing to come prepared with a mental answer to a question like, "Why should we hire you?" It\'s another challenge entirely to say it out loud in a confident and convincing way. The first time you try it, you\'ll sound garbled and confused, no matter how clear your thoughts are in your own mind! Do it another 10 times, and you\'ll sound a lot smoother and more articulate. But you shouldn\'t do your practicing when you\'re "on stage" with a recruiter; rehearse before you go to the interview. The best way to rehearse? Get two friends and practice interviewing each other in a "round robin": one person acts as the observer and the "interviewee" gets feedback from both the observer and the "interviewer." Go for four or five rounds, switching roles as you go. Another idea (but definitely second-best) is to tape record your answer and then play it back to see where you need to improve. Whatever you do, make sure your practice consists of speaking aloud. Rehearsing your answer in your mind won\'t cut it.'),
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