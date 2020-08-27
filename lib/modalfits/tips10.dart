import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ModalFit10 extends StatelessWidget {
  final ScrollController scrollController;

  const ModalFit10({Key key, this.scrollController}) : super(key: key);

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
            _buildTitle('Be ready to handle illegal and inappropriate questions'),
            SizedBox(height: 4),
            Divider(),
            _buildDescription(
               'Interview questions about your race, age, gender, religion, marital status, and sexual orientation are inappropriate and in many areas illegal. Nevertheless, you may get one or more of them. If you do, you have a couple of options. You can simply answer with a question ("I\'m not sure how that\'s relevant to my application"), or you can try to answer "the question behind the question": "I don\'t know whether I\'ll decide to have children in the near future, but if you\'re wondering if I\'ll be leaving my job for an extended period of time, I can say that I\'m very committed to my career and frankly can\'t imagine giving it up."'),
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