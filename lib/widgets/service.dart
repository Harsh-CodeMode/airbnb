import 'package:flutter/material.dart';

class Service extends StatelessWidget {
//  final String imageUrl;
  final String title;
  final bool firstElement;
  final bool lastElement;

  Service({this.title, this.firstElement, this.lastElement});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: firstElement ? 25 : 13, top: 25, right: lastElement ? 25 : 0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                child: Image.network(
                  title == 'Stays'
                      ? 'https://global-uploads.webflow.com/5b0d1c0f502061641c1592c5/5b87f3eb7ae6c8f21b6f8cfd_0_ULiiLorLLRG5pY46.jpg'
                      : title == 'Adventures'
                          ? 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTEO56Ig79t7Uk7LXei3znHG7uGyjBjjyBibRI7pEs4sNcLNlE_'
                          : 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRTxgd3cjxg-e35R4kGWuC0Pm4uRVCSSHy3x7dxyqzyWNu-aJU4',
                  fit: BoxFit.cover,
                ),
              ),
              height: 110,
              width: 160,
            ),
            Container(
              padding: EdgeInsets.only(left: 15),
              height: 50,
              width: 160,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  topLeft: Radius.zero,
                  topRight: Radius.zero,
                ),
                boxShadow: [
                  BoxShadow(
                      color: Color(0xaa767676),
                      offset: Offset(0, 2),
                      blurRadius: 7,
                      spreadRadius: 1)
                ],
              ),
              alignment: Alignment.centerLeft,
              child: Text(
                title,
                style: Theme.of(context).textTheme.title,
              ),
            )
          ],
        ),
      ),
    );
  }
}
