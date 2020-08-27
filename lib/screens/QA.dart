import 'package:flutter/material.dart';
import 'package:getflutter/components/accordian/gf_accordian.dart';
import 'package:interviewers_mind/Animations/animation.dart';

import 'home.dart';

/// this class uses this library getflutter
/// the link to it is : https://pub.dev/packages/getflutter

// ignore: camel_case_types
class QA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: FadeAnimation(
          1.0,
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
            },
            child: Container(
              padding: EdgeInsets.all(7),
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
                size: 20,
              ),
              
            ),
          ),
        ),
        title: FadeAnimation(1.1,
         Row(
            children: [
              Image.asset(
                'assets/images/vector1.png',
                height: 30,
              ),
              Text(
                "Interview Q & A",
                style:
                    TextStyle(color: Colors.black54, fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        
        child: Center(
          child: FadeAnimation(1.3, 
           Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Divider(),
                GFAccordion(
                  title: 'Tell me a little about yourself',
                  content:
                      'I am ADETOYESE MATTHEW, a Computer Science graduate from TASUED. I like to apply my analytical skills to develop worldclass products in the XYZ domain. When I am not working, I volunteer to NGO’s as it gives me an opportunity to serve needy people. I also travel a lot and an active member of XXX travel group or club through which I could explore my hobby more.',textStyle: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w300),
                  collapsedIcon: Text('Show',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                  expandedIcon: Text('Hide',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                ),
                 Divider(),
                 GFAccordion(
                  title: 'Why do you want to work in this company?',textStyle: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w300),
                  content:
                      'I would be proud to work for a company like yours with such a long history of leadership in theindustry. I have carried out web research and believe that the company’s XYZ products and its future projections are very impressive and promising. The XXX team is the team I would take pride to work with. A place where my skills or background fits perfectly and can be utilized respectively.',
                  collapsedIcon: Text('Show',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                  expandedIcon: Text('Hide',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                ),
                Divider(),
                  GFAccordion(
                  title: 'Do you consider yourself successful?',textStyle: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w300),
                  content:
                      'I feel successful when I meet my short term as well as the long-term goals. I try to achieve the set goals and work hard as much as I can, I try to reach those goals and achieve the desired outcome. I want to recognize myself as someone with a progressive attitude who does his best and gives 100% to attain goals. To me success is not just my personal achievements but also by the efforts of the people around me.',
                  collapsedIcon: Text('Show',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                  expandedIcon: Text('Hide',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                ),
                Divider(),
                  GFAccordion(
                  title: 'Are you willing to travel?',textStyle: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w300),
                  content:
                      'Yes. I love traveling. Adjusting in new places and meeting new people would be a delightful experience for me.',
                  collapsedIcon: Text('Show',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                  expandedIcon: Text('Hide',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                ),
                 Divider(),
                  GFAccordion(
                  title: 'WWhat are your salary expectations?',textStyle: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w300),
                  content:
                      'As of now, I haven’t thought much about it. I’m more focused on learning the requirements for this position that I am applying for',
                  collapsedIcon: Text('Show',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                  expandedIcon: Text('Hide',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                ),
                  Divider(),
                  GFAccordion(
                  title: 'What would you consider your greatest strengths & weakness?',textStyle: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w300),
                  content:
                      'My strength is my ability to convert negative work environment into a positive and at the same time, developing a supportive team. I am also capable of keeping many projects on track and ensuringdeadlines are met. As far as my weakness is concerned I get impatient sometimes in order to get everything done very quickly. To tackle the problem, I am trying to re-consider the to-do list and prioritize the tasks.',
                  collapsedIcon: Text('Show',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                  expandedIcon: Text('Hide',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                ),
                  Divider(),
                  GFAccordion(
                  title: 'What motivates you?',textStyle: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w300),
                  content:
                      'I am very result-oriented person; my primary motivation is to achieve the desired end result. While I enjoy working on the project of my own, I am particularly motivated by the buzz of working in a team. It’s very exciting working closely with others, who share the same common goal. I also like to take on the challenge, and rise to that challenge as part of a concerted team effort.',
                  collapsedIcon: Text('Show',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                  expandedIcon: Text('Hide',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                ),
                  Divider(),
                  GFAccordion(
                  title: 'Tell me about your dream job',textStyle: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w300),
                  content:
                      'The only dream job I’ve always had was a job that keeps me busy, a job wherein I get to contribute to the company’s success',
                  collapsedIcon: Text('Show',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                  expandedIcon: Text('Hide',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                ),
                  Divider(),
                  GFAccordion(
                  title: 'What experience do you have in this field?',textStyle: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w300),
                  content:
                      'I have created several systems that are still in used to this day. Some of the systems I’m proud include [mention those remarkable ones]',
                  collapsedIcon: Text('Show',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                  expandedIcon: Text('Hide',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                ),
                  Divider(),
                  GFAccordion(
                  title: 'Why should we hire you?',textStyle: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w300),
                  content:
                      'As I have said earlier, my years of experience in this field is something that can truly contribute to this company’s success. My sense of dedication in every task that I handle is definitely a big plus. I believe my skills and work attitude measures up to your company standards.If hired, I will carry forward this ability of leadership and strategies for achieving profit gains to this position.',
                  collapsedIcon: Text('Show',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                  expandedIcon: Text('Hide',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                ),
                  Divider(),
                  GFAccordion(
                  title: 'Are you a team player?',textStyle: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w300),
                  content:
                      'Yes, definitely. While I will deny the fact that I can work independently with minimal supervision, I’m also one companion every leader would ever wanted to be in his team. Whatever task is assigned to me, I make sure it meets and exceeds what is expected of me. I also make it a point to reach out to teammates whenever needed.',
                  collapsedIcon: Text('Show',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                  expandedIcon: Text('Hide',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                ),
                  Divider(),
                  GFAccordion(
                  title: 'What is your philosophy towards work?',textStyle: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w300),
                  content:
                      'I have only one philosophy when it comes to work: every piece of work, regardless of size, has to be done on time and in the right manner.',
                  collapsedIcon: Text('Show',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                  expandedIcon: Text('Hide',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                ),
                  Divider(),
                  GFAccordion(
                  title: ' What have you learned from mistakes on the job?',textStyle: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w300),
                  content:
                      'I learned that without proper coordination, even the simplest task could cause problems in a project. I had this problem during my first job. From that time on, I made sure every I thing follows every detail and coordination.',
                  collapsedIcon: Text('Show',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                  expandedIcon: Text('Hide',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                ),
                  Divider(),
                  GFAccordion(
                  title: 'How would you know you were successful on this job?',textStyle: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w300),
                  content:
                      'Being successful means goals that are set are met. Being successful also means standards are not only reach, but also even exceeded wherever possible.',
                  collapsedIcon: Text('Show',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                  expandedIcon: Text('Hide',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                ),
                  Divider(),
                  GFAccordion(
                  title: 'Describe your management style',textStyle: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w300),
                  content:
                      'Basically, my management style comes with promptness and flexibility. To make sure goals are achieved, I religiously study and make plans down to the smallest detail. While I do implement a strict sense of being time bounded, I also add reasonable allowances and make room for contingencies.',
                  collapsedIcon: Text('Show',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                  expandedIcon: Text('Hide',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                ),
                  Divider(),
                     GFAccordion(
                  title: 'Are you willing to work overtime? Nights? Weekends?',textStyle: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w300),
                  content:
                      'I understand that being asked to work for an extended number of hours comes with a good reason in the first place, so I’m ok with it. It an extra effort means something for the company, I’ll be happy to do it.',
                  collapsedIcon: Text('Show',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                  expandedIcon: Text('Hide',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                ),
                  Divider(),
                  GFAccordion(
                  title: 'What will you do if you don’t get this position?',textStyle: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w300),
                  content:
                      'I have high hopes that I will be hired. In case it turns the other way around, I would have to move on and search for another job.',
                  collapsedIcon: Text('Show',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                  expandedIcon: Text('Hide',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                ),
                  Divider(),
                  GFAccordion(
                  title: 'What have you done to improve your knowledge in the last year?',textStyle: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w300),
                  content:
                      'I have attended in several self-improvement, time management and personality development seminars. I have also participated in training workshops related to [industry].',
                  collapsedIcon: Text('Show',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                  expandedIcon: Text('Hide',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                ),
                  Divider(),
                  GFAccordion(
                  title: 'How you would be an asset to this company?',textStyle: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w300),
                  content:
                      'My skills in ["...."] are outstanding. I have earned a lot of awards and certifications from my past employers. As an employee, I handle pressure with ease and can work with minimal supervision.',
                  collapsedIcon: Text('Show',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                  expandedIcon: Text('Hide',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                ),
                  Divider(),
                  GFAccordion(
                  title: 'How long would you expect to work for us in case you are hired?',textStyle: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w300),
                  content:
                      'As much as possible I would like to be in this company for a long time. For as long as management sees me as an asset, I am willing to stay.',
                  collapsedIcon: Text('Show',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                  expandedIcon: Text('Hide',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                ),
                  Divider(),
                  GFAccordion(
                  title: 'Describe your ability to work under pressure.',textStyle: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w300),
                  content:
                      'I understand the nature of this position that I am applying for quite well, along with the pressure that comes with it. Being under pressure doesn’t discourage me but motivates me more.',
                  collapsedIcon: Text('Show',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                  expandedIcon: Text('Hide',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                ),
                  Divider(),
                  GFAccordion(
                  title: 'Why do you think you would do well at this job?',textStyle: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w300),
                  content:
                      'Because I love this job, I feel very confident of myself and my ability to deliver nothing short of quality output. My years of experience helped me develop these skills.',
                  collapsedIcon: Text('Show',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                  expandedIcon: Text('Hide',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                ),
                  Divider(),
                  GFAccordion(
                  title: 'What has disappointed you about work?',textStyle: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w300),
                  content:
                      'I once felt that I was not being given enough challenges to work on. I was a bit disappointed because I was so eager to go for more.',
                  collapsedIcon: Text('Show',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                  expandedIcon: Text('Hide',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                ),
                  Divider(),
                  GFAccordion(
                  title: 'If you were hiring a manager for this job, what would you look for?',textStyle: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w300),
                  content:
                      'I would look into two essential things: the ability to do the job right and the proper attitude to do it. Skills without the right attitude will not contribute to productive output.',
                  collapsedIcon: Text('Show',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                  expandedIcon: Text('Hide',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                ),
                  Divider(),
                  GFAccordion(
                  title: 'What role do you tend to play in a team?',textStyle: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w300),
                  content:
                      'I tend to be versatile when it comes to being a team player. I can act as a leader, an assistant, a communicator, a secretary, whatever role that will ensure the success of the team. That’s because understanding the different roles will allow each player to take on the role of others, in times of need.',
                  collapsedIcon: Text('Show',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                  expandedIcon: Text('Hide',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                ),
                  Divider(),
                  GFAccordion(
                  title: 'What was the most difficult decision for you made?',textStyle: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w300),
                  content:
                      'It was a time when I had to choose between joining a group of employees protesting some issues in the company and staying away from the issue. I ended up being a mediator between the employees and our immediate supervisor, and I was glad I made that decision because it all ended well and without further conflicts in the workplace.',
                  collapsedIcon: Text('Show',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                  expandedIcon: Text('Hide',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                ),
                  Divider(),
                  GFAccordion(
                  title: 'Are you willing to make sacrifices for this company?',textStyle: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w300),
                  content:
                      'I would be willing to do that to the best of my ability. I can manage personal matters on my own without causing conflicts when management needs me most. However, I will not comprise on my values.',
                  collapsedIcon: Text('Show',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                  expandedIcon: Text('Hide',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                ),
                  Divider(),
                  GFAccordion(
                  title: 'What are the qualities do you look for in a boss?',textStyle: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w300),
                  content:
                      'I look at my boss as a person who can easily relate with me, can make firm decisions, and is transparent. A boss with a sense of humor would also be a delightful idea.',
                  collapsedIcon: Text('Show',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                  expandedIcon: Text('Hide',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                ),
                  Divider(),
                  GFAccordion(
                  title: 'Are you applying to other companies as well?',textStyle: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w300),
                  content:
                      'Yes. I have submitted my applications in some of the best companies like [….]. Above all, my priority and hope are that I will be able to land a job in your company.',
                  collapsedIcon: Text('Show',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                  expandedIcon: Text('Hide',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                ),
                  Divider(),  
                GFAccordion(
                  title: 'How do you propose to compensate for your lack of experience?',textStyle: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w300),
                  content:
                      'I am a quick learner. Every time there is something new thrown at me, I take time to study it at the soonest time.',
                  collapsedIcon: Text('Show',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                  expandedIcon: Text('Hide',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                ),
                  Divider(), 
                 GFAccordion(
                  title: 'Have you ever worked in a job that you hated?',textStyle: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w300),
                  content:
                      'Not exactly hated. I once had a job that does not exactly match my qualification. Nevertheless, I was glad I took the job because it was an opportunity to learn something new and added to my list of experience.',
                  collapsedIcon: Text('Show',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                  expandedIcon: Text('Hide',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                ),   Divider(), GFAccordion(
                  title: 'What would your previous supervisor say your best point is?',textStyle: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w300),
                  content:
                      'Some of my strongest points at work are being hardworking, patient, and a quick learner.',
                  collapsedIcon: Text('Show',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                  expandedIcon: Text('Hide',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                ),    Divider(),GFAccordion(
                  title: ' What is the most challenging thing about working with you?',textStyle: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w300),
                  content:
                      'My co-workers often say I’m too serious about my work. However, I have attended some personality enhancing seminars to blend better with colleagues.',
                  collapsedIcon: Text('Show',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                  expandedIcon: Text('Hide',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                ),   Divider(), GFAccordion(
                  title: 'What suggestion/s have you made in your previous employment that was implemented?',textStyle: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w300),
                  content:
                      'I once suggested that management and staff should have more regular meetings instead of quarterly meetings. I was happy that the administration took note of this and even commended me for taking a good initiative.',
                  collapsedIcon: Text('Show',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                  expandedIcon: Text('Hide',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                ),   Divider(), GFAccordion(
                  title: 'Would you rather be liked or feared?',
                  content:
                      'I would like to be liked, but more importantly, I would prefer to be respected. Being feared does not necessarily command respect.',textStyle: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w300),
                  collapsedIcon: Text('Show',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                  expandedIcon: Text('Hide',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                ),   Divider(), GFAccordion(
                  title: 'How do you cope with stress?',textStyle: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w300),
                  content:
                      'I pause for a few minutes, look out into the window. Brief pauses in enough to get me charged again. I can manage stress well enough and does not decrease my productivity level.',
                  collapsedIcon: Text('Show',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                  expandedIcon: Text('Hide',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                ),  Divider(),  GFAccordion(
                  title: 'Would you rather work for money or job satisfaction?',textStyle: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w300),
                  content:
                      'Job satisfaction is more important to me. Working just for the money may not be fulfilling if I don’t like the job in the first place. Job satisfaction makes me stay productive; money would naturally come along as well.',
                  collapsedIcon: Text('Show',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                  expandedIcon: Text('Hide',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                ),  Divider(),  GFAccordion(
                  title: 'Describe your work policy ethics.',textStyle: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w300),
                  content:
                      'Always give your best in every job, if not, don’t do it at all.',
                  collapsedIcon: Text('Show',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                  expandedIcon: Text('Hide',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                ),   Divider(), GFAccordion(
                  title: 'hat was your biggest challenge with your previous boss?',textStyle: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w300),
                  content:
                      'My previous boss was very strict when it came to deadlines and output. It was a challenge for me to meet every expectation he made. It was also a good learning experience for me because it only made me better at what I do.',
                  collapsedIcon: Text('Show',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                  expandedIcon: Text('Hide',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                ),   Divider(), GFAccordion(
                  title: 'Do you enjoy working as part of a team?',textStyle: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w300),
                  content:
                      'Yes, I enjoy it very much. Being part of a team means you get to contribute for the good of all, while at the same time there’s are members who can support you and share more knowledge with you.',
                  collapsedIcon: Text('Show',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                  expandedIcon: Text('Hide',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                ),  Divider(),  GFAccordion(
                  title: 'Why do you think you deserve this job?',textStyle: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w300),
                  content:
                      'Because I believe my talents and skills will definitely be a big contribution to your company’s continuing pursuit of excellence. I’m a fast worker and hardworking person who can be a very reliable asset to this company.',
                  collapsedIcon: Text('Show',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                  expandedIcon: Text('Hide',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                ),   Divider(), GFAccordion(
                  title: 'Has anything ever irritated you about people you’ve worked with?',textStyle: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w300),
                  content:
                      'I go along fine with co-workers. When I feel the other guy’s, attitude is a negative one; I try my best to approach him and talk things over. I always make it a point to stay positive and transparent with people around me.',
                  collapsedIcon: Text('Show',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                  expandedIcon: Text('Hide',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                ),  Divider(),  GFAccordion(
                  title: 'Do you have any questions for me?',textStyle: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w300),
                  content:
                      'I would like to know what the next step for me are. I would also be interested to know more details of this position I am applying for.',
                  collapsedIcon: Text('Show',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                  expandedIcon: Text('Hide',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 2,
                        fontSize: 10,
                      )),
                ),   

              ],
            ),
          ),
        ),
      ),
    );
  }
}
