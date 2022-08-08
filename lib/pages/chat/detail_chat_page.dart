import 'package:flutter/material.dart';
import 'package:sedjoek_apps/theme.dart';
import 'package:sedjoek_apps/widgets/forms.dart';
import 'package:sedjoek_apps/widgets/forms_hint.dart';

import '../../components/chat_bubble.dart';

class DetailChatPage extends StatelessWidget {
  const DetailChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PreferredSize header() {
      return PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          iconTheme: IconThemeData(color: primaryColor),
          backgroundColor: backgroundColor3,
          centerTitle: false,
          title: Row(
            children: [
              Image.asset(
                'assets/icons/ico_logo_admin.png',
                width: 50,
              ),
              const SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Si Djoeki',
                    style: primaryTextStyle.copyWith(
                      fontWeight: medium,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'Online',
                    style: secondaryTextStyle.copyWith(
                      fontWeight: light,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }

    Widget productPreview() {
      return Stack(
        children: <Widget>[
          Container(
            width: 200,
            height: 75,
            padding: const EdgeInsets.all(kDefaultPadding),
            margin: const EdgeInsets.only(bottom: kDefaultPadding * 1.5),
            decoration: BoxDecoration(
              color: backgroundColor5,
              borderRadius: BorderRadius.circular(kDefaultCircular),
              border: Border.all(
                color: primaryColor,
              ),
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(kDefaultCircular),
                  child: Image.asset(
                    'assets/icons/ico_product.png',
                    width: 54,
                  ),
                ),
                SizedBox(
                  width: kDefaultPadding,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sharp AH-AP5UHL',
                        style: primaryTextStyle.copyWith(
                          fontWeight: semiBold,
                          fontSize: 16,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        'Rp. 1.145.000',
                        style: primaryTextStyle.copyWith(
                          fontWeight: medium,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              'assets/icons/ico_close.png',
              width: 22,
              fit: BoxFit.cover,
            ),
          ),
        ],
      );
    }

    Widget chatInput() {
      return Container(
        margin: const EdgeInsets.all(kDefaultMargin),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            productPreview(),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 45,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    decoration: BoxDecoration(
                        color: backgroundColor2,
                        borderRadius: BorderRadius.circular(kDefaultCircular)),
                    child: TextFormField(
                      decoration: InputDecoration.collapsed(
                        hintText: 'Hai, Saya mau menyewa AC?',
                        hintStyle: secondaryTextStyle,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: kDefaultPadding * 2,
                ),
                Image.asset(
                  'assets/icons/ico_send.png',
                  width: 45,
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget content() {
      return ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: [
          ChatBubble(
            text: 'Hai Saya mau menyewa AC',
            isSender: true,
            hasProduct: true,
          ),
          ChatBubble(
            text: 'Halo Selamat datang saya Djoeki, selalu siap menemani anda',
            isSender: false,
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      bottomNavigationBar: chatInput(),
      body: content(),
    );
  }
}
