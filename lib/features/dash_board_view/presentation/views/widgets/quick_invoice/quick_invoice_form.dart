import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/dash_board_view/presentation/views/widgets/custom_button.dart';
import 'package:responsive_dash_board/features/dash_board_view/presentation/views/widgets/custom_drop_down_button.dart';
import 'package:responsive_dash_board/features/dash_board_view/presentation/views/widgets/quick_invoice/custom_drop_down_button_quick_invoice.dart';
import 'package:responsive_dash_board/features/dash_board_view/presentation/views/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
                child: TitleTextField(
                    title: 'Customer name', hint: 'Type customer name')),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextField(
                  title: 'Customer Email', hint: 'Type customer email'),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
                child: TitleTextField(
                    title: 'Item name', hint: 'Type customer name')),
            SizedBox(
              width: 16,
            ),
            Expanded(child: CustomDropDownButtonQuickInvoice()),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                textColor: Color(0xFF4DB7F2),
                backgroundColor: Colors.transparent,
                title: 'Add more details',
              ),
            ),
            SizedBox(
              width: 24,
            ),
            Expanded(
              child: CustomButton(
                title: 'Send Money',
                textColor: Colors.white,
              ),
            ),
          ],
        )
      ],
    );
  }
}
