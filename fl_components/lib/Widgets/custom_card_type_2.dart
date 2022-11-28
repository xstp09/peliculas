import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class CustomCardType2 extends StatelessWidget {

  final String imageUrl;
  final String? name;

  const CustomCardType2({ K, key, required this.imageUrl, this.name }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
      ),
      elevation: 10,
      shadowColor: AppTheme.primary.withOpacity(0.5),
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage( imageUrl ),
            placeholder: const AssetImage('assets/gfriend.gif'),
            width: double.infinity,
            height: 400,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 200),
          ),

        if( name != null)
          Container(
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text( name?? 'No title')
          )

        ],
      ),
    );
  }
}