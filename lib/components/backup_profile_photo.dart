import 'package:flutter/material.dart';
import '../theme.dart';

class BackupPhotoProfile extends StatefulWidget {
  const BackupPhotoProfile({
    Key? key,
    this.isVerified = true,
    this.onTap,
  }) : super(key: key);

  @override
  State<BackupPhotoProfile> createState() => _BackupPhotoProfileState();

  final bool isVerified;
  final VoidCallback? onTap;
}

class _BackupPhotoProfileState extends State<BackupPhotoProfile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
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
                color: widget.isVerified ? primaryColor : secondaryTextColor,
                size: 14,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
