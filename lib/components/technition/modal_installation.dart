import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:im_stepper/stepper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';
import 'package:sedjoek_apps/components/technition/photo_forms.dart';
import 'package:sedjoek_apps/widgets/forms.dart';
import 'package:sedjoek_apps/widgets/forms_value.dart';

import '../../theme.dart';

class ModalInstallation extends StatefulWidget {
  const ModalInstallation({
    Key? key,
  }) : super(key: key);

  @override
  State<ModalInstallation> createState() => _ModalInstallationState();
}

class _ModalInstallationState extends State<ModalInstallation> {
  int activeStep = 0; // Initial step set to 0.

  // OPTIONAL: can be set directly.
  int dotCount = 3;

  final returnPipaController = TextEditingController();
  final returnPipaDrainaseController = TextEditingController();
  final returnKabelListrikController = TextEditingController();
  final returnDynaBoltController = TextEditingController();
  final returnBracketOutdoorController = TextEditingController();
  final returnDuckTapeController = TextEditingController();

  File? imageLocation;
  File? imageUnitInstallation;
  File? imageIndoorInstallation;
  File? imageOutdoorInstallation;
  File? imageAcOn;

  Future pickImageLocation(ImageSource source) async {
    try {
      final imageLocation = await ImagePicker().pickImage(source: source);
      if (imageLocation == null) return;

      final imageTemporary = File(imageLocation.path);
      setState(() => this.imageLocation = imageTemporary);
    } on PlatformException catch (e) {
      print('Gagal ambil gambar : $e');
    }
  }

  Future pickImageUnitInstallation(ImageSource source) async {
    try {
      final imageUnitInstallation =
          await ImagePicker().pickImage(source: source);
      if (imageUnitInstallation == null) return;

      final imageTemporary = File(imageUnitInstallation.path);
      setState(() => this.imageUnitInstallation = imageTemporary);
    } on PlatformException catch (e) {
      print('Gagal ambil gambar : $e');
    }
  }

  Future pickImageIndoorInstallation(ImageSource source) async {
    try {
      final imageIndoorInstallation =
          await ImagePicker().pickImage(source: source);
      if (imageIndoorInstallation == null) return;

      final imageTemporary = File(imageIndoorInstallation.path);
      setState(() => this.imageIndoorInstallation = imageTemporary);
    } on PlatformException catch (e) {
      print('Gagal ambil gambar : $e');
    }
  }

  Future pickImageOutdoorInstallation(ImageSource source) async {
    try {
      final imageOutdoorInstallation =
          await ImagePicker().pickImage(source: source);
      if (imageOutdoorInstallation == null) return;

      final imageTemporary = File(imageOutdoorInstallation.path);
      setState(() => this.imageOutdoorInstallation = imageTemporary);
    } on PlatformException catch (e) {
      print('Gagal ambil gambar : $e');
    }
  }

  Future pickImageAcOn(ImageSource source) async {
    try {
      final imageAcOn = await ImagePicker().pickImage(source: source);
      if (imageAcOn == null) return;

      final imageTemporary = File(imageAcOn.path);
      setState(() => this.imageAcOn = imageTemporary);
    } on PlatformException catch (e) {
      print('Gagal ambil gambar : $e');
    }
  }

  @override
  void dispose() {
    returnPipaController.dispose();
    returnPipaDrainaseController.dispose();
    returnKabelListrikController.dispose();
    returnDynaBoltController.dispose();
    returnBracketOutdoorController.dispose();
    returnDuckTapeController.dispose();
    super.dispose();
  }

