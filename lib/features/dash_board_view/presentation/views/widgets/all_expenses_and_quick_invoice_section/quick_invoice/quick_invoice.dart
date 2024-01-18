import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/dash_board_view/presentation/views/widgets/all_expenses_and_quick_invoice_section/custom_background_container.dart';
import 'package:responsive_dash_board/features/dash_board_view/presentation/views/widgets/all_expenses_and_quick_invoice_section/quick_invoice/last_transaction.dart';
import 'package:responsive_dash_board/features/dash_board_view/presentation/views/widgets/all_expenses_and_quick_invoice_section/quick_invoice/quick_invoice_form.dart';
import 'package:responsive_dash_board/features/dash_board_view/presentation/views/widgets/all_expenses_and_quick_invoice_section/quick_invoice/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            QuickInvoiceHeader(),
            LatestTransaction(),
            Divider(
              height: 48,
              color: Color(0xffF1F1F1),
            ),
            QuickInvoiceForm(),
          ],
        ));
  }
}
