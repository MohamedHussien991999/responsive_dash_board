import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/dash_board_view/presentation/views/widgets/all_expenses_header.dart';
import 'package:responsive_dash_board/features/dash_board_view/presentation/views/widgets/all_expenses_item_list_view.dart';
import 'package:responsive_dash_board/features/dash_board_view/presentation/views/widgets/custom_background_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
            AllExpensesHeader(),
                SizedBox(
                  height: 16,
                ),
         AllExpensesItemsListView()
        ],
      ),
    );
  }
}