  Widget lastContainer() {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: defaultMargin,
              child: Text(
                'Installation Photo',
                style: primaryTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: semiBold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(kDefaultMargin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Silahkan Upload Foto Lokasi',
                    style: primaryTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: semiBold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: kDefaultPadding),
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.5,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: imageLocation == null
                          ? backgroundColor1
                          : Colors.transparent,
                    ),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          showModalBottomSheet<void>(
                              context: context,
                              builder: (_) {
                                return Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: kDefaultPadding,
                                  ),
                                  width: double.infinity,
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                  margin: const EdgeInsets.symmetric(
                                    vertical: kDefaultPadding,
                                    horizontal: kDefaultPadding,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(
                                            kDefaultPadding),
                                        child: ElevatedButton.icon(
                                          onPressed: () {
                                            Navigator.pop(context);
                                            pickImageLocation(
                                                ImageSource.gallery);
                                          },
                                          icon: Icon(Icons.file_open),
                                          label: Text('Gallery'),
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.all(
                                            kDefaultPadding),
                                        child: ElevatedButton.icon(
                                          onPressed: () {
                                            Navigator.pop(context);
                                            pickImageLocation(
                                                ImageSource.camera);
                                          },
                                          icon: Icon(Icons.camera_alt),
                                          label: Text('Camera'),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              });
                        },
                        child: imageLocation == null
                            ? Lottie.asset(
                                'assets/lottie/upload.json',
                                width: 150,
                              )
                            : Image.file(
                                File(imageLocation!.path),
                                width: double.infinity,
                                fit: BoxFit.cover,
                                frameBuilder: (BuildContext context,
                                    Widget child,
                                    int? frame,
                                    bool wasSynchronouslyLoaded) {
                                  if (wasSynchronouslyLoaded) {
                                    return child;
                                  }
                                  return AnimatedOpacity(
                                    opacity: frame == null ? 0 : 1,
                                    duration: const Duration(seconds: 1),
                                    curve: Curves.easeOut,
                                    child: child,
                                  );
                                },
                              ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: defaultMargin,
                  ),
                  Text(
                    'Kawan Teknisi',
                    style: primaryTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(kDefaultMargin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Silahkan Upload Foto Unit Pemasangan',
                    style: primaryTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: semiBold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: kDefaultPadding),
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.5,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: imageUnitInstallation == null
                          ? backgroundColor1
                          : Colors.transparent,
                    ),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          showModalBottomSheet<void>(
                              context: context,
                              builder: (_) {
                                return Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: kDefaultPadding,
                                  ),
                                  width: double.infinity,
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                  margin: const EdgeInsets.symmetric(
                                    vertical: kDefaultPadding,
                                    horizontal: kDefaultPadding,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(
                                            kDefaultPadding),
                                        child: ElevatedButton.icon(
                                          onPressed: () {
                                            Navigator.pop(context);
                                            pickImageUnitInstallation(
                                                ImageSource.gallery);
                                          },
                                          icon: Icon(Icons.file_open),
                                          label: Text('Gallery'),
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.all(
                                            kDefaultPadding),
                                        child: ElevatedButton.icon(
                                          onPressed: () {
                                            Navigator.pop(context);
                                            pickImageUnitInstallation(
                                                ImageSource.camera);
                                          },
                                          icon: Icon(Icons.camera_alt),
                                          label: Text('Camera'),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              });
                        },
                        child: imageUnitInstallation == null
                            ? Lottie.asset(
                                'assets/lottie/upload.json',
                                width: 150,
                              )
                            : Image.file(
                                File(imageUnitInstallation!.path),
                                width: double.infinity,
                                fit: BoxFit.cover,
                                frameBuilder: (BuildContext context,
                                    Widget child,
                                    int? frame,
                                    bool wasSynchronouslyLoaded) {
                                  if (wasSynchronouslyLoaded) {
                                    return child;
                                  }
                                  return AnimatedOpacity(
                                    opacity: frame == null ? 0 : 1,
                                    duration: const Duration(seconds: 1),
                                    curve: Curves.easeOut,
                                    child: child,
                                  );
                                },
                              ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: defaultMargin,
                  ),
                  Text(
                    'Kawan Teknisi',
                    style: primaryTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(kDefaultMargin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Silahkan Upload Foto Indoor Pemasangan',
                    style: primaryTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: semiBold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: kDefaultPadding),
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.5,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: imageIndoorInstallation == null
                          ? backgroundColor1
                          : Colors.transparent,
                    ),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          showModalBottomSheet<void>(
                              context: context,
                              builder: (_) {
                                return Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: kDefaultPadding,
                                  ),
                                  width: double.infinity,
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                  margin: const EdgeInsets.symmetric(
                                    vertical: kDefaultPadding,
                                    horizontal: kDefaultPadding,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(
                                            kDefaultPadding),
                                        child: ElevatedButton.icon(
                                          onPressed: () {
                                            Navigator.pop(context);
                                            pickImageIndoorInstallation(
                                                ImageSource.gallery);
                                          },
                                          icon: Icon(Icons.file_open),
                                          label: Text('Gallery'),
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.all(
                                            kDefaultPadding),
                                        child: ElevatedButton.icon(
                                          onPressed: () {
                                            Navigator.pop(context);
                                            pickImageIndoorInstallation(
                                                ImageSource.camera);
                                          },
                                          icon: Icon(Icons.camera_alt),
                                          label: Text('Camera'),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              });
                        },
                        child: imageIndoorInstallation == null
                            ? Lottie.asset(
                                'assets/lottie/upload.json',
                                width: 150,
                              )
                            : Image.file(
                                File(imageIndoorInstallation!.path),
                                width: double.infinity,
                                fit: BoxFit.cover,
                                frameBuilder: (BuildContext context,
                                    Widget child,
                                    int? frame,
                                    bool wasSynchronouslyLoaded) {
                                  if (wasSynchronouslyLoaded) {
                                    return child;
                                  }
                                  return AnimatedOpacity(
                                    opacity: frame == null ? 0 : 1,
                                    duration: const Duration(seconds: 1),
                                    curve: Curves.easeOut,
                                    child: child,
                                  );
                                },
                              ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: defaultMargin,
                  ),
                  Text(
                    'Kawan Teknisi',
                    style: primaryTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(kDefaultMargin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Silahkan Upload Foto Outdoor Pemasangan',
                    style: primaryTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: semiBold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: kDefaultPadding),
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.5,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: imageOutdoorInstallation == null
                          ? backgroundColor1
                          : Colors.transparent,
                    ),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          showModalBottomSheet<void>(
                              context: context,
                              builder: (_) {
                                return Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: kDefaultPadding,
                                  ),
                                  width: double.infinity,
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                  margin: const EdgeInsets.symmetric(
                                    vertical: kDefaultPadding,
                                    horizontal: kDefaultPadding,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(
                                            kDefaultPadding),
                                        child: ElevatedButton.icon(
                                          onPressed: () {
                                            Navigator.pop(context);
                                            pickImageOutdoorInstallation(
                                                ImageSource.gallery);
                                          },
                                          icon: Icon(Icons.file_open),
                                          label: Text('Gallery'),
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.all(
                                            kDefaultPadding),
                                        child: ElevatedButton.icon(
                                          onPressed: () {
                                            Navigator.pop(context);
                                            pickImageOutdoorInstallation(
                                                ImageSource.camera);
                                          },
                                          icon: Icon(Icons.camera_alt),
                                          label: Text('Camera'),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              });
                        },
                        child: imageOutdoorInstallation == null
                            ? Lottie.asset(
                                'assets/lottie/upload.json',
                                width: 150,
                              )
                            : Image.file(
                                File(imageOutdoorInstallation!.path),
                                width: double.infinity,
                                fit: BoxFit.cover,
                                frameBuilder: (BuildContext context,
                                    Widget child,
                                    int? frame,
                                    bool wasSynchronouslyLoaded) {
                                  if (wasSynchronouslyLoaded) {
                                    return child;
                                  }
                                  return AnimatedOpacity(
                                    opacity: frame == null ? 0 : 1,
                                    duration: const Duration(seconds: 1),
                                    curve: Curves.easeOut,
                                    child: child,
                                  );
                                },
                              ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: defaultMargin,
                  ),
                  Text(
                    'Kawan Teknisi',
                    style: primaryTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(kDefaultMargin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Silahkan Upload Foto Unit AC Pemasangan',
                    style: primaryTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: semiBold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: kDefaultPadding),
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.5,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: imageUnitInstallation == null
                          ? backgroundColor1
                          : Colors.transparent,
                    ),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          showModalBottomSheet<void>(
                              context: context,
                              builder: (_) {
                                return Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: kDefaultPadding,
                                  ),
                                  width: double.infinity,
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                  margin: const EdgeInsets.symmetric(
                                    vertical: kDefaultPadding,
                                    horizontal: kDefaultPadding,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(
                                            kDefaultPadding),
                                        child: ElevatedButton.icon(
                                          onPressed: () {
                                            Navigator.pop(context);
                                            pickImageUnitInstallation(
                                                ImageSource.gallery);
                                          },
                                          icon: Icon(Icons.file_open),
                                          label: Text('Gallery'),
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.all(
                                            kDefaultPadding),
                                        child: ElevatedButton.icon(
                                          onPressed: () {
                                            Navigator.pop(context);
                                            pickImageUnitInstallation(
                                                ImageSource.camera);
                                          },
                                          icon: Icon(Icons.camera_alt),
                                          label: Text('Camera'),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              });
                        },
                        child: imageUnitInstallation == null
                            ? Lottie.asset(
                                'assets/lottie/upload.json',
                                width: 150,
                              )
                            : Image.file(
                                File(imageUnitInstallation!.path),
                                width: double.infinity,
                                fit: BoxFit.cover,
                                frameBuilder: (BuildContext context,
                                    Widget child,
                                    int? frame,
                                    bool wasSynchronouslyLoaded) {
                                  if (wasSynchronouslyLoaded) {
                                    return child;
                                  }
                                  return AnimatedOpacity(
                                    opacity: frame == null ? 0 : 1,
                                    duration: const Duration(seconds: 1),
                                    curve: Curves.easeOut,
                                    child: child,
                                  );
                                },
                              ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: defaultMargin,
                  ),
                  Text(
                    'Kawan Teknisi',
                    style: primaryTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(kDefaultMargin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Silahkan Upload AC ON',
                    style: primaryTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: semiBold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: kDefaultPadding),
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.5,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: imageAcOn == null
                          ? backgroundColor1
                          : Colors.transparent,
                    ),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          showModalBottomSheet<void>(
                              context: context,
                              builder: (_) {
                                return Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: kDefaultPadding,
                                  ),
                                  width: double.infinity,
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                  margin: const EdgeInsets.symmetric(
                                    vertical: kDefaultPadding,
                                    horizontal: kDefaultPadding,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(
                                            kDefaultPadding),
                                        child: ElevatedButton.icon(
                                          onPressed: () {
                                            Navigator.pop(context);
                                            pickImageAcOn(ImageSource.gallery);
                                          },
                                          icon: Icon(Icons.file_open),
                                          label: Text('Gallery'),
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.all(
                                            kDefaultPadding),
                                        child: ElevatedButton.icon(
                                          onPressed: () {
                                            Navigator.pop(context);
                                            pickImageAcOn(ImageSource.camera);
                                          },
                                          icon: Icon(Icons.camera_alt),
                                          label: Text('Camera'),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              });
                        },
                        child: imageAcOn == null
                            ? Lottie.asset(
                                'assets/lottie/upload.json',
                                width: 150,
                              )
                            : Image.file(
                                File(imageAcOn!.path),
                                width: double.infinity,
                                fit: BoxFit.cover,
                                frameBuilder: (BuildContext context,
                                    Widget child,
                                    int? frame,
                                    bool wasSynchronouslyLoaded) {
                                  if (wasSynchronouslyLoaded) {
                                    return child;
                                  }
                                  return AnimatedOpacity(
                                    opacity: frame == null ? 0 : 1,
                                    duration: const Duration(seconds: 1),
                                    curve: Curves.easeOut,
                                    child: child,
                                  );
                                },
                              ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: defaultMargin,
                  ),
                  Text(
                    'Kawan Teknisi',
                    style: primaryTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget firstContainer() {
    return Expanded(
      child: ListView(
        children: [
          SizedBox(
            height: defaultMargin,
            child: Text(
              'Return Material',
              style: primaryTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          CustomFormField(
            hintText: 'Return Pipa',
            title: 'Return Pipa (Meter)',
            suffixIcon: Icons.store,
            textInputType: TextInputType.number,
            controller: returnPipaController,
          ),
          CustomFormField(
            hintText: 'Return Kabel Listrik',
            title: 'Return Kabel Listrik (Meter)',
            suffixIcon: Icons.store,
            textInputType: TextInputType.number,
            controller: returnKabelListrikController,
          ),
          CustomFormField(
            hintText: 'Return Pipa Drainase',
            title: 'Return Pipa Drainase (Meter)',
            suffixIcon: Icons.store,
            textInputType: TextInputType.number,
            controller: returnPipaDrainaseController,
          ),
          CustomFormField(
            hintText: 'Return Bracket Outdoor',
            title: 'Return Bracket Outdoor (Pcs)',
            suffixIcon: Icons.store,
            textInputType: TextInputType.number,
            controller: returnBracketOutdoorController,
          ),
          CustomFormField(
            hintText: 'Return Dyna Bolt',
            title: 'Return Dyna Bolt (Pcs)',
            suffixIcon: Icons.store,
            textInputType: TextInputType.number,
            textController: returnDynaBoltController,
          ),
          CustomFormField(
            hintText: 'Return Duck Tape',
            title: 'Return Duck Tape (Pcs)',
            suffixIcon: Icons.store,
            textInputType: TextInputType.number,
            textController: returnDuckTapeController,
          ),
        ],
      ),
    );
  }

  Widget secondContainer() {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: defaultMargin,
              child: Text(
                'Installation Photo',
                style: primaryTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: semiBold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(kDefaultMargin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Silahkan Upload Foto Lokasi',
                    style: primaryTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: semiBold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: kDefaultPadding),
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.5,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: imageLocation == null
                          ? backgroundColor1
                          : Colors.transparent,
                    ),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          imageLocation == null
                              ? null
                              : showModalBottomSheet<void>(
                                  context: context,
                                  builder: (_) {
                                    return Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: kDefaultPadding,
                                      ),
                                      width: double.infinity,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.1,
                                      margin: const EdgeInsets.symmetric(
                                        vertical: kDefaultPadding,
                                        horizontal: kDefaultPadding,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.all(
                                                kDefaultPadding),
                                            child: ElevatedButton.icon(
                                              onPressed: () {
                                                Navigator.pop(context);
                                                pickImageLocation(
                                                    ImageSource.gallery);
                                              },
                                              icon: Icon(Icons.file_open),
                                              label: Text('Gallery'),
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.all(
                                                kDefaultPadding),
                                            child: ElevatedButton.icon(
                                              onPressed: () {
                                                Navigator.pop(context);
                                                pickImageLocation(
                                                    ImageSource.camera);
                                              },
                                              icon: Icon(Icons.camera_alt),
                                              label: Text('Camera'),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  });
                        },
                        child: imageLocation == null
                            ? Lottie.asset(
                                'assets/lottie/upload.json',
                                width: 150,
                              )
                            : Image.file(
                                File(imageLocation!.path),
                                width: double.infinity,
                                fit: BoxFit.cover,
                                frameBuilder: (BuildContext context,
                                    Widget child,
                                    int? frame,
                                    bool wasSynchronouslyLoaded) {
                                  if (wasSynchronouslyLoaded) {
                                    return child;
                                  }
                                  return AnimatedOpacity(
                                    opacity: frame == null ? 0 : 1,
                                    duration: const Duration(seconds: 1),
                                    curve: Curves.easeOut,
                                    child: child,
                                  );
                                },
                              ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: defaultMargin,
                  ),
                  Text(
                    'Kawan Teknisi',
                    style: primaryTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(kDefaultMargin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Silahkan Upload Foto Unit Pemasangan',
                    style: primaryTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: semiBold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: kDefaultPadding),
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.5,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: imageUnitInstallation == null
                          ? backgroundColor1
                          : Colors.transparent,
                    ),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          imageUnitInstallation == null
                              ? null
                              : showModalBottomSheet<void>(
                                  context: context,
                                  builder: (_) {
                                    return Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: kDefaultPadding,
                                      ),
                                      width: double.infinity,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.1,
                                      margin: const EdgeInsets.symmetric(
                                        vertical: kDefaultPadding,
                                        horizontal: kDefaultPadding,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.all(
                                                kDefaultPadding),
                                            child: ElevatedButton.icon(
                                              onPressed: () {
                                                Navigator.pop(context);
                                                pickImageUnitInstallation(
                                                    ImageSource.gallery);
                                              },
                                              icon: Icon(Icons.file_open),
                                              label: Text('Gallery'),
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.all(
                                                kDefaultPadding),
                                            child: ElevatedButton.icon(
                                              onPressed: () {
                                                Navigator.pop(context);
                                                pickImageUnitInstallation(
                                                    ImageSource.camera);
                                              },
                                              icon: Icon(Icons.camera_alt),
                                              label: Text('Camera'),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  });
                        },
                        child: imageUnitInstallation == null
                            ? Lottie.asset(
                                'assets/lottie/upload.json',
                                width: 150,
                              )
                            : Image.file(
                                File(imageUnitInstallation!.path),
                                width: double.infinity,
                                fit: BoxFit.cover,
                                frameBuilder: (BuildContext context,
                                    Widget child,
                                    int? frame,
                                    bool wasSynchronouslyLoaded) {
                                  if (wasSynchronouslyLoaded) {
                                    return child;
                                  }
                                  return AnimatedOpacity(
                                    opacity: frame == null ? 0 : 1,
                                    duration: const Duration(seconds: 1),
                                    curve: Curves.easeOut,
                                    child: child,
                                  );
                                },
                              ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: defaultMargin,
                  ),
                  Text(
                    'Kawan Teknisi',
                    style: primaryTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(kDefaultMargin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Silahkan Upload Foto Indoor Pemasangan',
                    style: primaryTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: semiBold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: kDefaultPadding),
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.5,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: imageIndoorInstallation == null
                          ? backgroundColor1
                          : Colors.transparent,
                    ),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          imageIndoorInstallation == null
                              ? null
                              : showModalBottomSheet<void>(
                                  context: context,
                                  builder: (_) {
                                    return Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: kDefaultPadding,
                                      ),
                                      width: double.infinity,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.1,
                                      margin: const EdgeInsets.symmetric(
                                        vertical: kDefaultPadding,
                                        horizontal: kDefaultPadding,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.all(
                                                kDefaultPadding),
                                            child: ElevatedButton.icon(
                                              onPressed: () {
                                                Navigator.pop(context);
                                                pickImageIndoorInstallation(
                                                    ImageSource.gallery);
                                              },
                                              icon: Icon(Icons.file_open),
                                              label: Text('Gallery'),
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.all(
                                                kDefaultPadding),
                                            child: ElevatedButton.icon(
                                              onPressed: () {
                                                Navigator.pop(context);
                                                pickImageIndoorInstallation(
                                                    ImageSource.camera);
                                              },
                                              icon: Icon(Icons.camera_alt),
                                              label: Text('Camera'),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  });
                        },
                        child: imageIndoorInstallation == null
                            ? Lottie.asset(
                                'assets/lottie/upload.json',
                                width: 150,
                              )
                            : Image.file(
                                File(imageIndoorInstallation!.path),
                                width: double.infinity,
                                fit: BoxFit.cover,
                                frameBuilder: (BuildContext context,
                                    Widget child,
                                    int? frame,
                                    bool wasSynchronouslyLoaded) {
                                  if (wasSynchronouslyLoaded) {
                                    return child;
                                  }
                                  return AnimatedOpacity(
                                    opacity: frame == null ? 0 : 1,
                                    duration: const Duration(seconds: 1),
                                    curve: Curves.easeOut,
                                    child: child,
                                  );
                                },
                              ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: defaultMargin,
                  ),
                  Text(
                    'Kawan Teknisi',
                    style: primaryTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(kDefaultMargin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Silahkan Upload Foto Outdoor Pemasangan',
                    style: primaryTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: semiBold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: kDefaultPadding),
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.5,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: imageOutdoorInstallation == null
                          ? backgroundColor1
                          : Colors.transparent,
                    ),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          imageOutdoorInstallation == null
                              ? null
                              : showModalBottomSheet<void>(
                                  context: context,
                                  builder: (_) {
                                    return Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: kDefaultPadding,
                                      ),
                                      width: double.infinity,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.1,
                                      margin: const EdgeInsets.symmetric(
                                        vertical: kDefaultPadding,
                                        horizontal: kDefaultPadding,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.all(
                                                kDefaultPadding),
                                            child: ElevatedButton.icon(
                                              onPressed: () {
                                                Navigator.pop(context);
                                                pickImageOutdoorInstallation(
                                                    ImageSource.gallery);
                                              },
                                              icon: Icon(Icons.file_open),
                                              label: Text('Gallery'),
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.all(
                                                kDefaultPadding),
                                            child: ElevatedButton.icon(
                                              onPressed: () {
                                                Navigator.pop(context);
                                                pickImageOutdoorInstallation(
                                                    ImageSource.camera);
                                              },
                                              icon: Icon(Icons.camera_alt),
                                              label: Text('Camera'),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  });
                        },
                        child: imageOutdoorInstallation == null
                            ? Lottie.asset(
                                'assets/lottie/upload.json',
                                width: 150,
                              )
                            : Image.file(
                                File(imageOutdoorInstallation!.path),
                                width: double.infinity,
                                fit: BoxFit.cover,
                                frameBuilder: (BuildContext context,
                                    Widget child,
                                    int? frame,
                                    bool wasSynchronouslyLoaded) {
                                  if (wasSynchronouslyLoaded) {
                                    return child;
                                  }
                                  return AnimatedOpacity(
                                    opacity: frame == null ? 0 : 1,
                                    duration: const Duration(seconds: 1),
                                    curve: Curves.easeOut,
                                    child: child,
                                  );
                                },
                              ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: defaultMargin,
                  ),
                  Text(
                    'Kawan Teknisi',
                    style: primaryTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(kDefaultMargin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Silahkan Upload Foto Unit AC Pemasangan',
                    style: primaryTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: semiBold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: kDefaultPadding),
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.5,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: imageUnitInstallation == null
                          ? backgroundColor1
                          : Colors.transparent,
                    ),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          imageUnitInstallation == null
                              ? null
                              : showModalBottomSheet<void>(
                                  context: context,
                                  builder: (_) {
                                    return Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: kDefaultPadding,
                                      ),
                                      width: double.infinity,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.1,
                                      margin: const EdgeInsets.symmetric(
                                        vertical: kDefaultPadding,
                                        horizontal: kDefaultPadding,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.all(
                                                kDefaultPadding),
                                            child: ElevatedButton.icon(
                                              onPressed: () {
                                                Navigator.pop(context);
                                                pickImageUnitInstallation(
                                                    ImageSource.gallery);
                                              },
                                              icon: Icon(Icons.file_open),
                                              label: Text('Gallery'),
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.all(
                                                kDefaultPadding),
                                            child: ElevatedButton.icon(
                                              onPressed: () {
                                                Navigator.pop(context);
                                                pickImageUnitInstallation(
                                                    ImageSource.camera);
                                              },
                                              icon: Icon(Icons.camera_alt),
                                              label: Text('Camera'),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  });
                        },
                        child: imageUnitInstallation == null
                            ? Lottie.asset(
                                'assets/lottie/upload.json',
                                width: 150,
                              )
                            : Image.file(
                                File(imageUnitInstallation!.path),
                                width: double.infinity,
                                fit: BoxFit.cover,
                                frameBuilder: (BuildContext context,
                                    Widget child,
                                    int? frame,
                                    bool wasSynchronouslyLoaded) {
                                  if (wasSynchronouslyLoaded) {
                                    return child;
                                  }
                                  return AnimatedOpacity(
                                    opacity: frame == null ? 0 : 1,
                                    duration: const Duration(seconds: 1),
                                    curve: Curves.easeOut,
                                    child: child,
                                  );
                                },
                              ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: defaultMargin,
                  ),
                  Text(
                    'Kawan Teknisi',
                    style: primaryTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(kDefaultMargin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Silahkan Upload AC ON',
                    style: primaryTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: semiBold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: kDefaultPadding),
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.5,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: imageAcOn == null
                          ? backgroundColor1
                          : Colors.transparent,
                    ),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          imageAcOn == null
                              ? null
                              : showModalBottomSheet<void>(
                                  context: context,
                                  builder: (_) {
                                    return Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: kDefaultPadding,
                                      ),
                                      width: double.infinity,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.1,
                                      margin: const EdgeInsets.symmetric(
                                        vertical: kDefaultPadding,
                                        horizontal: kDefaultPadding,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.all(
                                                kDefaultPadding),
                                            child: ElevatedButton.icon(
                                              onPressed: () {
                                                Navigator.pop(context);
                                                pickImageAcOn(
                                                    ImageSource.gallery);
                                              },
                                              icon: Icon(Icons.file_open),
                                              label: Text('Gallery'),
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.all(
                                                kDefaultPadding),
                                            child: ElevatedButton.icon(
                                              onPressed: () {
                                                Navigator.pop(context);
                                                pickImageAcOn(
                                                    ImageSource.camera);
                                              },
                                              icon: Icon(Icons.camera_alt),
                                              label: Text('Camera'),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  });
                        },
                        child: imageAcOn == null
                            ? Lottie.asset(
                                'assets/lottie/upload.json',
                                width: 150,
                              )
                            : Image.file(
                                File(imageAcOn!.path),
                                width: double.infinity,
                                fit: BoxFit.cover,
                                frameBuilder: (BuildContext context,
                                    Widget child,
                                    int? frame,
                                    bool wasSynchronouslyLoaded) {
                                  if (wasSynchronouslyLoaded) {
                                    return child;
                                  }
                                  return AnimatedOpacity(
                                    opacity: frame == null ? 0 : 1,
                                    duration: const Duration(seconds: 1),
                                    curve: Curves.easeOut,
                                    child: child,
                                  );
                                },
                              ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: defaultMargin,
                  ),
                  Text(
                    'Kawan Teknisi',
                    style: primaryTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                    ),
                  )
                ],
              ),
            ),
            const Divider(
              height: kDefaultPadding,
            ),
            SizedBox(
              height: defaultMargin,
              child: Text(
                'Return Material',
                style: primaryTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: semiBold,
                ),
              ),
            ),
            CustomFormField(
              title: 'Return Pipa (Meter)',
              suffixIcon: Icons.store,
              controller: returnPipaController,
              readOnly: true,
            ),
            CustomFormField(
              title: 'Return Kabel Listrik (Meter)',
              suffixIcon: Icons.store,
              controller: returnKabelListrikController,
              readOnly: true,
            ),
            CustomFormField(
              title: 'Return Pipa Drainase (Meter)',
              suffixIcon: Icons.store,
              controller: returnPipaDrainaseController,
              readOnly: true,
            ),
            CustomFormField(
              title: 'Return Bracket Outdoor (Pcs)',
              suffixIcon: Icons.store,
              controller: returnBracketOutdoorController,
              readOnly: true,
            ),
            CustomFormField(
              title: 'Return Dyna Bolt (Pcs)',
              suffixIcon: Icons.store,
              controller: returnDynaBoltController,
              readOnly: true,
            ),
            CustomFormField(
              title: 'Return Duck Tape (Pcs)',
              suffixIcon: Icons.store,
              controller: returnDynaBoltController,
              readOnly: true,
            ),
            const Divider(
              height: kDefaultPadding,
            ),
            SizedBox(
              height: defaultMargin,
              child: Text(
                'Additional Notes',
                style: primaryTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: semiBold,
                ),
              ),
            ),
            CustomFormField(
              height: 100,
              hintText: 'Notes Tambahan Pemasangan',
              title: 'Notes Tambahan Pemasangan',
              suffixIcon: Icons.notes,
              minLines: 4,
              maxLines: null,
            ),
            Text(
              'Galih Wicaksana',
              style: primaryTextStyle.copyWith(
                fontSize: 18,
                fontWeight: medium,
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          flexibleSpace: Container(
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bg-header.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          title: Text(
            'INPUT DATA INSTALLATION',
            style: whiteTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          centerTitle: true,
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(defaultMargin),
          color: Colors.white,
        ),
        margin: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding,
          vertical: kDefaultCircular,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DotStepper(
              // direction: Axis.vertical,
              dotCount: dotCount,
              dotRadius: kDefaultPadding,

              /// THIS MUST BE SET. SEE HOW IT IS CHANGED IN NEXT/PREVIOUS BUTTONS AND JUMP BUTTONS.
              activeStep: activeStep,
              shape: Shape.pipe,
              spacing: 30,
              indicator: Indicator.jump,

              /// TAPPING WILL NOT FUNCTION PROPERLY WITHOUT THIS PIECE OF CODE.
              onDotTapped: (tappedDotIndex) {
                setState(() {
                  activeStep = tappedDotIndex;
                });
              },

              // DOT-STEPPER DECORATIONS
              fixedDotDecoration: FixedDotDecoration(
                color: Colors.grey.shade300,
              ),

              indicatorDecoration: IndicatorDecoration(
                // style: PaintingStyle.stroke,
                // strokeWidth: 8,
                color: primaryColor,
              ),
              lineConnectorDecoration: LineConnectorDecoration(
                color: Colors.grey.shade300,
                strokeWidth: 0,
              ),
            ),

            //Container
            contentContainer(),

            // Next and Previous buttons.
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [previousButton(), nextButton()],
            )
          ],
        ),
      ),
    );
  }

  Widget contentContainer() {
    switch (activeStep) {
      case 1:
        return firstContainer();

      case 2:
        return secondContainer();

      default:
        return lastContainer();
    }
  }

  Widget nextButton() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            primaryColor,
            purple1,
          ],
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      width: 100,
      child: ElevatedButton(
        child: Icon(
          Icons.navigate_next,
          color: Colors.white,
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black.withOpacity(0.05),
          shadowColor: Colors.black.withOpacity(0.05),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(kDefaultCircular),
          ),
        ),
        onPressed: () {
          /// ACTIVE STEP MUST BE CHECKED FOR (dotCount - 1) AND NOT FOR dotCount To PREVENT Overflow ERROR.
          if (activeStep < dotCount - 1) {
            setState(() {
              activeStep++;
            });
          }
        },
      ),
    );
  }

  /// Returns the previous button widget.
  Widget previousButton() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            primaryColor,
            purple1,
          ],
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      width: 100,
      child: ElevatedButton(
        child: Icon(
          Icons.navigate_before,
          color: Colors.white,
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black.withOpacity(0.05),
          shadowColor: Colors.black.withOpacity(0.05),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(kDefaultCircular),
          ),
        ),
        onPressed: () {
          // activeStep MUST BE GREATER THAN 0 TO PREVENT OVERFLOW.
          if (activeStep > 0) {
            setState(() {
              activeStep--;
            });
          }
        },
      ),
    );
  }
}
