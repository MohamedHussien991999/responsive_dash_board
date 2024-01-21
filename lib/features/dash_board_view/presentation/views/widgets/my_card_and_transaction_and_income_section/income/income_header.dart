import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/dash_board_view/presentation/views/widgets/range_option.dart';

import '../../../../../../../utils/app_style.dart';

class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'Income',
          style: AppStyles.styleSemiBold20,
        ),
        Expanded(
          child: SizedBox(),
        ),
        RangeOptions(
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
