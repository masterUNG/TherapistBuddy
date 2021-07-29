import '../flutter_flow/flutter_flow_radio_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:therapist_buddy/variables.dart';

class AddTreatmentPageWidget extends StatefulWidget {
  AddTreatmentPageWidget({Key key}) : super(key: key);

  @override
  _AddTreatmentPageWidgetState createState() => _AddTreatmentPageWidgetState();
}

class _AddTreatmentPageWidgetState extends State<AddTreatmentPageWidget> {
  String radioButtonValue;
  TextEditingController textController1;
  TextEditingController textController2;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(appbarHeight),
        child: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          leading: Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Image.asset(
              'assets/images/logo.png',
              fit: BoxFit.fitWidth,
            ),
          ),
          title: AutoSizeText(
            'TherapistBuddy',
            style: GoogleFonts.getFont(
              'Raleway',
              color: FlutterFlowTheme.primaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2,
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 70,
              decoration: BoxDecoration(),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(18, 0, 0, 0),
                    child: FlutterFlowRadioButton(
                      options: ['หมายเลขโทรศัพท์', 'รายชื่อคนไข้'],
                      onChanged: (value) {
                        setState(() => radioButtonValue = value);
                      },
                      optionHeight: 25,
                      textStyle: GoogleFonts.getFont(
                        'Kanit',
                        color: FlutterFlowTheme.tertiaryColor,
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                      ),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: FlutterFlowTheme.primaryColor,
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.start,
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(18, 0, 18, 20),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: TextFormField(
                            onChanged: (_) => setState(() {}),
                            controller: textController1,
                            obscureText: false,
                            decoration: InputDecoration(
                              isDense: true,
                              hintText: 'โปรดใส่หมายเลขโทรศัพท์',
                              hintStyle: GoogleFonts.getFont(
                                'Kanit',
                                color: Color(0xFFA7A8AF),
                                fontSize: 16,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(30),
                                  bottomRight: Radius.circular(0),
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(0),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(30),
                                  bottomRight: Radius.circular(0),
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(0),
                                ),
                              ),
                              filled: true,
                              fillColor: Color(0xFFF0F2F5),
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.black,
                                size: 15,
                              ),
                              suffixIcon: textController1.text.isNotEmpty
                                  ? InkWell(
                                      onTap: () => setState(
                                        () => textController1.clear(),
                                      ),
                                      child: Icon(
                                        Icons.clear,
                                        color: FlutterFlowTheme.tertiaryColor,
                                        size: 22,
                                      ),
                                    )
                                  : null,
                            ),
                            style: GoogleFonts.getFont(
                              'Kanit',
                              color: Colors.black,
                              fontSize: 16,
                            ),
                            maxLines: 1,
                          ),
                        ),
                        Container(
                          width: 40,
                          decoration: BoxDecoration(
                            color: Color(0xFFF0F2F5),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(0),
                              bottomRight: Radius.circular(30),
                              topLeft: Radius.circular(0),
                              topRight: Radius.circular(30),
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                                icon: Icon(
                                  Icons.search_rounded,
                                  color: FlutterFlowTheme.primaryColor,
                                  size: 23,
                                ),
                                iconSize: 23,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(),
                    alignment: Alignment(0, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 115,
                          height: 115,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.network(
                            'https://image.freepik.com/free-photo/confident-young-asia-female-doctor-white-medical-uniform-with-stethoscope-looking-camera-smiling-while-video-conference-call-with-patient-health-hospital_7861-3136.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(30, 5, 30, 8),
                          child: AutoSizeText(
                            'ธนวิชญ์ แซ่ลิ่ม',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.getFont(
                              'Kanit',
                              color: FlutterFlowTheme.tertiaryColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 21,
                            ),
                          ),
                        ),
                        FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: 'รักษา',
                          options: FFButtonOptions(
                            width: 150,
                            height: 40,
                            color: FlutterFlowTheme.primaryColor,
                            textStyle: GoogleFonts.getFont(
                              'Kanit',
                              color: Colors.white,
                              fontSize: 18,
                            ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            ),
                            borderRadius: 30,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(18, 0, 18, 20),
                    child: TextFormField(
                      onChanged: (_) => setState(() {}),
                      controller: textController2,
                      obscureText: false,
                      decoration: InputDecoration(
                        isDense: true,
                        hintText: 'ค้นหา',
                        hintStyle: GoogleFonts.getFont(
                          'Kanit',
                          color: Color(0xFFA7A8AF),
                          fontSize: 16,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                        ),
                        filled: true,
                        fillColor: Color(0xFFF0F2F5),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black,
                          size: 15,
                        ),
                        suffixIcon: textController2.text.isNotEmpty
                            ? InkWell(
                                onTap: () => setState(
                                  () => textController2.clear(),
                                ),
                                child: Icon(
                                  Icons.clear,
                                  color: FlutterFlowTheme.tertiaryColor,
                                  size: 22,
                                ),
                              )
                            : null,
                      ),
                      style: GoogleFonts.getFont(
                        'Kanit',
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      maxLines: 1,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 543,
                    decoration: BoxDecoration(),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(18, 12, 18, 12),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 66,
                                    height: 66,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.network(
                                      'https://picsum.photos/seed/54/600',
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(14, 0, 0, 0),
                                    child: Container(
                                      width: 200,
                                      decoration: BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          AutoSizeText(
                                            'จ๊อบ แซ่ลิ่ม',
                                            style: GoogleFonts.getFont(
                                              'Kanit',
                                              color: FlutterFlowTheme
                                                  .tertiaryColor,
                                              fontSize: 14,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment(1, 0),
                                      child: IconButton(
                                        onPressed: () {
                                          print('IconButton pressed ...');
                                        },
                                        icon: Icon(
                                          Icons.add_circle_rounded,
                                          color: FlutterFlowTheme.primaryColor,
                                          size: 35,
                                        ),
                                        iconSize: 35,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
