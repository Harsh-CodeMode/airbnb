import 'package:flutter/material.dart';
import '../widgets/service.dart';

class Services extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text(
                'Explore Airbnb',
                textAlign: TextAlign.left,
                style: Theme.of(context).textTheme.headline,
              ),
            ),
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Service(title: 'Stays', firstElement: true, lastElement: false,),
                  Service(title: 'Experiences', firstElement: false, lastElement: false),
                  Service(title: 'Adventures', firstElement: false, lastElement: true),
                ],
              ),
            ),
          ]),
    );
  }
}
