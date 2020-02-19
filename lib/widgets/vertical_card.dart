import 'package:flutter/material.dart';

class VerticalCard extends StatelessWidget {
  final String category;
  VerticalCard({this.category});
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final imageHeight = ((width - 60) / 2) / 0.75;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: imageHeight,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(category == 'experience' ?
              'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT0PJ5qAuHJpzPiIyAmMWJi4EhTaU1i4cRUKkk9V_DQPCctBj0S' :
              'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSjQwoGIIcGQn6GDIB9Y7UY9B0H2Cn5xHCA32TL0atsd0-X5xa4',
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          'NORWAY',
          style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5),
        Text('2 Nights PACKAGE All Inclusive', style: TextStyle(fontSize: 15)),
        SizedBox(height: 5),
        FittedBox(
          child: Text(
            'From \$489/person',
            style: TextStyle(fontSize: 15),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: <Widget>[
            Icon(Icons.star, size: 13),
            Text(
              '5.0',
              style: TextStyle(fontSize: 13),
            ),
            Text('(13)',
                style: TextStyle(color: Color(0xff767676), fontSize: 12))
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          '3 days',
          style: TextStyle(
            fontSize: 12,
            color: Color(0xff767676),
          ),
        ),
      ],
    );
  }
}
