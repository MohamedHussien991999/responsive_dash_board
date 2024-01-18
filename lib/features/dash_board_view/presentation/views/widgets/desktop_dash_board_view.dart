import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/dash_board_view/presentation/views/widgets/all_expenses_and_quick_invoice_section/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_dash_board/features/dash_board_view/presentation/views/widgets/drawer_section/custom_drawer_section.dart';
import 'package:responsive_dash_board/features/dash_board_view/presentation/views/widgets/my_card_and_transaction_and_income_section/my_card_and_transaction_and_income_section.dart';

class DesktopDashBoardView extends StatelessWidget {
  const DesktopDashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 1,
          child: CustomDrawerSection(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 2,
          child: AllExpensesAndQuickInvoiceSection(),
        ),
              SizedBox(
          width: 32,
        ),
        Expanded(
       
          child: MyCardsAndTransactionHistorySection(),
        ),
      ],
    );
  }
}
