import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import '../theme.dart';

class PhotoProfile extends StatelessWidget {
  final String photoURL;
  final bool isVerified;
  const PhotoProfile({
    Key? key,
    required this.photoURL,
    this.isVerified = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        ZoomDrawer.of(context)!.toggle();
      },
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage(
              photoURL,
            ),
          ),
        ),
        child: Align(
          alignment: Alignment.topRight,
          child: Container(
            width: 16,
            height: 16,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: Center(
              child: Icon(
                Icons.check_circle,
                color: isVerified ? primaryColor : secondaryTextColor,
                size: 14,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
