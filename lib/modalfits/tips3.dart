import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ModalFit3 extends StatelessWidget {
  final ScrollController scrollController;

  const ModalFit3({Key key, this.scrollController}) : super(key: key);

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
               _buildTitle('Anticipate the interview\'s concerns and reservations'),
            SizedBox(height: 4),
            Divider(),
_buildDescription('There are always more candidates for positions than there are openings. So interviewers look for ways to screen people out. Put yourself in their shoes and ask yourself why they might not want to hire you (“I don\'t have this,” “I\'m not that,” etc.). Then prepare your defense: “I know you may be thinking that I might not be the best fit for this position because [their reservation]. But you should know that [reason the interviewer shouldn\'t be overly concerned].'),
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