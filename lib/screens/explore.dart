import 'package:flutter/material.dart';

import '../widgets/services.dart';
import '../widgets/experience_layout.dart';
import '../widgets/adventure_layout.dart';
import '../widgets/stays_layout.dart';

class Explore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(height: 100),
        Services(),
        StaysLayout(),
        ExperienceLayout(),
        AdventureLayout(),
      ],
    );
  }
}
