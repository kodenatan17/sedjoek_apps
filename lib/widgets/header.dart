import 'package:flutter/material.dart';

import '../../theme.dart';

class Header extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Center(
      child: Container(
        child: Column(
          children: [
            Image.asset("assets/logo/logo.png"),
            SizedBox(
              height: kDefaultMargin,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white.withOpacity(.7),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(kDefaultCircular),
                      ),
                    ),
                    icon: Image.asset(
                      "assets/icons/ico_google.png",
                      fit: BoxFit.cover,
                      height: 25,
                    ),
                    label: const Text(
                      "Masuk dengan Google",
                      style: TextStyle(
                        color: Colors.black45,
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(1.0, 1.0),
                            blurRadius: 4.0,
                            color: Colors.black45,
                          ),
                        ],
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  height: kDefaultPadding,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: new Container(
                          margin: const EdgeInsets.only(right: 20.0),
                          child: Divider(
                            color: Colors.black,
                            height: 36,
                          )),
                    ),
                    Text(
                      "atau",
                      style: secondaryTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: semiBold
                      ),
                    ),
                    Expanded(
                      child: new Container(
                        margin: const EdgeInsets.only(left: 20.0),
                        child: Divider(
                          color: Colors.black,
                          height: 36,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}