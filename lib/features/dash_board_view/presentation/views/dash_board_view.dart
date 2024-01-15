import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/dash_board_view/presentation/views/widgets/adaptive_layout_widgets.dart';
import 'package:responsive_dash_board/features/dash_board_view/presentation/views/widgets/desktop_dash_board_view.dart';
import 'package:responsive_dash_board/features/dash_board_view/presentation/views/widgets/mobile_dash_board_view.dart';
import 'package:responsive_dash_board/features/dash_board_view/presentation/views/widgets/tablet_dash_board_view.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: AdaptiveLayout(
       mobileLayout: (context) => const MobileDashBoardView(),
       tabletLayout: (context) => const TabletDashBoardView(),
       desktopLayout: (context) => const DesktopDashBoardView(),
     ),
    );
  }
}