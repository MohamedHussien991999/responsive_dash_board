
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/dash_board_view/presentation/views/widgets/all_expenses_and_quick_invoice_section/all_expenses/all_expenses.dart';
import 'package:responsive_dash_board/features/dash_board_view/presentation/views/widgets/all_expenses_and_quick_invoice_section/quick_invoice/quick_invoice.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            width: 40,
          ),
          AllExpenses(),
          SizedBox(
            height: 24,
          ),
          QuickInvoice(),
        ],
      ),
    );
  }
}
