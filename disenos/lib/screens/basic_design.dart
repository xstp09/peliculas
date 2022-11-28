import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //Imagen
          Image(image: AssetImage('assets/gfriend.jpg')),

          //Titulo
          Title(),

          //Button Section
          ButtonSection(),

          //Description
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text('미처 말하지 못했어 다만 너를 좋아했어 어린 날의 꿈처럼 마치 기적처럼 시간을 달려서 어른이 될 수만 있다면 거친 세상 속에서 너를 안아줄게')
          )

        ],
      )

    );
  }
}



class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('GFRIEND - ROUGH', style: TextStyle(fontWeight: FontWeight.bold),),
              Text('2016 - Snowflake Album', style: TextStyle(color: Colors.black45),),
            ],
          ),
          Expanded(child: Container()),
          Icon(Icons.star, color: Colors.red),
          Text('41'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [

          CustomButton( icon: Icons.call, text: 'Call'),
          CustomButton( icon: Icons.map_sharp, text: 'Route'),
          CustomButton( icon: Icons.share, text: 'Share'),

        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {

  final IconData icon;
  final String text;

  const CustomButton({
    Key? key, required this.icon, required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(this.icon, color: Colors.blue, size: 30,),
        Text(this.text, style: TextStyle(color: Colors.blue)),
      ],
    );
  }
}
