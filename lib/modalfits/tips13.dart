import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ModalFit13 extends StatelessWidget {
  final ScrollController scrollController;

  const ModalFit13({Key key, this.scrollController}) : super(key: key);

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
            _buildTitle('Close on a positive note'),
            SizedBox(height: 4),
            Divider(),
            _buildDescription(
                'Tell the interviewer that you\'d really like the job, that you were excited about it before the interview and even more excited now, and that you\'re convinced you\'d like to work there. If there are two equally good candidates at the end of the search – the interviewer will think you\'re more likely to accept the offer, and thus may be more inclined to make an offer to you."I\'ve done some careful career self-assessment, and I know that I\'m most interested in [one or two of your most important career interest themes] – it seems that this position would allow me to express those interests. I also know that I\'m most motivated by [two or three of your most important motivators], and I have the sense that if I do well, I could get those rewards in this position. Finally, I know that my strongest abilities are [two or three of your strongest abilities], and I see those as being the abilities you most need for this position." If you follow this tip, you\'ll be: \n - Asking for the job \n - Explaining why you think it\'s a good match \n - Displaying your thoughtfulness and maturity \n - Further disarming the tug-of-war dynamic that interviewers anticipate. You\'ll be making the strongest possible "close" – and that\'s worth a lot!'),
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