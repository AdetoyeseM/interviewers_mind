import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ModalFit12 extends StatelessWidget {
  final ScrollController scrollController;

  const ModalFit12({Key key, this.scrollController}) : super(key: key);

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
            _buildTitle('Think positive'),
            SizedBox(height: 4),
            Divider(),
            _buildDescription(
               'No one likes a complainer, so don\'t dwell on negative experiences during an interview. Even if the interviewer asks you point blank, "What courses have you liked least?" or "What did you like least about that previous job?" don\'t answer the question. Or more specifically, don\'t answer it as it\'s been asked. Instead, say something like, "Well, actually I\'ve found something about all of my classes that I\'ve liked. For example, although I found [class] to be very tough, I liked the fact that [positive point about the class]" or "I liked [a previous job] quite a bit, although now I know that I really want to [new job]."'),
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