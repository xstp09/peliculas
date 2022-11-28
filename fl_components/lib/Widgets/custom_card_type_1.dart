import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary ),
            title: Text('Option 1'),
            subtitle: Text('primera opcion de la ventana de tarjetas'),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {},
                    child: const Text('Cancel'),
                ),
                TextButton(
                    onPressed: () {}, child: const Text('Ok')
                ),

              ],
            ),
          )


        ],
      ),
    );
  }
}