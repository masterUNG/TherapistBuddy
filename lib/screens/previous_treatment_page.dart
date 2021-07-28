import 'assigned_exercises_in_previous_treatment_page.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'patient_exercise_record_page.dart';
import 'patient_treatment_results_page.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:therapist_buddy/variables.dart';

class PreviousTreatmentPageWidget extends StatefulWidget {
  PreviousTreatmentPageWidget({Key key}) : super(key: key);

  @override
  _PreviousTreatmentPageWidgetState createState() =>
      _PreviousTreatmentPageWidgetState();
}

class _PreviousTreatmentPageWidgetState
    extends State<PreviousTreatmentPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(appbarHeight),
        child: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: FlutterFlowTheme.primaryColor),
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () async {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.primaryColor,
              size: 24,
            ),
            iconSize: 24,
          ),
          title: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 12, 0),
                child: Container(
                  width: 38,
                  height: 38,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.network(
                    'https://picsum.photos/seed/766/600',
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                decoration: BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      'ธนวิชญ์ แซ่ลิ่ม',
                      style: GoogleFonts.getFont(
                        'Kanit',
                        color: FlutterFlowTheme.primaryColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 21,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          actions: [],
          centerTitle: false,
          elevation: 2,
        ),
      ),
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 12, 0, 12),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(18, 15, 18, 15),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            'https://picsum.photos/seed/963/600',
                            width: 90,
                            height: 90,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(14, 0, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AutoSizeText(
                                'ข้อมูลโปรไฟล์คนไข้',
                                style: GoogleFonts.getFont(
                                  'Kanit',
                                  color: FlutterFlowTheme.primaryColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 28,
                                    decoration: BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        AutoSizeText(
                                          'ชื่อ',
                                          style: GoogleFonts.getFont(
                                            'Kanit',
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 16,
                                    decoration: BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(5, 0, 5, 0),
                                          child: AutoSizeText(
                                            ':',
                                            style: GoogleFonts.getFont(
                                              'Kanit',
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width -
                                        36 -
                                        90 -
                                        14 -
                                        28 -
                                        16,
                                    decoration: BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'ธนวิชญ์ แซ่ลิ่ม',
                                          style: GoogleFonts.getFont(
                                            'Kanit',
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 15,
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 28,
                                    decoration: BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        AutoSizeText(
                                          'อายุ',
                                          style: GoogleFonts.getFont(
                                            'Kanit',
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 16,
                                    decoration: BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(5, 0, 5, 0),
                                          child: AutoSizeText(
                                            ':',
                                            style: GoogleFonts.getFont(
                                              'Kanit',
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width -
                                        36 -
                                        90 -
                                        14 -
                                        28 -
                                        16,
                                    decoration: BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '20 ปี',
                                          style: GoogleFonts.getFont(
                                            'Kanit',
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 15,
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(18, 18, 18, 18),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        'ข้อมูลการรักษา',
                        style: GoogleFonts.getFont(
                          'Kanit',
                          color: FlutterFlowTheme.primaryColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 28,
                            decoration: BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AutoSizeText(
                                  'โรค',
                                  style: GoogleFonts.getFont(
                                    'Kanit',
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 16,
                            decoration: BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                                  child: AutoSizeText(
                                    ':',
                                    style: GoogleFonts.getFont(
                                      'Kanit',
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width -
                                36 -
                                28 -
                                16,
                            decoration: BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Office Syndrome',
                                  style: GoogleFonts.getFont(
                                    'Kanit',
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 15,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 110,
                            decoration: BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AutoSizeText(
                                  'เริ่มการรักษา',
                                  style: GoogleFonts.getFont(
                                    'Kanit',
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 16,
                            decoration: BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                                  child: AutoSizeText(
                                    ':',
                                    style: GoogleFonts.getFont(
                                      'Kanit',
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width -
                                36 -
                                110 -
                                16,
                            decoration: BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '15 มิถุนายน 2564',
                                  style: GoogleFonts.getFont(
                                    'Kanit',
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 15,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 110,
                            decoration: BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AutoSizeText(
                                  'เสร็จสิ้นการรักษา',
                                  style: GoogleFonts.getFont(
                                    'Kanit',
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 16,
                            decoration: BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                                  child: AutoSizeText(
                                    ':',
                                    style: GoogleFonts.getFont(
                                      'Kanit',
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width -
                                36 -
                                110 -
                                16,
                            decoration: BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '15 มิถุนายน 2565',
                                  style: GoogleFonts.getFont(
                                    'Kanit',
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 15,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 110,
                            decoration: BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AutoSizeText(
                                  'สถานะการรักษา',
                                  style: GoogleFonts.getFont(
                                    'Kanit',
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 16,
                            decoration: BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                                  child: AutoSizeText(
                                    ':',
                                    style: GoogleFonts.getFont(
                                      'Kanit',
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width -
                                36 -
                                110 -
                                16,
                            decoration: BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'ยกเลิกการรักษา',
                                  style: GoogleFonts.getFont(
                                    'Kanit',
                                    color: Color(0xffFA8072),
                                    fontWeight: FontWeight.normal,
                                    fontSize: 15,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.secondaryColor,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(18, 18, 18, 10),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            AutoSizeText(
                              'ท่าออกกำลังกายที่มอบหมาย',
                              style: GoogleFonts.getFont(
                                'Kanit',
                                color: FlutterFlowTheme.primaryColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 19,
                              ),
                            ),
                            InkWell(
                              onTap: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        AssignedExercisesInPreviousTreatmentPageWidget(),
                                  ),
                                );
                              },
                              child: AutoSizeText(
                                'ดูรายละเอียด',
                                style: GoogleFonts.getFont(
                                  'Kanit',
                                  color: FlutterFlowTheme.primaryColor,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(18, 0, 0, 18),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 3, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                                      child: Container(
                                        width: 155,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 4,
                                              color: Color(0x40000000),
                                              offset: Offset(0, 2),
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            ClipRRect(
                                              borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(0),
                                                bottomRight: Radius.circular(0),
                                                topLeft: Radius.circular(8),
                                                topRight: Radius.circular(8),
                                              ),
                                              child: Image.network(
                                                'https://image.freepik.com/free-photo/young-asian-woman-practicing-yoga-living-room_7861-1619.jpg',
                                                width: 155,
                                                height: 100,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  0, 8, 0, 0),
                                              child: Container(
                                                width: 130,
                                                decoration: BoxDecoration(),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    AutoSizeText(
                                                      'ยกแขนด้านข้าง',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Kanit',
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 15,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  0, 0, 0, 10),
                                              child: Container(
                                                width: 130,
                                                decoration: BoxDecoration(),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    AutoSizeText(
                                                      '10 ครั้ง, 05.25 นาที',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Kanit',
                                                        color: Colors.black,
                                                        fontSize: 15,
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
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(18, 18, 18, 10),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            AutoSizeText(
                              'การออกกำลังกายทั้งหมด',
                              style: GoogleFonts.getFont(
                                'Kanit',
                                color: FlutterFlowTheme.primaryColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 19,
                              ),
                            ),
                            InkWell(
                              onTap: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        PatientExerciseRecordPageWidget(),
                                  ),
                                );
                              },
                              child: AutoSizeText(
                                'เปลี่ยนมุมมอง',
                                style: GoogleFonts.getFont(
                                  'Kanit',
                                  color: FlutterFlowTheme.primaryColor,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(18, 0, 0, 18),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 6, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(0, 0, 12, 0),
                                      child: Container(
                                        width: 105,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 3,
                                              color: Color(0x40000000),
                                              spreadRadius: 0.5,
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  0, 14, 0, 0),
                                              child: AutoSizeText(
                                                'อาทิตย์',
                                                textAlign: TextAlign.center,
                                                style: GoogleFonts.getFont(
                                                  'Kanit',
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 15,
                                                ),
                                              ),
                                            ),
                                            AutoSizeText(
                                              '13 มิ.ย. 64',
                                              textAlign: TextAlign.center,
                                              style: GoogleFonts.getFont(
                                                'Kanit',
                                                color: Colors.black,
                                                fontSize: 15,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  0, 6, 0, 0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            0, 0, 0, 6),
                                                    child: Container(
                                                      width: 46,
                                                      height: 46,
                                                      decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                          fit: BoxFit.cover,
                                                          image: Image.network(
                                                            'https://image.freepik.com/free-photo/young-asian-woman-practicing-yoga-living-room_7861-1619.jpg',
                                                          ).image,
                                                        ),
                                                        shape: BoxShape.circle,
                                                        border: Border.all(
                                                          color:
                                                              Color(0xFF1AC05E),
                                                          width: 3,
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Container(
                                              width: 105,
                                              height: 8,
                                              decoration: BoxDecoration(),
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
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 12, 0, 12),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(18, 18, 18, 10),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            AutoSizeText(
                              'ผลการรักษา',
                              style: GoogleFonts.getFont(
                                'Kanit',
                                color: FlutterFlowTheme.primaryColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 19,
                              ),
                            ),
                            InkWell(
                              onTap: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        PatientTreatmentResultsPageWidget(),
                                  ),
                                );
                              },
                              child: AutoSizeText(
                                'ดูรายละเอียด',
                                style: GoogleFonts.getFont(
                                  'Kanit',
                                  color: FlutterFlowTheme.primaryColor,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(18, 0, 0, 18),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AutoSizeText(
                                    'Office Syndrome',
                                    style: GoogleFonts.getFont(
                                      'Kanit',
                                      color: FlutterFlowTheme.primaryColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 17,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(),
                                    ),
                                  )
                                ],
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
      ),
    );
  }
}
