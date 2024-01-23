import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/dash_board_view/data/models/item_flow_chart_details_model.dart';
import 'package:responsive_dash_board/features/dash_board_view/presentation/views/widgets/my_card_and_transaction_and_income_section/income/income_flow_chart_item.dart';

class IncomeFlowChartDetails extends StatelessWidget {
  const IncomeFlowChartDetails({super.key});

  static const items = [
    ItemFlowChartDetailsModel(
        color: Color(0xFF208BC7), title: 'Design service', value: '%40'),
    ItemFlowChartDetailsModel(
        color: Color(0xFF4DB7F2), title: 'Design product', value: '%25'),
    ItemFlowChartDetailsModel(
        color: Color(0xFF064060), title: 'Product royalty', value: '%20'),
    ItemFlowChartDetailsModel(
        color: Color(0xFFE2DECD), title: 'Other', value: '%22'),
  ];
  @override
  Widget build(BuildContext context) {
    return  Column( 
       crossAxisAlignment: CrossAxisAlignment.start,
      children: items
          .map((e) => IncomeFlowChartItem(itemFlowChartDetailsModel: e))
          .toList(),
    );
  }
}
