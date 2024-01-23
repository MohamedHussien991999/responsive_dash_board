import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/features/dash_board_view/presentation/views/widgets/range_option.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(
          'All Expenses',
          style: AppStyles.styleSemiBold20(context),
        ),
        const Expanded(
          child: SizedBox(),
        ),
        const RangeOptions(
          items: [
            'Daily',
            'Weekly',
            'Monthly',
          ],
        ),
      ],
    );
  }
}
