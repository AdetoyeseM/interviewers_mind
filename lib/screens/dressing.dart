import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:interviewers_mind/Animations/animation.dart';

import 'home.dart';

class Dressing extends StatefulWidget {
  
  @override
  _MediumArticleState createState() => _MediumArticleState();
}

class _MediumArticleState extends State<Dressing> {
  List<ArticleRelated> listItems;

  Color _color1 = Colors.black;
  Color _color2 = Colors.red[50];
  Color _color3 = Colors.white;
  Color _color4 = Colors.blueAccent;
  @override
  void initState() {
    super.initState();
    listItems = [
      ArticleRelated(
        1,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/interview-s-mind.appspot.com/o/interviewpix%2Fmen%20(1).jpg?alt=media&token=9b0249e3-1f6b-4f4a-9790-9b9558ebc693',
        title: 'Suitable For Men ',
      ),
      ArticleRelated(
        2,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/interview-s-mind.appspot.com/o/interviewpix%2Fmen%20(2).jpg?alt=media&token=0dce63c2-9d3a-4ea6-8e3e-3d039457829b',
        title: 'Suitable For Men ',
      ),
      ArticleRelated(
        3,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/interview-s-mind.appspot.com/o/interviewpix%2Fmen%20(3).jpg?alt=media&token=343e153d-3111-42b9-8673-d2739ad01d27',
        title: 'Suitable For Men ',
      ),
      ArticleRelated(
        4,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/interview-s-mind.appspot.com/o/interviewpix%2Fwomen%20(3).jpg?alt=media&token=9dd98632-5b09-4b35-bd3d-4ae850568780',
        title: 'Suitable For Women ',
      ),
      ArticleRelated(
        5,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/interview-s-mind.appspot.com/o/interviewpix%2Fwomen%20(2).jpg?alt=media&token=c06ef582-4ba0-46b5-b57d-4a0b2cea0c38',
        title: 'Suitable For Women ',
      ),
      ArticleRelated(
        6,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/interview-s-mind.appspot.com/o/interviewpix%2Fwomen%20(1).jpg?alt=media&token=c8cfe9ec-683e-4875-bd6d-7a1d85f15e02',
        title: 'Suitable For Women ',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    double widthC = MediaQuery.of(context).size.width * 100;
    double heightC = MediaQuery.of(context).size.height * 100;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                tileMode: TileMode.repeated,
                colors: [
              _color1,
              _color1,
              _color2,
              _color3,
              _color3,
              _color1,
            ])),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 45),
              //=================
              // personal info
              //=================
              FadeAnimation(
                1.0,
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                           
                                child: Row(
                                  children: [
                                   
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Home()));
                                },
                                child: Container(
                                  child: Icon(
                                    Icons.arrow_back_ios,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                              ),
                              SizedBox(width: 20),
                              Column(children: [
                                Text('Dressing Etiquettes',
                                    style: TextStyle(
                                        fontSize: 14,
                                        letterSpacing: 2,
                                        color: Colors.white)),

                                // Text('What to Wear to a Job Interview',style:TextStyle(fontSize:14, letterSpacing: 2, color: Colors.white)),
                                Text('Top 10 tips',
                                    style: TextStyle(
                                        fontSize: 14,
                                        letterSpacing: 2,
                                        color: Colors.white)),
                              ])
                            ]))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),

              FadeAnimation(
                1.2,
                Container(
                  width: widthC,
                  margin: EdgeInsets.only(top: 10, left: 15, right: 15),
                  child: Container(
                    child: Card(
                      child: Container(
                        margin: const EdgeInsets.only(
                            top: 20, bottom: 20, left: 20, right: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 20),

                            //=============
                            //   title
                            //=============
                            Wrap(
                              children: <Widget>[
                                Text('What to Wear to a Job Interview',
                                    style: TextStyle(
                                        fontSize: 23,
                                        color: _color1,
                                        fontWeight: FontWeight.bold))
                              ],
                            ),

                            SizedBox(height: 20),

                            //==============
                            //   Image
                            //==============
                            Container(
                              width: widthC,
                              height: 200,
                              child: CachedNetworkImage(
                                  imageUrl:
                                      'https://firebasestorage.googleapis.com/v0/b/interview-s-mind.appspot.com/o/interviewpix%2Fwomen%20(3).jpg?alt=media&token=9dd98632-5b09-4b35-bd3d-4ae850568780',
                                  width: widthC,
                                  height: 200,
                                  fit: BoxFit.cover),
                            ),

                            SizedBox(height: 20),
                            //=============
                            //   Subtitle
                            //=============
                            _buildDescription(
                                'I once interviewed someone who decided to wear a bright (and I mean bright) purple suit, red tie and shoes. He definitely caught my attention – but not necessarily for the right reasons. In fact, I found the entire ensemble pretty distracting and it was quite obvious that he did too. Perhaps if the purple-suited candidate had been really, really great I would have overlooked the Faux pas, but as it stands, I remember very little of what he actually said. Now, I’m not exactly a “fashion guru” but I do know what impresses recruiters (and what doesn’t). \nHere are my top 10 tips on what to wear at a job interview!'),

                            SizedBox(height: 10),

                            Divider(
                              height: 5,
                              color: _color1,
                            ),

                            SizedBox(height: 5),

                            //==============================
                            //  Suggested Reading  Title
                            //==============================
                            Container(
                              margin: EdgeInsets.only(bottom: 10, top: 10),
                              child: _buildTitle('Suggested Dressing Tips'),
                            ),

                            //==============================
                            //  list of Suggested Reading
                            //==============================
                            Container(
                              height: 200,
                              width: widthC,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                physics: BouncingScrollPhysics(),
                                itemCount: listItems.length,
                                itemBuilder: (BuildContext ctxt, int index) =>
                                    listItems[index],
                              ),
                            ),

                            SizedBox(height: 0),
                            Divider(
                              height: 5,
                              color: _color1,
                            ),
                            SizedBox(height: 20),

                            //=============
                            //   title 3
                            //=============
                            _buildTitle(
                                '10 Tips On What and What Not to Wear to a Job Interview '),

                            SizedBox(height: 20),

                            //====================
                            //   Description 3
                            //====================
                            _buildDescription2(
                                '1. Don\'t be too "out there": \n'),
                            _buildDescription(
                                'I know – you’re supposed to ‘stand out’ at an interview. But dressing outlandishly is probably not the best way to do it, especially if you can’t back it up with any real substance – often it just comes across that you’re trying a little too hard to be different. Instead, wow the interwiewer with your intellect, passion and interesting personality.'),

                            SizedBox(height: 5),

                            _buildDescription2('2. Don\'t be too "boring": \n'),
                            _buildDescription(
                                'This is where you have to strike a balance. You don’t want to come across too weird and wacky, but you also don’t want to look like you’ve got no personality whatsoever. You can jazz up any outfit with a splash of colour to accessories or your tie or socks. But again – don’t go too far (no purple suits).'),

                            SizedBox(height: 5),

                            _buildDescription2(
                                '3. Make sure you are comfortable: \n'),
                            _buildDescription(
                                'Interviews are nerve-racking enough; is it really a good idea to add the strain of an ill-fitting and restrictive outfit into the mix? Rigid suits, overly tight pencil skirts and itchy jumpers are all common sources of discomfort. It’s guaranteed to show in your body language in the form of fidgeting, stiffness and/or visible frustration.'),

                            SizedBox(height: 5),

                            _buildDescription2('4. Especially your shoes: \n'),
                            _buildDescription(
                                '  I know I’ve already talked about comfort, but shoes really do deserve their own section. Ladies; just don’t do it to yourself! Your new 6 inch heels may look fabulous but tottering about and falling over do not. Basically, just don’t wear anything that you don’t feel comfortable or able to walk in.'),

                            SizedBox(height: 5),

                            _buildDescription2(
                                '5. Make sure everything is neat and clean: \n'),
                            _buildDescription(
                                '  Always make sure your outfit is ready a couple of days before your interview – just in case. You don’t want to wake up on the morning to find an unwashed, crinkled up shirt and scuffed shoes. Your outfit should be clean (obviously), ironed and removed of all fluff and bobbly bits – NO HOLES. Your shoes should be polished.'),

                            SizedBox(height: 5),

                            _buildDescription2(
                                '6. Don’t overdo the fragrance: \n '),
                            _buildDescription(
                                ' Try not to overdo it on the aftershave and/or perfume – there is (definitely) such a thing as too much. A couple of spritzes should do the trick – you don’t want to suffocate interviewers in a small room.'),
                            SizedBox(height: 5),

                            _buildDescription2(
                                '7. Be wary of jewellery and/or tattoos: \n '),
                            _buildDescription(
                                'It is fine to wear some sort of accessory during an interview – just don’t overdo it. (Do you really need a ring on every finger?!) You should also be aware that some employers will be put off by visible tattoos and piercings (like nose, lip and tongue). It may not be right, but unfortunately it’s true.  '),
                            SizedBox(height: 5),

                            _buildDescription2('8. Get grooming: \n '),
                            _buildDescription(
                                '  I’m not going to tell you how you should wear your hair, how much gel to apply and whether you should wear make-up or not. Just make sure your overall appearance comes across professional and tidy. Your hair should definitely be neat and your nails should NEVER be dirty!'),

                            SizedBox(height: 5),

                            _buildDescription2('9. Never, ever, ever: \n'),
                            _buildDescription(
                                ' …opt for jeans, trainers, a t-shirt or (goodness forbid) any sort of tracksuit as something to wear at a job interview.'),

                            SizedBox(height: 5),

                            _buildDescription2(
                                '10. Play it safe, suit up: \n '),
                            _buildDescription(
                                ' The safest outfit you can wear for an interview is a suit. Think about it; if you underdress, you might look sloppy, indifferent or even lazy. If you overdress, your interviewer will know that it’s just a part of the normal, interview protocol – in fact, that it’s etiquette. You can always jazz things up with the tips we’ve given above (nice accessories, a different colour, patterns) – but sometimes it’s just best to keep it simple. We’re interested in your personality – let that shine through. '),

                            SizedBox(height: 20),

                            Divider(
                              height: 5,
                              color: _color1,
                            ),

                            //==============================
                            //  number of views
                            //==============================
                            FadeAnimation(
                              1.3,
                              Container(
                                width: widthC,
                                margin: EdgeInsets.all(10),
                                alignment: AlignmentDirectional.centerEnd,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Icon(Icons.favorite),
                                    // Text('  1,873  ',
                                    //   style: TextStyle(
                                    //      fontSize: 14, color: _color1)),
                                  ],
                                ),
                              ),
                            ),

                            SizedBox(height: 70),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _buildTitle(String text) {
    return Wrap(
      children: <Widget>[
        Text('$text',
            style: TextStyle(
                color: _color1, 
                fontWeight: FontWeight.w400,
                fontSize: 20, ))
      ],
    );
  }

  _buildDescription(String text) {
    return Wrap(
      children: <Widget>[
        Text('$text',
            style: TextStyle(color: _color1, fontSize: 18, fontWeight: FontWeight.w300))
      ],
    );
  }

  _buildDescription2(String text) {
    return Wrap(
      children: <Widget>[
        Text('$text',
            style: TextStyle(
                color: _color1,
                fontSize: 18,
                fontWeight: FontWeight.w400, )),
      ],
    );
  }
}

class ArticleRelated extends StatelessWidget {
  final String imageUrl;
  final String title;
  ArticleRelated(int i, {this.imageUrl, this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: 200,
        height: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            CachedNetworkImage(
              width: 200,
              height: 150,
              fit: BoxFit.fill,
              imageUrl: imageUrl,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '$title',
                style: TextStyle(color: Colors.black, fontSize: 16),
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
