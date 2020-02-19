import 'package:flutter/material.dart';
import '../widgets/vertical_card.dart';

class AdventureLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final imageWidth = (width - 60) / 2;
    final aspRatio = imageWidth / (imageWidth / 0.75 + 135);

    return Padding(
      padding: EdgeInsets.only(left: 25, right: 25, top: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          FittedBox(
            child: Text(
              'Introducing Airbnb Adventures',
              style: Theme.of(context).textTheme.headline,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Multi-day trips led by local experts - activites, meals, and stays included.',
            style: Theme.of(context).textTheme.body1,
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: (imageWidth / aspRatio) * 2 + 20,
            child: GridView(
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                VerticalCard(category: 'adventure'),
                VerticalCard(category: 'adventure'),
                VerticalCard(category: 'adventure'),
                VerticalCard(category: 'adventure'),
              ],
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: aspRatio,
                crossAxisSpacing: 10,
                mainAxisSpacing: 20,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 30,
              bottom: 50,
            ),
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xff00A699),
                ),
                borderRadius: BorderRadius.circular(5)),
            child: Center(
              child: Text(
                'Show all adventures',
                style: TextStyle(
                  color: Color(0xff00A699),
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
