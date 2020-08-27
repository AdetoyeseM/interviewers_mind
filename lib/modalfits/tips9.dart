import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ModalFit9 extends StatelessWidget {
  final ScrollController scrollController;

  const ModalFit9({Key key, this.scrollController}) : super(key: key);

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
            _buildTitle('Be assertive and take responsibility for the interview'),
            SizedBox(height: 4),
            Divider(),
            _buildDescription(
               'Perhaps out of the effort to be polite, some usually assertive candidates become overly passive during job interviews. But politeness doesn\'t equal passivity. An interview is like any other conversation – it’s a dance in which you and a partner move together, both responding to the other. Don\'t make the mistake of just sitting there waiting for the interviewer to ask you about that Nobel Prize you won. It\'s your responsibility to make sure he walks away knowing your key selling points'),
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