import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class CustomDropDownButton extends StatefulWidget {
  const CustomDropDownButton({super.key, required this.items});
  final List<String> items;
  @override
  State<CustomDropDownButton> createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      items: convertIListToMap(),
      value: selectedValue ?? widget.items[0],
      onChanged: (String? value) {
        selectedValue = value;
        setState(() {});
      },
      underline: Container(),
      icon: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Icon(
          Icons.keyboard_arrow_down,
          color: Color(0xFF064061),
        ),
      ),
    );
  }

  List<DropdownMenuItem<String>> convertIListToMap() {
    return widget.items.map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(
          value,
          style: AppStyles.styleMedium16(context),
        ),
      );
    }).toList();
  }
}
