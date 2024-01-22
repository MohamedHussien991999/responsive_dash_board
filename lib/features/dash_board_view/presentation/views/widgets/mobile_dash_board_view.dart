import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/dash_board_view/presentation/views/widgets/all_expenses_and_quick_invoice_section/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_dash_board/features/dash_board_view/presentation/views/widgets/my_card_and_transaction_and_income_section/income/income_section.dart';
import 'package:responsive_dash_board/features/dash_board_view/presentation/views/widgets/my_card_and_transaction_and_income_section/my_card_and_transaction_and_income_section.dart';

class MobileDashBoardView extends StatelessWidget {
  const MobileDashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
            child: Column(
              children: [
                AllExpensesAndQuickInvoiceSection(),
                SizedBox(
                  height: 24,
                ),
                MyCardsAndTransactionHistorySection(),
                SizedBox(
                  height: 24,
                ),
                  IncomeSection(),
              ],
            ),
          );
  }
}