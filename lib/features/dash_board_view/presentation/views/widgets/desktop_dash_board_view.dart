import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/dash_board_view/presentation/views/widgets/all_expenses.dart';
import 'package:responsive_dash_board/features/dash_board_view/presentation/views/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/features/dash_board_view/presentation/views/widgets/quick_invoice/quick_invoice.dart';

class DesktopDashBoardView extends StatelessWidget {
  const DesktopDashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 1,
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 2,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  width: 40,
                ),
                AllExpenses(),
                SizedBox(
                  height: 24,
                ),
                QuickInvoice(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
