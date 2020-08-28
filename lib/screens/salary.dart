import 'package:flutter/material.dart';  

import 'home.dart';

class Salary extends StatefulWidget {
  @override
  _SalaryState createState() => _SalaryState();
}

class _SalaryState extends State<Salary> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        body: SafeArea(
      child: Stack(
        children: <Widget>[
          ClipPath(
            clipper: HeaderColor(),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 350,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/salary.jpg')),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 210, left: 10.0, right: 10),
            child: Column(
              children: <Widget>[
                Align(
                    alignment: Alignment.bottomRight,
                    child: GestureDetector(
                      onTap: () =>  (''),
                      child: CircleAvatar(
                        radius: 20,
                        child: Icon(Icons.monetization_on))   
                      ),
                    ),
              
                SizedBox(height: 20),
                Text(
                  'HOW TO NEGOTIATE SALARY FOR A JOB OFFER',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Top Tips on Making a Valid request \n  For a befitting pay for that Job',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Divider(
                  height: 5,
                  thickness: 2,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 340, left: 5, right: 5),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Text(
                    'As a techie [for instance], one thing you always need to know about salary negotiation is that there isn’t a defined pay for your role as its all based on whatever skills you can give off. There might be a salary range, but there is never a defined pay, which is actually really great!',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(height: 5),
                  Divider(),
                  _buildTitle('1. Always Negotiate:'),
                  _buildDescription(
                      'Always! Do not ever think you’re still a newbie to it or won’t be worth it, like I always say to people around me, just do it! The worst that could happen would be reaching a mutual agreement or they say NO.'),
                  Divider(),
                  SizedBox(height: 5),
                  _buildTitle(
                      '2. Make your research on that role:'),
                  _buildDescription(
                      'Before telling them or making the move to negotiate, if you aren’t well informed, you might be asking for something even way smaller than expected in the market. Reach out to people in that field, senior colleagues, make google searches etc. Compare and contrast to see if what they’re offering from start is even worth the time. RESEARCH! (Don’t just jump right into accepting it)'),
                  Divider(),
                  SizedBox(height: 5),
                  _buildTitle('3. Rate your current skills:'),
                  _buildDescription(
                      'Do they equate or surpass what you’re going to be doing on the job? Are you going to be putting in more time? working with more technologies than you know of? Does it look like you’ll be learning on the job or basically doing the same thing over and over? That would determine if you should ask for more or not'),
                  Divider(),
                  SizedBox(height: 5),
                  _buildTitle(
                      '4. Negotiate based on the UPPER BOUND of the offer:'),
                  _buildDescription(
                      'e.g if their offer is say 300k-400k , start your own offer with 800k-900k. How does this work? once you set your start price to that, they might find it a bit hard to take it back to the original 300–400k, so that leaves their next amount for say 600 -700. Now you can both start making your back and forth between the new salary range you just set for them: 600–700...See what we did there? '),
                  Divider(),
                  SizedBox(height: 5),
                  _buildTitle(
                      '5.  Always aim for at least a 30% increase from what you were currently earning:'),
                  _buildDescription(
                      'Basic mathematics, your next pay should be higher than your current pay, I mean why else would you want to leave your current place if it isn’t one of the reasons.'),
                  Divider(),
                  SizedBox(height: 5),
                  _buildTitle(
                      '6. Negotiate for allowances:'),
                  _buildDescription(
                      'A very important rule I like to roll with is : If you can not get a higher salary range, always negotiate for allowances like medical coverage {HMO}, pension, lunch, car policy e.t.c depending on the company. I mean if you are not getting the cash, might as well benefit from others. Please note, some companies already include these in their employee package, so sometimes you do not have to worry about it, but please inquire before assuming.'),
                  Divider(),
                  SizedBox(height: 5),
                  _buildTitle('7.Never show your desperate spirit:'),
                  _buildDescription(
                      'If worse comes to worse {i.e, the HR team is also as stubborn as you}, Politely inform the recruiter on the least price you’re willing to take home Never show your desperate spirit, please (i’m actually begging), you’ll only be pushed to a tight corner and treated like you’re being done a favour. Even if you really have no other “means of survival”. Always remember you’re the one doing the company a favour by joining them and not the other way round'),
                  Divider(),
                  SizedBox(height: 5),
                  _buildTitle('8. Negotiate Your Gross and Net Salary:'),
                  _buildDescription(
                      'Your net salary is your basic take home, after your tax and co has been deducted. While Gross salary includes everything including tax. So if you aren’t careful, and never mention that, the HR team/ recruiter might just ride on that (they always do) and make a summary on your behalf, leaving you on the loosing side. An Example: if you are negotiating for 150k, and do not specify it’s for your NET salary/pay, do not be surprised on getting an “end of the month” alert of 120k or less. So ALWAYS be specific about negotiating just for your net salary.'),
                  Divider(),
                  SizedBox(height: 5),
                  _buildTitle('8. Finally:'),
                  _buildDescription(
                      'Always remember, you are doing the new company a favor and not the other way round. Be proud of your skills and be wiling to improve on them.'),
                  
                ],
              ),
            ),
          ),
        ],
      ),
    )));
  }

  
}

_buildTitle(String text) {
  return Wrap(
    children: <Widget>[
      Text('$text',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: 18,
          ))
    ],
  );
}

_buildDescription(String text) {
  return Wrap(
    children: <Widget>[
      Text('$text',
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.w300))
    ],
  );
}

class HeaderColor extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0, size.height - 80);
    path.lineTo(size.width, size.height - 160);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
