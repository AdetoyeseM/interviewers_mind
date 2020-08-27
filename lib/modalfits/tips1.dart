import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ModalFit extends StatelessWidget {
  final ScrollController scrollController;

  const ModalFit({Key key, this.scrollController}) : super(key: key);

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
              _buildTitle('Research the Industry and company'),
            SizedBox(height: 4),
            Divider(),
_buildDescription('An interviewer may ask how you perceive his company\'s position in its industry, who the firm\'s competitors are, what its competitive advantages are, and how it should best go forward. For this reason, avoid trying to thoroughly research a dozen different industries. Focus your job search on just a few industries instead.'),
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