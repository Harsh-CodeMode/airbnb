import 'package:flutter/material.dart';

class HorizontalCard extends StatelessWidget {
  final bool firstElement;
  final bool lastElement;

  HorizontalCard({this.firstElement, this.lastElement});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      margin: EdgeInsets.only(
        top: 25,
        left: firstElement ? 25 : 13,
        right: lastElement ? 25 : 0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 200,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRHJ4e0jM59uPl5Gc_kD57KIbwCkPAOQUYON03zZIo-ikCg-1fV',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: <Widget>[
              Text('United States', style: TextStyle(color: Color(0xff767676))),
              Row(
                children: <Widget>[
                  Icon(Icons.star, size: 15, color: Color(0xffFF5A5F)),
                  Text('4.8', style: TextStyle(fontSize: 15)),
                  Text('(231)',
                      style: TextStyle(color: Color(0xff767676), fontSize: 15)),
                ],
              )
            ],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Historic Tower with Views of the Lake and Countryside',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: <Widget>[
              Text(
                '\$67',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                ' / night',
                style: TextStyle(fontSize: 18),
              )
            ],
          )
        ],
      ),
    );
  }
}
