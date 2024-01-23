import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class CustomDropDownButtonQuickInvoice extends StatefulWidget {
  const CustomDropDownButtonQuickInvoice({super.key});

  @override
  State<CustomDropDownButtonQuickInvoice> createState() =>
      _CustomDropDownButtonQuickInvoiceState();
}

class _CustomDropDownButtonQuickInvoiceState
    extends State<CustomDropDownButtonQuickInvoice> {
  final List<String> items = [
    'usd',
    'eg',
    'ggg',
  ];
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(
          "Item mount",
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 12,
        ),
        Container(
          height: 60,
          padding: const EdgeInsets.all(20),
          decoration: ShapeDecoration(
            color: const Color(0xFFFAFAFA),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: DropdownButton(
            isExpanded: true,
            items: convertIListToMap(),
            elevation: 10,
            value: selectedValue ?? items[0],
            onChanged: (String? value) {
              selectedValue = value;
              setState(() {});
            },
            style: const TextStyle(color: Colors.blue),
            selectedItemBuilder: (BuildContext context) {
              // This is the widget that will be shown when you select an item.
              // Here custom text style, alignment and layout size can be applied
              // to selected item string.
              return items.map((String value) {
                return Text(
                  selectedValue ?? "Select an item",
                  style: AppStyles.styleMedium16(context).copyWith(
                    color: const Color(0xFF064061),
                  ),
                );
              }).toList();
            },
            underline: Container(),
            icon: const Center(
              child: Icon(
                Icons.keyboard_arrow_down,
                color: Color(0xFF064061),
              ),
            ),
          ),
        ),
      ],
    );
  }

  List<DropdownMenuItem<String>> convertIListToMap() {
    return items.map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(value,
              style: AppStyles.styleMedium16(context).copyWith(
                color: const Color(0xFF064061),
              )),
        ),
      );
    }).toList();
  }
}
