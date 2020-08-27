import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ModalFit2 extends StatelessWidget {
  final ScrollController scrollController;

  const ModalFit2({Key key, this.scrollController}) : super(key: key);

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
              _buildTitle('Clarify your "Selling points" and the reasons you want the job'),
            SizedBox(height: 4),
            Divider(),
  _buildDescription('Prepare to go into every interview with three to five key selling points in mind, such as what makes you the best candidate for the position. Have an example of each selling point prepared \n("I have good communication skills. For example, I persuaded an entire group to ..."). And be prepared to tell the interviewer why you want that job – including what interests you about it, what rewards it offers that you find valuable, and what abilities it requires that you possess. If an interviewer doesn\'t think you\'re really, really interested in the job, he or she won\'t give you an offer – no matter how good you are!'),
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