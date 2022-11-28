import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
            children: [
              _SingleCard(color: Colors.blue, icon: Icons.border_all_outlined, text: 'General'),
              _SingleCard(color: Colors.deepPurple, icon: Icons.car_rental_outlined, text: 'transport'),
            ]
        ),

        TableRow(
            children: [
              _SingleCard(color: Colors.purpleAccent, icon: Icons.shopping_bag_outlined, text: 'Shopping'),
              _SingleCard(color: Colors.orangeAccent, icon: Icons.file_present_outlined, text: 'Bills'),
            ]
        ),

        TableRow(
            children: [
              _SingleCard(color: Colors.indigo, icon: Icons.movie_filter_outlined, text: 'Entertaiment'),
              _SingleCard(color: Colors.green, icon: Icons.local_grocery_store_outlined, text: 'Grocery'),
            ]
        ),

        TableRow(
            children: [
              _SingleCard(color: Colors.teal, icon: Icons.phone_outlined, text: 'Services'),
              _SingleCard(color: Colors.grey, icon: Icons.settings_outlined, text: 'Settings'),
            ]
        ),

      ],
    );
  }
}



class _SingleCard extends StatelessWidget {

  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard({Key? key,
    required this.icon,
    required this.color,
    required this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return _CardBackground(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: this.color,
              child: Icon(this.icon, size: 35, color: Colors.white),
              radius: 30,
            ),
            SizedBox(height: 25),
            Text(this.text, style: TextStyle(color: this.color, fontSize: 20),)
          ],
        ),
    );


  }
}

class _CardBackground extends StatelessWidget {

  final Widget child;

  const _CardBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur( sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
                color: Color.fromRGBO(62, 66, 107, 0.5),
                borderRadius: BorderRadius.circular(20)
            ),
            child: this.child,
          ),
        ),
      ),
    );
  }
}


