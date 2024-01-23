import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/dash_board_view/presentation/views/widgets/adaptive_layout_widgets.dart';
import 'package:responsive_dash_board/features/dash_board_view/presentation/views/widgets/desktop_dash_board_view.dart';
import 'package:responsive_dash_board/features/dash_board_view/presentation/views/widgets/drawer_section/custom_drawer_section.dart';
import 'package:responsive_dash_board/features/dash_board_view/presentation/views/widgets/mobile_dash_board_view.dart';
import 'package:responsive_dash_board/features/dash_board_view/presentation/views/widgets/tablet_dash_board_view.dart';
import 'package:responsive_dash_board/utils/size_config.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? AppBar(
              elevation: 0,
              backgroundColor: const Color(0xFFFAFAFA),
              leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  icon: const Icon(Icons.menu)),
            )
          : null,
      drawer: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? const CustomDrawerSection()
          : null,
      backgroundColor: const Color(0xFFF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => const MobileDashBoardView(),
        tabletLayout: (context) => const TabletDashBoardView(),
        desktopLayout: (context) => const DesktopDashBoardView(),
      ),
    );
  }
}
