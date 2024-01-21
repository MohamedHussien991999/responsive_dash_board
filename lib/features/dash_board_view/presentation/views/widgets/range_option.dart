import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/dash_board_view/presentation/views/widgets/custom_drop_down_button.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({
    super.key, required this.items,
  });
 final  List<String> items;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(12),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child:  CustomDropDownButton(
          items: items
        ));
  }
}
