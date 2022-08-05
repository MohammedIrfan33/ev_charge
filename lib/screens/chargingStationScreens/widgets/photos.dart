import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class PhotosTab extends StatelessWidget {
  const  PhotosTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GridView.custom(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      gridDelegate: SliverWovenGridDelegate.count(
        crossAxisCount: 2,
        mainAxisSpacing: 15,
        crossAxisSpacing: 20,
        pattern: [
          const WovenGridTile(1,
            alignment: AlignmentDirectional.topStart
          ),
          const WovenGridTile(3.5/4,

            alignment: AlignmentDirectional.topStart,
          ),
        ],
      ),
      childrenDelegate: SliverChildBuilderDelegate(

            (context, index) => Image.asset(imageList[index],fit: BoxFit.fill,),
        childCount: imageList.length
      ),
    );

  }
}


List<String> imageList = [
  'assets/images/photo1.png',
  'assets/images/photo2.png',
  'assets/images/photo3.png',
  'assets/images/photo4.png',
  'assets/images/photo5.png',
  'assets/images/photo6.png',
];