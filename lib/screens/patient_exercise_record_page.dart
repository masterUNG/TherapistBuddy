import '../flutter_flow/flutter_flow_drop_down_template.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:therapist_buddy/variables.dart';

class PatientExerciseRecordPageWidget extends StatefulWidget {
  PatientExerciseRecordPageWidget({Key key}) : super(key: key);

  @override
  _PatientExerciseRecordPageWidgetState createState() =>
      _PatientExerciseRecordPageWidgetState();
}

class _PatientExerciseRecordPageWidgetState
    extends State<PatientExerciseRecordPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  String dropDownValue;
  double monthsAreaHeight = 120;

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
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_rounded,
              color: primaryColor,
              size: 24,
            ),
            iconSize: 24,
          ),
          title: AutoSizeText(
            'การออกกำลังกายทั้งหมด',
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
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: monthsAreaHeight,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          print('IconButton pressed ...');
                        },
                        icon: Icon(
                          Icons.chevron_left_rounded,
                          color: Colors.black,
                          size: 30,
                        ),
                        iconSize: 30,
                      ),
                      FlutterFlowDropDown(
                        options: ['พฤศจิกายน 2564'],
                        onChanged: (value) {
                          setState(() => dropDownValue = value);
                        },
                        width: 220,
                        height: 45,
                        textStyle: GoogleFonts.getFont(
                          'Kanit',
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 19,
                        ),
                        fillColor: Colors.white,
                        elevation: 2,
                        borderColor: secondaryColor,
                        borderWidth: 1,
                        borderRadius: 8,
                        margin: EdgeInsets.fromLTRB(25, 0, 15, 0),
                        hidesUnderline: true,
                      ),
                      IconButton(
                        onPressed: () {
                          print('IconButton pressed ...');
                        },
                        icon: Icon(
                          Icons.navigate_next_rounded,
                          color: Colors.black,
                          size: 30,
                        ),
                        iconSize: 30,
                      )
                    ],
                  ),
                )
              ],
            ),
            Divider(
              height: 2,
              thickness: 2,
              indent: 0,
              endIndent: 0,
              color: Color(0xFFE5E5E5),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height -
                  MediaQuery.of(context).padding.top -
                  MediaQuery.of(context).padding.bottom -
                  appbarHeight -
                  monthsAreaHeight -
                  2,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 6),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(),
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(0, 0, 0, 8),
                                      child: AutoSizeText(
                                        'วันจันทร์ ที่ 13 มิถุนายน 2564',
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
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 0, 0, 12),
                                          child: Container(
                                            decoration: BoxDecoration(),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      0, 0, 10, 0),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    child: Image.network(
                                                      'https://picsum.photos/seed/331/600',
                                                      width: 87,
                                                      height: 59,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    AutoSizeText(
                                                      'ยกแขนด้านข้าง',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Kanit',
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 14,
                                                      ),
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Container(
                                                          width: 23,
                                                          decoration:
                                                              BoxDecoration(),
                                                          alignment:
                                                              Alignment(-1, 0),
                                                          child: Icon(
                                                            Icons.close_rounded,
                                                            color: Colors.black,
                                                            size: 18,
                                                          ),
                                                        ),
                                                        AutoSizeText(
                                                          '10 ครั้ง',
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'Kanit',
                                                            color: Colors.black,
                                                            fontSize: 14,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Container(
                                                          width: 23,
                                                          decoration:
                                                              BoxDecoration(),
                                                          alignment:
                                                              Alignment(-1, 0),
                                                          child: Icon(
                                                            Icons
                                                                .access_time_rounded,
                                                            color: Colors.black,
                                                            size: 18,
                                                          ),
                                                        ),
                                                        AutoSizeText(
                                                          '05.15',
                                                          style: GoogleFonts
                                                              .getFont(
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
                                                    child: Icon(
                                                      Icons
                                                          .check_circle_rounded,
                                                      color: Color(0xFF1AC05E),
                                                      size: 30,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
