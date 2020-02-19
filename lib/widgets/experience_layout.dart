import 'package:flutter/material.dart';
import '../widgets/vertical_card.dart';

class ExperienceLayout extends StatelessWidget {
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
              'Top-rated experiences',
              style: Theme.of(context).textTheme.headline,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Book activites led by local hosts on your next trip.',
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
                VerticalCard(category: 'experience'),
                VerticalCard(category: 'experience'),
                VerticalCard(category: 'experience'),
                VerticalCard(category: 'experience'),
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
            margin: EdgeInsets.only(top: 30),
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xff00A699),
                ),
                borderRadius: BorderRadius.circular(5)),
            child: Center(
              child: Text(
                'Show all experiences',
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
