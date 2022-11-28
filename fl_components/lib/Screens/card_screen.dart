import 'package:flutter/material.dart';
import 'package:fl_components/theme/app_theme.dart';
import '../Widgets/widgets.dart';




class CardScreen extends StatelessWidget{
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
        elevation: 5,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric( horizontal: 10, vertical: 10 ),
        children: const [
          CustomCardType1(),
          SizedBox(height: 0,),
          CustomCardType2(name:'SNOWFLAKE', imageUrl: 'https://r4.wallpaperflare.com/wallpaper/287/350/571/k-pop-gfriend-south-korea-musician-wallpaper-7be499d47d290d98c26c431026a8b962.jpg',),
          SizedBox(height: 0,),
          CustomCardType2(name:'PARALLEL',imageUrl: 'https://r4.wallpaperflare.com/wallpaper/545/444/957/k-pop-gfriend-south-korea-musician-wallpaper-3ee5f9daf6c4f1ac265843f73520029d.jpg',),
          SizedBox(height: 0,),
          CustomCardType2(name:'GLASS BEAD',imageUrl: 'https://r4.wallpaperflare.com/wallpaper/772/848/21/k-pop-gfriend-south-korea-musician-wallpaper-dbbe90164ad27aac6702a8276d005589.jpg',),
          SizedBox(height: 0,),
          CustomCardType2(name:'SOWON',imageUrl: 'https://r4.wallpaperflare.com/wallpaper/604/703/640/gfriend-sowon-k-pop-idol-wallpaper-a739bacb16cae5e54ced98e098d749b3.jpg'),
          SizedBox(height: 0,),
          CustomCardType2(name:'YERIN',imageUrl: 'https://r4.wallpaperflare.com/wallpaper/456/89/319/gfriend-k-pop-musician-yerin-wallpaper-aa2a31ca76b328b602bfa9a570966df1.jpg'),
          SizedBox(height: 0,),
          CustomCardType2(name:'EUNHA',imageUrl: 'https://r4.wallpaperflare.com/wallpaper/44/150/541/k-pop-gfriend-asian-women-eunha-hd-wallpaper-c3dfb7979e72d774368aca54f40d4f0a.jpg'),
          SizedBox(height: 0,),
          CustomCardType2(name:'YUJU',imageUrl: 'https://r4.wallpaperflare.com/wallpaper/466/476/30/gfriend-k-pop-brunette-women-wallpaper-27294a5b665a05851c0d8870e87719e3.jpg'),
          SizedBox(height: 0,),
          CustomCardType2(name:'SINB',imageUrl: 'https://r4.wallpaperflare.com/wallpaper/749/880/1021/sinb-k-pop-gfriend-musician-wallpaper-ddc428065d818443e5a6b65fc720850e.jpg'),
          SizedBox(height: 0,),
          CustomCardType2(name:'UMJI',imageUrl: 'https://coolhdwall.com/storage/thumbnail/2201/umji-viviz-profile-hd-wallpaper-x-preview-13.jpg'),


        ],
      )
    );
  }

}
