import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/features/dash_board_view/data/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile( 
      {super.key, required this.userInfoModel,});

  final UserInfoModel  userInfoModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color:  const Color(0xFFFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(userInfoModel.image),
        title: Text(userInfoModel.title, style: AppStyles.styleSemiBold16(context)),
        subtitle: Text(userInfoModel.subTitle, style: AppStyles.styleRegular12(context)),
      ),
    );
  }
}
