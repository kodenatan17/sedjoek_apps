import 'package:flutter/material.dart';
import 'package:sedjoek_apps/theme.dart';

class CardNotification extends StatelessWidget {
  final String sender;
  final String title;
  final String message;
  final bool? isRead;
  const CardNotification({
    Key? key,
    required this.sender,
    required this.title,
    required this.message,
    this.isRead = false,
  }) : super(key: key);

  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: kDefaultPadding,
      ),
      decoration: BoxDecoration(color: cardNotification),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/images/ico_info.png',
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                sender,
                style: primaryTextStyle.copyWith(
                  fontWeight: light,
                  fontSize: 12,
                ),
              ),
              Text(
                title,
                style: primaryTextStyle.copyWith(
                  fontWeight: semiBold,
                  fontSize: 12,
                ),
              ),
              Expanded(
                child: Text(
                  message,
                  style: primaryTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          )
        ],
      ),


    );
  }
}
