import 'package:dropdown_button2/custom_dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:im_stepper/stepper.dart';
import 'package:lottie/lottie.dart';
import 'package:sedjoek_apps/widgets/forms.dart';

import '../../theme.dart';

class ModalSourvey extends StatefulWidget {
  const ModalSourvey({Key? key}) : super(key: key);

  @override
  State<ModalSourvey> createState() => _ModalSourveyState();
}

class _ModalSourveyState extends State<ModalSourvey> {
  int activeStep = 0; // Initial step set to 0.

  // OPTIONAL: can be set directly.
  int dotCount = 3;

  List<String> pipa = ['3 Meter', '4 Meter', '5 Meter', '6 Meter', '7 Meter'];
  List<String> kabelListrik = [
    '1 Meter',
    '2 Meter',
    '3 Meter',
    '4 Meter',
    '5 Meter'
  ];
  List<String> pipaDrainase = [
    '1 Meter',
    '2 Meter',
    '3 Meter',
    '4 Meter',
    '5 Meter'
  ];
  List<String> bracketOutdoor = ['1 pcs', '2 pcs', '3 pcs', '4 pcs', '5 pcs'];
  List<String> dynaBolt = ['2 pcs', '4 pcs', '6 pcs', '8 pcs', '10 pcs'];

  String? selectedPipa;
  String? selectedKabelListrik;
  String? selectedPipaDrainese;
  String? selectedBrackerOutdoor;
  String? selectedDynaBolt;

  Widget firstContainer() {
    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: defaultMargin,
                child: Text(
                  'Additional Item',
                  style: primaryTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semiBold,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Additional Pipa',
                      style: primaryTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 40,
                      child: DropdownButtonHideUnderline(
                        child: CustomDropdownButton2(
                          hint: 'Select Item',
                          dropdownItems: pipa,
                          value: selectedPipa,
                          onChanged: (value) => setState(
                            () => selectedPipa = value.toString(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: kDefaultPadding,
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Additional Kabel Listrik',
                      style: primaryTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 40,
                      child: DropdownButtonHideUnderline(
                        child: CustomDropdownButton2(
                          hint: 'Select Item',
                          dropdownItems: kabelListrik,
                          value: selectedKabelListrik,
                          onChanged: (value) => setState(
                            () => selectedKabelListrik = value.toString(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: kDefaultPadding,
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Additional Pipa Drainase',
                      style: primaryTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 40,
                      child: DropdownButtonHideUnderline(
                        child: CustomDropdownButton2(
                          hint: 'Select Item',
                          dropdownItems: pipaDrainase,
                          value: selectedPipaDrainese,
                          onChanged: (value) => setState(
                            () => selectedPipaDrainese = value.toString(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: kDefaultPadding,
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Additional Bracket Outdoor',
                      style: primaryTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 40,
                      child: DropdownButtonHideUnderline(
                        child: CustomDropdownButton2(
                          hint: 'Select Item',
                          dropdownItems: bracketOutdoor,
                          value: selectedBrackerOutdoor,
                          onChanged: (value) => setState(
                            () => selectedBrackerOutdoor = value.toString(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: kDefaultPadding,
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Additional Dyna Bolts',
                      style: primaryTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 40,
                      child: DropdownButtonHideUnderline(
                        child: CustomDropdownButton2(
                          hint: 'Select Item',
                          dropdownItems: dynaBolt,
                          value: selectedDynaBolt,
                          onChanged: (value) => setState(
                            () => selectedDynaBolt = value.toString(),
                          ),
                        ),
                      ),
                    ),
                  ],
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
        ),
      ),
    );
  }

  Widget secondContainer() {
    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: defaultMargin,
                child: Text(
                  'Sourvey Photo',
                  style: primaryTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semiBold,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Silahkan Upload Foto Lokasi',
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
                      'Silahkan Upload Foto Titik Pemasangan',
                      style: primaryTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: semiBold,
                      ),
                      textAlign: TextAlign.center,
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
                height: kDefaultPadding * 2,
              ),
              SizedBox(
                height: defaultMargin,
                child: Text(
                  'Additional Item',
                  style: primaryTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semiBold,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Additional Pipa',
                      style: primaryTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 40,
                      child: DropdownButtonHideUnderline(
                        child: CustomDropdownButton2(
                          hint: 'Select Item',
                          dropdownItems: pipa,
                          value: selectedPipa,
                          onChanged: null,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: kDefaultPadding,
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Additional Kabel Listrik',
                      style: primaryTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 40,
                      child: DropdownButtonHideUnderline(
                        child: CustomDropdownButton2(
                          hint: 'Select Item',
                          dropdownItems: kabelListrik,
                          value: selectedKabelListrik,
                          onChanged: null,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: kDefaultPadding,
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Additional Pipa Drainase',
                      style: primaryTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 40,
                      child: DropdownButtonHideUnderline(
                        child: CustomDropdownButton2(
                          hint: 'Select Item',
                          dropdownItems: pipaDrainase,
                          value: selectedPipaDrainese,
                          onChanged: null,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: kDefaultPadding,
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Additional Bracket Outdoor',
                      style: primaryTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 40,
                      child: DropdownButtonHideUnderline(
                        child: CustomDropdownButton2(
                          hint: 'Select Item',
                          dropdownItems: bracketOutdoor,
                          value: selectedBrackerOutdoor,
                          onChanged: null,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: kDefaultPadding,
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Additional Dyna Bolts',
                      style: primaryTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 40,
                      child: DropdownButtonHideUnderline(
                        child: CustomDropdownButton2(
                          hint: 'Select Item',
                          dropdownItems: dynaBolt,
                          value: selectedDynaBolt,
                          onChanged: null,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
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
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget lastContainer() {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: defaultMargin,
              child: Text(
                'Sourvey Photo',
                style: primaryTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: semiBold,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Silahkan Upload Foto Lokasi',
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
                    'Silahkan Upload Foto Titik Pemasangan',
                    style: primaryTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: semiBold,
                    ),
                    textAlign: TextAlign.center,
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
            'INPUT DATA SURVEY',
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
