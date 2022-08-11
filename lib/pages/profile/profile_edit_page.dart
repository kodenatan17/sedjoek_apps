import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:im_stepper/stepper.dart';
import 'package:lottie/lottie.dart';
import 'package:sedjoek_apps/theme.dart';
import 'package:sedjoek_apps/widgets/buttons.dart';
import 'package:sedjoek_apps/widgets/forms.dart';

class ProfileEditPage extends StatefulWidget {
  const ProfileEditPage({Key? key}) : super(key: key);

  @override
  State<ProfileEditPage> createState() => _ProfileEditPageState();
}

class _ProfileEditPageState extends State<ProfileEditPage> {
  int activeStep = 0; // Initial step set to 0.

  // OPTIONAL: can be set directly.
  int dotCount = 6;

  Widget firstContainer() {
    List<String> residences = ['Rumah Pribadi', 'Kost', 'Kontrak', 'Lain-lain'];
    String? selectedResidences = 'Rumah Pribadi';

    List<String> jobs = [
      'Karyawan',
      'Mahasiswa/Pelajar',
      'Wiraswasta',
      'TNI/Polri',
      'PNS'
    ];
    String? selectedJobs = 'Karyawan';

    return Expanded(
      child: ListView(
        children: [
          SizedBox(
            height: kDefaultPadding,
          ),
          CustomFormField(
            hintText: 'Masukan Alamat Domisili',
            title: 'Domisili Anda',
            suffixIcon: Icons.account_circle_outlined,
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Status Tempat Tinggal Sekarang',
                  style: primaryTextStyle.copyWith(
                    fontWeight: medium,
                  ),
                ),
                SizedBox(
                  height: 40,
                  child: DropdownButtonFormField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(kDefaultCircular),
                        borderSide: BorderSide(
                          width: 1,
                          color: Colors.grey.shade500,
                        ),
                      ),
                    ),
                    iconSize: 14,
                    elevation: 9,
                    isExpanded: true,
                    value: selectedResidences,
                    items: residences
                        .map(
                          (itemResidence) => DropdownMenuItem(
                            value: itemResidence,
                            child: Text(
                              itemResidence,
                              style: primaryTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: medium,
                              ),
                            ),
                          ),
                        )
                        .toList(),
                    onChanged: (value) => setState(
                      () => selectedResidences = value.toString(),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Profesi',
                  style: primaryTextStyle.copyWith(
                    fontWeight: medium,
                  ),
                ),
                SizedBox(
                  height: 40,
                  child: DropdownButtonFormField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(kDefaultCircular),
                        borderSide: BorderSide(
                          width: 1,
                          color: Colors.grey.shade500,
                        ),
                      ),
                    ),
                    iconSize: 14,
                    elevation: 9,
                    isExpanded: true,
                    value: selectedJobs,
                    items: jobs
                        .map(
                          (itemJob) => DropdownMenuItem(
                            value: itemJob,
                            child: Text(
                              itemJob,
                              style: primaryTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: medium,
                              ),
                            ),
                          ),
                        )
                        .toList(),
                    onChanged: (value) => setState(
                      () => selectedResidences = value.toString(),
                    ),
                  ),
                ),
              ],
            ),
          ),
          CustomFormField(
            hintText: 'Nama Saudara Kamu',
            title: 'Saudara Kamu',
            suffixIcon: Icons.calendar_month_outlined,
          ),
          CustomFormField(
            hintText: 'Nomor Telepon',
            title: 'Telepon',
            suffixIcon: FontAwesomeIcons.idCard,
          ),
        ],
      ),
    );
  }

  Widget secondContainer() {
    List<String> relations = [
      'Ayah',
      'Ibu',
      'Suami',
      'Istri',
      'Anak',
      'Saudara',
    ];
    String? selectRelations = 'Ayah';

    return Expanded(
      child: ListView(
        children: [
          SizedBox(
            height: kDefaultPadding,
          ),
          CustomFormField(
            hintText: 'Masukan Nama',
            title: 'Nama Lengkap (Kontak Darurat)',
            suffixIcon: Icons.account_circle_outlined,
          ),
          CustomFormField(
            hintText: 'Masukan Nomor Telepon',
            title: 'Nomor Telepon (Kontak Darurat)',
            suffixIcon: Icons.account_circle_outlined,
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Status Tempat Tinggal Sekarang',
                  style: primaryTextStyle.copyWith(
                    fontWeight: medium,
                  ),
                ),
                SizedBox(
                  height: 40,
                  child: DropdownButtonFormField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(kDefaultCircular),
                        borderSide: BorderSide(
                          width: 1,
                          color: Colors.grey.shade500,
                        ),
                      ),
                    ),
                    iconSize: 14,
                    elevation: 9,
                    isExpanded: true,
                    value: selectRelations,
                    items: relations
                        .map(
                          (itemResidence) => DropdownMenuItem(
                            value: itemResidence,
                            child: Text(
                              itemResidence,
                              style: primaryTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: medium,
                              ),
                            ),
                          ),
                        )
                        .toList(),
                    onChanged: (value) => setState(
                      () => selectRelations = value.toString(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget thirdContainer() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: defaultMargin * 2,
          ),
          Text(
            'Silahkan Upload Foto KTP',
            style: primaryTextStyle.copyWith(
              fontSize: 18,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(height: kDefaultPadding),
          Container(
            width: 150,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: backgroundColor1,
            ),
            child: Center(
              child: Lottie.asset(
                'assets/lottie/upload.json',
                width: 150,
              ),
            ),
          ),
          const SizedBox(
            height: kDefaultPadding,
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
    );
  }

  Widget fourthContainer() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: defaultMargin * 2,
          ),
          Text(
            'Silahkan Upload Foto KK',
            style: primaryTextStyle.copyWith(
              fontSize: 18,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(height: kDefaultPadding),
          Container(
            width: 150,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: backgroundColor1,
            ),
            child: Center(
              child: Lottie.asset(
                'assets/lottie/upload.json',
                width: 150,
              ),
            ),
          ),
          const SizedBox(
            height: defaultMargin,
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
    );
  }

  Widget fifthContainer() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: defaultMargin * 2,
          ),
          Text(
            'Silahkan Upload Foto Diri dan KTP',
            style: primaryTextStyle.copyWith(
              fontSize: 18,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(height: kDefaultPadding),
          Container(
            width: 150,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: backgroundColor1,
            ),
            child: Center(
              child: Lottie.asset(
                'assets/lottie/selfie.json',
                width: 150,
                fit: BoxFit.cover
              ),
            ),
          ),
          const SizedBox(
            height: defaultMargin,
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
    );
  }

  Widget lastContainer() {
    return Expanded(
      child: ListView(
        children: [
          SizedBox(
            height: kDefaultPadding,
          ),
          CustomFormField(
            hintText: 'Masukan Nama Anda',
            title: 'Nama Lengkap',
            suffixIcon: Icons.account_circle_outlined,
          ),
          CustomFormField(
            hintText: 'Masukan Nomor Telepon Anda',
            title: 'Nomor Telepon',
            suffixIcon: Icons.account_circle_outlined,
          ),
          CustomFormField(
            hintText: 'Masukan Email Anda',
            title: 'Email',
            suffixIcon: Icons.account_circle_outlined,
          ),
          CustomFormField(
            hintText: 'Tanggal Lahir',
            title: 'Tanggal Lahir',
            suffixIcon: Icons.calendar_month_outlined,
          ),
          CustomFormField(
            hintText: 'No KTP anda',
            title: 'No KTP',
            suffixIcon: FontAwesomeIcons.idCard,
          ),
          CustomFormField(
            hintText: 'Masukan Alamat Sesuai KTP',
            title: 'Alamat Sesuai KTP',
            suffixIcon: FontAwesomeIcons.mapLocationDot,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit Profile',
          style: primaryTextStyle.copyWith(
            fontWeight: semiBold,
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: backgroundColor1,
        elevation: 0,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(defaultMargin),
          color: Colors.white,
        ),
        margin: const EdgeInsets.all(24),
        padding: const EdgeInsets.symmetric(
          horizontal: defaultMargin,
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

  /// Generates jump steps for dotCount number of steps, and returns them in a row.
  // Row steps() {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //     children: List.generate(dotCount, (index) {
  //       return ElevatedButton(
  //         child: Text('${index + 1}'),
  //         onPressed: () {
  //           setState(() {
  //             activeStep = index;
  //           });
  //         },
  //       );
  //     }),
  //   );
  // }

  /// Returns the next button widget.
  Widget contentContainer() {
    switch (activeStep) {
      case 1:
        return firstContainer();

      case 2:
        return secondContainer();

      case 3:
        return thirdContainer();

      case 4:
        return fourthContainer();

      case 5:
        return fifthContainer();

      default:
        return lastContainer();
    }
  }

  Widget nextButton() {
    return Container(
      width: 100,
      child: ElevatedButton(
        child: Icon(
          Icons.navigate_next,
          color: primaryColor,
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
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
      width: 100,
      child: ElevatedButton(
        child: Icon(
          Icons.navigate_before,
          color: primaryColor,
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
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
