import 'package:flutter/material.dart';

import '../theme.dart';

class CustomFormField extends StatefulWidget {
  final String? title;
  final bool obscureText;
  final TextEditingController? controller;
  final IconData? suffixIcon;
  final double? height;
  final String? hintText;
  final TextEditingController? textController;
  final bool readOnly;
  final int? minLines;
  final int? maxLines;
  final TextInputType? textInputType;
  final void Function(String)? onChanged;

  CustomFormField({
    Key? key,
    this.title,
    this.obscureText = false,
    this.controller,
    this.suffixIcon,
    this.height = 40,
    this.textController,
    this.readOnly = false,
    this.minLines = 1,
    this.maxLines = 1,
    this.textInputType = TextInputType.text,
    this.hintText,
    this.onChanged,
  }) : super(key: key);

  @override
  State<CustomFormField> createState() => _CustomFormFieldState();
}

class _CustomFormFieldState extends State<CustomFormField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title!,
            style: primaryTextStyle.copyWith(
              fontSize: 14,
              fontWeight: medium,
            ),
          ),
          const SizedBox(
            height: kDefaultPadding / 2,
          ),
          Container(
            height: widget.height,
            padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPadding / 2,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(kDefaultCircular),
              border: Border.all(
                color: Colors.black12,
              ),
            ),
            child: Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(widget.suffixIcon!),
                  const SizedBox(
                    width: kDefaultPadding,
                  ),
                  Expanded(
                    child: TextFormField(
                      keyboardType: widget.textInputType,
                      minLines: widget.minLines,
                      maxLines: widget.maxLines,
                      readOnly: widget.readOnly,
                      controller: widget.controller,
                      obscureText: widget.obscureText,
                      decoration: InputDecoration.collapsed(
                        hintText: widget.hintText,
                        hintStyle: secondaryTextStyle.copyWith(fontSize: 14),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
