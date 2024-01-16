import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/dash_board_view/data/models/drawer_item_model.dart';
import 'package:responsive_dash_board/features/dash_board_view/presentation/views/widgets/drawer_item_list_view.dart';
import 'package:responsive_dash_board/features/dash_board_view/presentation/views/widgets/in_active_drawer_item.dart';
import 'package:responsive_dash_board/features/dash_board_view/presentation/views/widgets/user_info_list_tile.dart';
import 'package:responsive_dash_board/utils/app_images.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              title: "Leak Kokomo",
              subtitle: 'demo@gmail.com',
              image: Assets.imagesAvatar3,
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DrawerItemListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        title: "Setting System ", image: Assets.imagesSettings),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        title: "Logout Account ", image: Assets.imagesLogout),
                  ),
                ),
                SizedBox(
                  height: 48,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
