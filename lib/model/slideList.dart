import 'package:flutter/material.dart';  

class  Slide{
  final String imageUrl;
  final String title;
  final String description;

Slide({
@required this.imageUrl,
@required this.description,
@required this.title

});

}

final slideList = [
  Slide (
    imageUrl: 'https://firebasestorage.googleapis.com/v0/b/interview-s-mind.appspot.com/o/interviewpix%2FInterviewb.png?alt=media&token=a9dd1f2e-51b4-45ea-9c23-cb0a6b2979a0',
    title: 'Interview Tips, Q&A',
    description: 'Clear your doubt of getting your dream Job...In this awesome app, you will acquianted with all the tips needed to Succeed in a job interview...'
    
  ),
   Slide (
    imageUrl: 'https://firebasestorage.googleapis.com/v0/b/interview-s-mind.appspot.com/o/interviewpix%2Fdrezz.png?alt=media&token=3de6cb72-2d9a-4600-8848-4ba3d3b54047',
    title: 'Dressing Etiquettes',
    description: 'You only get one chance to make a good first impression with a potential employer. The clothes you wear are the first part of that first impression, so dress to impress..'
  
  
  ),
   Slide (
    imageUrl: 'https://firebasestorage.googleapis.com/v0/b/interview-s-mind.appspot.com/o/interviewpix%2Fcvv.png?alt=media&token=e0a8e764-69b6-43d4-a790-8a6e0b60b418',
    title: 'CV & Cover Letters builder',
    description: 'Wants to know the kind of CV and Cover letter that attracts HRs?...then you are at the right place...'
     
  
  ),
   Slide (
    imageUrl: 'https://firebasestorage.googleapis.com/v0/b/interview-s-mind.appspot.com/o/interviewpix%2Fnego.png?alt=media&token=7a98eafa-0dfc-48c7-9a1d-4f8e4397fd9d',
    title: 'Salary Negotiation',
    description: 'Do you even know you worth?...We are here to inform you on how to define and make valid requests for a befitting pay for that job you\'re about to take up'
     
  
  ),
  // Slide (
  //  imageUrl: 'https://firebasestorage.googleapis.com/v0/b/interview-s-mind.appspot.com/o/interviewpix%2Fjob.png?alt=media&token=a4070bf3-e891-4f36-b52f-2a021fd3326a' ,
 //   title: 'Job Search',
 //   description: 'Get Connected to job oppurtunities home and abroad and gain access to right information to enable you get hired'
  
 // ),


  
];
