import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/dash_board_view/data/models/user_info_model.dart';
import 'package:responsive_dash_board/features/dash_board_view/presentation/views/widgets/drawer/user_info/user_info_list_tile.dart';
import 'package:responsive_dash_board/utils/app_images.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  static const items = [
    UserInfoModel(
        image: Assets.imagesAvatar1,
        title: 'Madman Andy',
        subTitle: 'MadmanAndy20@gmail'),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        title: 'Madman Andy',
        subTitle: 'MadmanAndy20@gmail'),
    UserInfoModel(
        image: Assets.imagesAvatar3,
        title: 'Madman Andy',
        subTitle: 'MadmanAndy20@gmail'),
  ];
  @override
  Widget build(BuildContext context) {

    
    // if you have a small  or Fixed number of items, you can use Row
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map((e) =>
                IntrinsicWidth(child: UserInfoListTile(userInfoModel: e)))
            .toList(),
      ),
    );

    //if you have a large number of items, you can use ListView.builder
    // return SizedBox(
    //   height: 80,
    //   child: ListView.builder(
    //       scrollDirection: Axis.horizontal,
    //       itemCount: items.length,
    //       itemBuilder: (context, index) {
    //         return IntrinsicWidth(
    //           child: UserInfoListTile(
    //             userInfoModel: items[index],
    //           ),
    //         );
    //       }),
    // );
  }
}
