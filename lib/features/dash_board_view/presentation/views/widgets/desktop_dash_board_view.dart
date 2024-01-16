import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/dash_board_view/presentation/views/widgets/custom_drawer.dart';

class DesktopDashBoardView extends StatelessWidget {
  const DesktopDashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Row(
      children: [
        Expanded(
          flex: 1,
          child: CustomDrawer(),
        ),
      ],
    );
  }
}
