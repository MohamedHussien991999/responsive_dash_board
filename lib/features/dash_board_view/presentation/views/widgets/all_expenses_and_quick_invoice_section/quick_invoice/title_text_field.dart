import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/dash_board_view/presentation/views/widgets/all_expenses_and_quick_invoice_section/quick_invoice/custom_text_field.dart';
import 'package:responsive_dash_board/utils/app_style.dart';


class TitleTextField extends StatelessWidget {
  const TitleTextField({super.key, required this.title, required this.hint});

  final String title, hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(
          title,
          style: AppStyles.styleMedium16,
        ),
        const SizedBox(
          height: 12,
        ),
        CustomTextField(
          hint: hint,
        ),
      ],
    );
  }
}