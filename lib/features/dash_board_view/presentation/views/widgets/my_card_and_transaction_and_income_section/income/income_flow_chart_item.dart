import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/dash_board_view/data/models/item_flow_chart_details_model.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class IncomeFlowChartItem extends StatelessWidget {
  const IncomeFlowChartItem(
      {super.key, required this.itemFlowChartDetailsModel});

  final ItemFlowChartDetailsModel itemFlowChartDetailsModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: itemFlowChartDetailsModel.color,
          shape: const OvalBorder(),
        ),
      ),
      title: Text(
        itemFlowChartDetailsModel.title,
        style: AppStyles.styleRegular16.copyWith(
          color: const Color(0xFF064060),
        )
      ),
      trailing: Text(
        itemFlowChartDetailsModel.value,
        style:AppStyles.styleMedium16.copyWith(
          color: const Color(0xFF208CC8),
        ),
      ),
    );
  }
}
