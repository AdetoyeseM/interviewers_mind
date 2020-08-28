import 'package:flutter/material.dart'; 
import 'package:url_launcher/url_launcher.dart';

import 'home.dart';

class CV extends StatefulWidget {
  @override
  _CVState createState() => _CVState();
}

class _CVState extends State<CV> {
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
                    image: AssetImage('assets/images/cvvv.jpg')),
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
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
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
                      onTap: () => launch('https://builder.zety.com/resume/section/cntc'),
                      child: CircleAvatar(
                        radius: 20,
                        child: Text(
                          'BUILD\nYOUR\n   CV ',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 8),
                        ),
                        foregroundColor: Colors.white,
                      ),
                    )),
                SizedBox(height: 20),
                Text(
                  'RESUME & COVER LETTERS TIPS',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Top Resume and Cover letters tips\n  That will Get you Hired Today',
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
                    '   Hiring Executives and recruiters alike agree they\'ve lately had more badly written resumes hitting their desk than ever...Attract more interview offers and make sure your CV doesn\'t exclude you from getting that dream by following these main tips:',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(height: 5),
                  Divider(),
                  _buildTitle('1. Formatting is Key:'),
                  _buildDescription(
                      'No matter how well written, the first time your CV / Resume does not get a detailed reading through; mind you, a Resume is normally scanned in 25 seconds scanning is more difficult in situations where it is difficult to read, incorrectly arranged or exceeds two pages...You can also make ue of bullets points to grab the reader\'s attention immediately in the first scan'),
                  Divider(),
                  SizedBox(height: 5),
                  _buildTitle(
                      '2. Write your resume to cater for the Particular industry:'),
                  _buildDescription(
                      'Unlike advertisement and marketing professionals with a larger artistic freedom to develop their resume for those fields, a few recruiting managers from industriesapart from the above will not be inspriredand will be put off by distictive resume marketing, So it is better to be conservative'),
                  Divider(),
                  SizedBox(height: 5),
                  _buildTitle('3. Highlight your skills section:'),
                  _buildDescription(
                      'Each resume section will concentrate on the job for which you are applyling and offer the right qualifications for that sector...Think of your talents, which can be valued through these industries. This is also important; So highlight, your skills section thoroughly.'),
                  Divider(),
                  SizedBox(height: 5),
                  _buildTitle(
                      '4. Forget "writing references available upon request":'),
                  _buildDescription(
                      'It goes that without saying that if requested, you can have them, so it\'s a waste of time and energy toput references on a resume or write "references on request."'),
                  Divider(),
                  SizedBox(height: 5),
                  _buildTitle(
                      '5. Choose the perfect template that would reflect the Industry:'),
                  _buildDescription(
                      'When applying for a creative Job, try using a more innoviative resume template, or using your marketable skills to create your own-Be careful to add too much flair: the CV is still a technical text and too many decorative touches will make it tacky and hard to read..By Clicking the Circular button above you can get loads of templates to build your CV'),
                  Divider(),
                  SizedBox(height: 5),
                  _buildTitle(
                      '6. Downplay your gaps- Especially in your work history:'),
                  _buildDescription(
                      'Gaps in your job experience give HR managers the wrong signals. De-emphasising these differences is the best interest, and discussing them in person is the best thing. This proves to applicable when you land in the interview room'),
                  Divider(),
                  SizedBox(height: 5),
                  _buildTitle('7.Tell the truth: the utter Truth'),
                  _buildDescription(
                      'The most successful lies can bring your career crashing down. So tell only the truth to the Hiring managers'),
                  Divider(),
                  SizedBox(height: 5),
                  _buildTitle('8. Networking will prove to be vital:'),
                  _buildDescription(
                      'For Jobless applicants, a full-time work would be to distribute resumes. Many mid-to-senior-level roles are filled by networking, so contact everybody you meet, except recruiters who are willing to promote you or share ideas totally.'),
                  Divider(),
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
