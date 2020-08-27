import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';  
import 'package:interviewers_mind/model/slideList.dart';

class SlideItem extends StatelessWidget {
  final int index;
  SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 30,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(60),
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: CachedNetworkImageProvider(slideList[index].imageUrl),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              slideList[index].title,
              style: TextStyle(
                  fontSize: 20, 
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              slideList[index].description,
              style: TextStyle(
                fontSize: 14, 
                color: Colors.black, 
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.center,
            )
          ],
        )
      ],
    );
  }
}
