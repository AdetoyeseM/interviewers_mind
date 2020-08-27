import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ModalFit5 extends StatelessWidget {
  final ScrollController scrollController;

  const ModalFit5({Key key, this.scrollController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
                  child: SafeArea(
      top: false,
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[ 
              Divider(),
              _buildTitle('Line up your questions for the interviewer.'),
              SizedBox(height: 4),
              Divider(),

              
_buildDescription('Come to the interview with some intelligent questions for the interviewer that demonstrate your knowledge of the company as well as your serious intent. Interviewers always ask if you have any questions, and no matter what, you should have one or two ready. If you say, "No, not really," he or she may conclude that you\'re not all that interested in the job or the company. A good all-purpose question is, "If you could design the ideal candidate for this position from the ground up, what would he or she be like? "If you\'re having a series of interviews with the same company, you can use some of your prepared questions with each person you meet (for example, "What do you think is the best thing about working here?" and "What kind of person would you most like to see fill this position?") Then, try to think of one or two others during each interview itself.'),
            ]
          ),
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