import 'package:flutter/material.dart';

import '../widgets/horizontal_card.dart';

class StaysLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 50),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: FittedBox(
                child: Text(
                  'Places to stay around the world',
                  style: Theme.of(context).textTheme.headline,
                ),
              ),
            ),
            Container(
              height: 310,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  HorizontalCard(firstElement: true, lastElement: false),
                  HorizontalCard(firstElement: false, lastElement: false),
                  HorizontalCard(firstElement: false, lastElement: false),
                  HorizontalCard(firstElement: false, lastElement: true),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30, left: 25, right: 25),
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xff00A699),
                  ),
                  borderRadius: BorderRadius.circular(5)),
              child: Center(
                child: Text(
                  'Show all Stays',
                  style: TextStyle(
                    color: Color(0xff00A699),
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
