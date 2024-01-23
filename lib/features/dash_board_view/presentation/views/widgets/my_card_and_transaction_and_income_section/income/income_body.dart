import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/dash_board_view/presentation/views/widgets/my_card_and_transaction_and_income_section/income/detailed_income_chart.dart';
import 'package:responsive_dash_board/features/dash_board_view/presentation/views/widgets/my_card_and_transaction_and_income_section/income/income_chart.dart';
import 'package:responsive_dash_board/features/dash_board_view/presentation/views/widgets/my_card_and_transaction_and_income_section/income/income_flow_chart_details.dart';
import 'package:responsive_dash_board/utils/size_config.dart';

class IncomeBody extends StatelessWidget {
  const IncomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    log(width.toString());
    return width >= SizeConfig.desktop && width < 1750
        ? const Expanded(
            child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Expanded(child: DetailedIncomeChart()),
                SizedBox(
                  height: 20,
                ),
                Expanded(child: IncomeFlowChartDetails()),
              ],
            ),
          ))
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: IncomeChart(),
              ),
              Expanded(
                flex: 2,
                child: IncomeFlowChartDetails(),
              ),
            ],
          );
  }
}
