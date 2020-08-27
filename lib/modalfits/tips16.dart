import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ModalFit16 extends StatelessWidget {
  final ScrollController scrollController;

  const ModalFit16({Key key, this.scrollController}) : super(key: key);

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
            _buildTitle('Ask Questions'),
            SizedBox(height: 4),
            Divider(),
            _buildDescription(
                ' Here are some questions to ask: \n 1.Describe the culture of the firm: This question subtly pass a message to the interviewer that you are also interested in wether the firm is the right fit for you.\n 2. Shed more light on the day-to-day responsibilities of this role\n Learning the day-to-day tasks also gives an insight to specific skills and strengths needed to perform optimally in your role. \n 3. Can you outline the typical career path for someone in this role? Here, the interviewer will sense your need for career advancement. It also indicates your interest in growing within the org. However, don\'t ask in a way that\'d sound self-serving \n 4. What important qualities do I need to excel in this role? Oftentimes, there are some valuable information that’s not included in the job description. This question can help unfold more about the expectations. That way, you can work towards being a good fit. \n 5. What are the main challenges and opportunities the organization is facing? Thing is, if you know the org has recently launched a service / product you could work this into the question by asking how it is being received – this also shows them that you’ve done your research. \n How is success defined for the team I will be working in? \n 6. Can you tell me the challenges I might face if hired for this role? This is another opportunity for the interviewer to talk about the specifics of the role. It is also aimed at selling yourself. Like, “Oh, I faced a similar challenge, but here’s how I handled it…”'),
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