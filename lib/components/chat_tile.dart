import 'package:flutter/material.dart';
import 'package:sedjoek_apps/theme.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: (){
          Navigator.pushNamed(context, '/chat-detail');
        },
        child: Container(
          decoration: BoxDecoration(
            color: backgroundColor7
          ),
          margin: const EdgeInsets.only(top: defaultMargin),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/icons/maskot_polos.png',
                    width: 40,
                  ),
                  SizedBox(
                    width: kDefaultPadding,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Si Djoeki',
                          style: primaryTextStyle.copyWith(fontSize: 15),
                        ),
                        Text(
                          'Selamat Siang kawan Djoeki, Pembelian anda untuk item ini sedang diproses, silahkan menunggu beberapa saat',
                          style: secondaryTextStyle.copyWith(
                            fontWeight: light,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Now',
                    style: secondaryTextStyle.copyWith(
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Divider(
                thickness: 1,
                color: Color(0xFF2b2939),
              )
            ],
          ),
        ),
      ),
    );
  }
}
