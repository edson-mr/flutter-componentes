import 'package:aprendiendo/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CardScreen'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        children: const [
          CustomCardType1(),
          CustomCardType2(
            url: 'https://wallpaperaccess.com/full/959295.jpg',
          ),
          CustomCardType2(
            url: 'https://wallpaperaccess.com/full/112738.jpg',
          ),
          CustomCardType2(
            url:
                'https://3.bp.blogspot.com/-PdpfeWWSY4U/XZqAZSk8o2I/AAAAAAAAPCs/EqLsLTktE6gMvSlWUZW5oB_se-cw-Lc1gCLcBGAsYHQ/w919/digital-art-landscape-uhdpaper.com-4K-4.1003-wp.thumbnail.jpg',
          ),
          CustomCardType2(
            url:
                'https://free4kwallpapers.com/uploads/originals/2022/09/16/mmorpg-inspired-landscape-wallpaper.jpg',
          ),
        ],
      ),
    );
  }
}
