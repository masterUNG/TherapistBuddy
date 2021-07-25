import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_youtube_player.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExerciseIntroductionPageWidget extends StatefulWidget {
  ExerciseIntroductionPageWidget({Key key}) : super(key: key);

  @override
  _ExerciseIntroductionPageWidgetState createState() =>
      _ExerciseIntroductionPageWidgetState();
}

class _ExerciseIntroductionPageWidgetState
    extends State<ExerciseIntroductionPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
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
        title: AutoSizeText(
          'ยกแขนด้านข้าง',
          style: GoogleFonts.getFont(
            'Kanit',
            color: FlutterFlowTheme.primaryColor,
            fontWeight: FontWeight.w500,
            fontSize: 21,
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            FlutterFlowYoutubePlayer(
              url: 'https://www.youtube.com/watch?v=C30hQ0ZSFoM',
              width: MediaQuery.of(context).size.width,
              autoPlay: false,
              looping: false,
              mute: false,
              showControls: true,
              showFullScreen: true,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 502,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 100,
                            decoration: BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                AutoSizeText(
                                  'เวลา',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.getFont(
                                    'Kanit',
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                                AutoSizeText(
                                  '03.15',
                                  style: GoogleFonts.getFont(
                                    'Kanit',
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 2,
                            height: 45,
                            decoration: BoxDecoration(
                              color: Colors.black,
                            ),
                          ),
                          Container(
                            width: 100,
                            decoration: BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                AutoSizeText(
                                  'จำนวน',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.getFont(
                                    'Kanit',
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                                AutoSizeText(
                                  '10 ครั้ง',
                                  style: GoogleFonts.getFont(
                                    'Kanit',
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment(-1, 0),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text(
                          'คำแนะนำก่อนออกกำลังกาย',
                          style: GoogleFonts.getFont(
                            'Kanit',
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment(-1, 0),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(20, 5, 20, 20),
                        child: AutoSizeText(
                          'ทุกครั้งที่เราออกกำลังกายควรเตรียมร่างกายให้พร้อมก่อนเพื่อลด\\nโอกาสที่จะเกิดการบาดเจ็บและเพิ่มประสิทธิภาพในการออกกำลังกาย บางคนอาจไม่รู้ว่าต้องปฏิบัติตัวยังไง เริ่มจากอะไรก่อนและควรทำนาน\\nเท่าไร สุดท้ายแล้วก็อาจทำได้เพียงหมุนคอ หมุนแขน สะบัดข้อมือ วันนี้เรามาดูกันว่าขั้นตอนและหลักการในการเตรียมความพร้อมก่อนออกกำลังกายเป็นอย่างไร ลองไปดูกันครับ\\n\\n1. อบอุ่นร่างกายทั่วไป\\nขั้นแรกให้เริ่มจากการอบอุ่นร่างกาย โดยทั่วไปแล้ว วิธีการที่ง่ายที่สุดคือ\\nการปฏิบัติกิจกรรมที่เราจะใช้ออกกำลังกายอย่างเบาๆและช้ากว่าการ\\nออกกำลังกายปกต\\n\\n2. การยืดกล้ามเนื้อแบบอยู่กับที่\\nการยืดกล้ามเนื้อแบบอยู่กับที่ (Static stretching) เป็นการยืดกล้ามเนื้อที่ไม่มีการเคลื่อนไหวร่างกายเป็น\\nการยืดในลักษณะเหยียดตึง เช่น ก้มเอามือแตะปลายเท้าเพื่อยืดกล้าม\\nเนื้อหลัง ยกขาพาดเก้าอี้เพื่อยืดต้นขาด้านหลัง หรือยืนดันกำแพงเพื่อ\\nยืดน่อง เป็นต้น',
                          style: GoogleFonts.getFont(
                            'Kanit',
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 14,
                          ),
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
    );
  }
}
