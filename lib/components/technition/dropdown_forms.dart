import 'package:dropdown_button2/custom_dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../../theme.dart';

class DropdownForms extends StatefulWidget {
  DropdownForms({
    Key? key,
    required this.titleForms,
    required this.dropdownItems,
    this.dropdownValue,
    this.onChanged = true,
  }) : super(key: key);

  @override
  State<DropdownForms> createState() => _DropdownFormsState();

  final String titleForms;
  final List<String> dropdownItems;
  String? dropdownValue;
  final bool onChanged;
}

class _DropdownFormsState extends State<DropdownForms> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.titleForms,
            style: primaryTextStyle.copyWith(
              fontWeight: medium,
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 40,
            child: DropdownButtonHideUnderline(
              child: CustomDropdownButton2(
                hint: 'Select Item',
                dropdownItems: widget.dropdownItems,
                value: widget.dropdownValue,
                onChanged: widget.onChanged == true
                    ? (value) => setState(
                          () => widget.dropdownValue = value.toString(),
                        )
                    : null,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
