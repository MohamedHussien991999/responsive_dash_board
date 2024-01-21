import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/dash_board_view/presentation/views/widgets/all_expenses_and_quick_invoice_section/custom_background_container.dart';
import 'package:responsive_dash_board/features/dash_board_view/presentation/views/widgets/my_card_and_transaction_and_income_section/my_card/my_card_section.dart';
import 'package:responsive_dash_board/features/dash_board_view/presentation/views/widgets/my_card_and_transaction_and_income_section/transaction_history/transaction_history.dart';

class MyCardsAndTransactionHistorySection extends StatelessWidget {
  const MyCardsAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
      children: [
        MyCardsSection(),
        Divider(
          height: 40,
          color: Color(0xffF1F1F1),
        ),
       TransactionHistory(),
      ],
    ));
  }
}