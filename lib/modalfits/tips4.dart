import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ModalFit4 extends StatelessWidget {
  final ScrollController scrollController;

  const ModalFit4({Key key, this.scrollController}) : super(key: key);

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
               _buildTitle('Prepare for common interview Questions'),
            SizedBox(height: 4),
            Divider(),
_buildDescription('Every "how to interview" book has a list of a hundred or more "common interview questions." (You might wonder just how long those interviews are if there are that many common questions!) So how do you prepare? Pick any list and think about which questions you\'re most likely to encounter, given your age and status (about to graduate, looking for a summer internship). Then prepare your answers so you won\'t have to fumble for them during the actual interview.'),
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