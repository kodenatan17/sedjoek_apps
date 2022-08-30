import 'package:flutter/material.dart';
import '../theme.dart';

class BackupPhotoProfile extends StatelessWidget {
  final bool isVerified;
  const BackupPhotoProfile({
    Key? key,
    this.isVerified = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            image: AssetImage(
              'assets/images/photo.png',
            ),
            fit: BoxFit.cover),
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
    );
  }
}
