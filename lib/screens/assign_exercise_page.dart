import 'confirm_exercise_page.dart';
import 'exercise_introduction_page.dart';
import '../flutter_flow/flutter_flow_drop_down_template.dart';
import '../flutter_flow/flutter_flow_radio_button.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:therapist_buddy/variables.dart';
import 'patient_page.dart';

class AssignExercisePageWidget extends StatefulWidget {
  AssignExercisePageWidget({Key key}) : super(key: key);

  @override
  _AssignExercisePageWidgetState createState() =>
      _AssignExercisePageWidgetState();
}

class _AssignExercisePageWidgetState extends State<AssignExercisePageWidget> {
  String dropDownValue;
  String radioButtonValue1;
  String radioButtonValue2;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(appbarHeight),
        child: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () async {
              await showDialog(
                context: context,
                builder: (alertDialogContext) {
                  return AlertDialog(
                    title: Text(
                      'ละทิ้งการมอบหมายรายการออกกำลังกาย',
                      style: GoogleFonts.getFont(
                        'Kanit',
                      ),
                    ),
                    content: Text(
                      'คุณแน่ใจหรือไม่ว่าต้องการละทิ้งการมอบหมายรายการออกกำลังกายนี้',
                      style: GoogleFonts.getFont(
                        'Kanit',
                      ),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(alertDialogContext),
                        child: Text(
                          'ยกเลิก',
                          style: GoogleFonts.getFont(
                            'Kanit',
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () async {
                          Navigator.pop(alertDialogContext);
                          await Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PatientPageWidget(),
                            ),
                            (r) => false,
                          );
                          ;
                        },
                        child: Text(
                          'ยืนยัน',
                          style: GoogleFonts.getFont(
                            'Kanit',
                          ),
                        ),
                      ),
                    ],
                  );
                },
              );
            },
            icon: Icon(
              Icons.arrow_back_rounded,
              color: primaryColor,
              size: 24,
            ),
            iconSize: 24,
          ),
          title: AutoSizeText(
            'มอบหมาย',
            style: GoogleFonts.getFont(
              'Kanit',
              color: primaryColor,
              fontWeight: FontWeight.w500,
              fontSize: 21,
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2,
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(30, 25, 0, 8),
                child: AutoSizeText(
                  'อาการของคนไข้',
                  style: GoogleFonts.getFont(
                    'Kanit',
                    color: primaryColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: FlutterFlowDropDown(
                  initialOption: 'Office Syndrome',
                  options: ['Office Syndrome'],
                  onChanged: (value) {
                    setState(() => dropDownValue = value);
                  },
                  width: double.infinity,
                  height: 52,
                  textStyle: GoogleFonts.getFont(
                    'Kanit',
                    color: Colors.black,
                    fontSize: 15,
                  ),
                  fillColor: Colors.white,
                  elevation: 2,
                  borderColor: Color(0xFFCCD0D5),
                  borderWidth: 1,
                  borderRadius: defaultBorderRadius,
                  margin: EdgeInsets.fromLTRB(20, 0, 12, 0),
                  hidesUnderline: true,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(30, 18, 0, 8),
                child: AutoSizeText(
                  'ท่าออกกำลังกาย',
                  style: GoogleFonts.getFont(
                    'Kanit',
                    color: primaryColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  ExerciseIntroductionPageWidget(),
                            ),
                          );
                        },
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Image.network(
                                      'https://picsum.photos/seed/331/600',
                                      width: 92,
                                      height: 61,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AutoSizeText(
                                      'ยกแขนด้านข้าง',
                                      style: GoogleFonts.getFont(
                                        'Kanit',
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15,
                                      ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: 23,
                                          decoration: BoxDecoration(),
                                          alignment: Alignment(-1, 0),
                                          child: Icon(
                                            Icons.close_rounded,
                                            color: Colors.black,
                                            size: 18,
                                          ),
                                        ),
                                        AutoSizeText(
                                          '10 ครั้ง',
                                          style: GoogleFonts.getFont(
                                            'Kanit',
                                            color: Colors.black,
                                            fontSize: 14,
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: 23,
                                          decoration: BoxDecoration(),
                                          alignment: Alignment(-1, 0),
                                          child: Icon(
                                            Icons.access_time_rounded,
                                            color: Colors.black,
                                            size: 18,
                                          ),
                                        ),
                                        AutoSizeText(
                                          '05.15',
                                          style: GoogleFonts.getFont(
                                            'Kanit',
                                            color: Colors.black,
                                            fontSize: 14,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                Expanded(
                                  child: Align(
                                    alignment: Alignment(1, 0),
                                    child: Container(
                                      width: 33,
                                      height: 33,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: secondaryColor,
                                          width: 1,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        height: 1,
                        thickness: 1,
                        color: Color(0xFFE5E5E5),
                      )
                    ],
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(30, 18, 0, 12),
                child: AutoSizeText(
                  'ตารางการออกกำลังกาย',
                  style: GoogleFonts.getFont(
                    'Kanit',
                    color: primaryColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 37,
                      height: 37,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: secondaryColor,
                          width: 1,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          AutoSizeText(
                            'อา.',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.getFont(
                              'Kanit',
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 17,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 37,
                      height: 37,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Color(0xFFCCD0D5),
                          width: 1,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          AutoSizeText(
                            'จ.',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.getFont(
                              'Kanit',
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 17,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 37,
                      height: 37,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: secondaryColor,
                          width: 1,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          AutoSizeText(
                            'อ.',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.getFont(
                              'Kanit',
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 17,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 37,
                      height: 37,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: secondaryColor,
                          width: 1,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          AutoSizeText(
                            'พ.',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.getFont(
                              'Kanit',
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 17,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 37,
                      height: 37,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: secondaryColor,
                          width: 1,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          AutoSizeText(
                            'พฤ.',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.getFont(
                              'Kanit',
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 17,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 37,
                      height: 37,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: secondaryColor,
                          width: 1,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          AutoSizeText(
                            'ศ.',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.getFont(
                              'Kanit',
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 17,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 37,
                      height: 37,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Color(0xFFCCD0D5),
                          width: 1,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          AutoSizeText(
                            'ส.',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.getFont(
                              'Kanit',
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 17,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(30, 16, 0, 0),
                child: FlutterFlowRadioButton(
                  options: ['ทุกวัน'],
                  onChanged: (value) {
                    setState(() => radioButtonValue1 = value);
                  },
                  optionHeight: 25,
                  textStyle: GoogleFonts.getFont(
                    'Kanit',
                    color: Colors.black,
                    fontSize: 15,
                  ),
                  buttonPosition: RadioButtonPosition.left,
                  direction: Axis.horizontal,
                  radioButtonColor: primaryColor,
                  toggleable: true,
                  horizontalAlignment: WrapAlignment.start,
                  verticalAlignment: WrapCrossAlignment.start,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(30, 18, 0, 12),
                child: AutoSizeText(
                  'วันสิ้นสุดการออกกำลังกาย',
                  style: GoogleFonts.getFont(
                    'Kanit',
                    color: primaryColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: Container(
                  width: double.infinity,
                  height: 52,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(defaultBorderRadius),
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        AutoSizeText(
                          '25 มิถุนายน 2564',
                          style: GoogleFonts.getFont(
                            'Kanit',
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 15,
                          ),
                        ),
                        FaIcon(
                          FontAwesomeIcons.calendarAlt,
                          color: Colors.white,
                          size: 24,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(30, 16, 0, 0),
                child: FlutterFlowRadioButton(
                  options: ['ก่อนวันนัดครั้งต่อไป 1 วัน'],
                  onChanged: (value) {
                    setState(() => radioButtonValue2 = value);
                  },
                  optionHeight: 25,
                  textStyle: GoogleFonts.getFont(
                    'Kanit',
                    color: Colors.black,
                    fontSize: 15,
                  ),
                  buttonPosition: RadioButtonPosition.left,
                  direction: Axis.horizontal,
                  radioButtonColor: primaryColor,
                  toggleable: true,
                  horizontalAlignment: WrapAlignment.start,
                  verticalAlignment: WrapCrossAlignment.start,
                ),
              ),
              Align(
                alignment: Alignment(0, 0),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 25, 0, 40),
                  child: FFButtonWidget(
                    onPressed: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ConfirmExercisePageWidget(),
                        ),
                      );
                    },
                    text: 'ถัดไป',
                    options: FFButtonOptions(
                      width: 190,
                      height: 49,
                      color: primaryColor,
                      textStyle: GoogleFonts.getFont(
                        'Kanit',
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 24,
                      ),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                      borderRadius: 32,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
