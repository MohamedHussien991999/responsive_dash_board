import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/dash_board_view/presentation/views/widgets/drawer_section/custom_drawer_section.dart';
import 'package:responsive_dash_board/features/dash_board_view/presentation/views/widgets/mobile_dash_board_view.dart';

class TabletDashBoardView extends StatelessWidget {
  const TabletDashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawerSection()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.only(top:40.0),
            child: MobileDashBoardView(),
          )
        ),
        SizedBox(
          width: 32,
        ),
      ],
    );
  }
}
