import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class HomeListTile extends StatelessWidget {
  final String title;
  final String imgUrl;
  HomeListTile({@required this.title, @required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 8),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8
                 ),
            child: CachedNetworkImage(
              imageUrl: imgUrl,
              height: 150,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: 50,
            width: 100,
            child: Column(
              children: [
                Spacer(),
                Row(
                  children: [
                  //  Container(
                      //margin: EdgeInsets.only(bottom: 10, left: 8, right: 8),
                     // child: Column(
                       /// crossAxisAlignment: CrossAxisAlignment.start,
                       // children: [
                          Container(
                            height: 50,
                      width: 100,
                      alignment: Alignment.center,
                            child: Text(
                              title,
                              style: TextStyle(
                            color: Colors.transparent,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Overpass'),
                            ),
                          ),
                        ],
                      ),
                  //  ),
                    Spacer(),
                   /* Container(
                        margin: EdgeInsets.only(bottom: 10, right: 8),
                        padding:
                            EdgeInsets.symmetric(horizontal: 3, vertical: 7),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: Colors.white38),
                        child: Column(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 20,
                            )
                          ],
                        )) */
                  ],
                )
             // ],
            ),
          //)
        ],
      ),
    );
  }
}
