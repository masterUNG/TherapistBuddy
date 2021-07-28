import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'previous_treatment_page.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:therapist_buddy/variables.dart';

class TreatmentsHistoryPageWidget extends StatefulWidget {
  TreatmentsHistoryPageWidget({Key key}) : super(key: key);

  @override
  _TreatmentsHistoryPageWidgetState createState() =>
      _TreatmentsHistoryPageWidgetState();
}

class _TreatmentsHistoryPageWidgetState
    extends State<TreatmentsHistoryPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController textController;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

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
          title: AutoSizeText(
            'ประวัติการรักษาคนไข้',
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
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(18, 18, 18, 18),
                      child: TextFormField(
                        onChanged: (_) => setState(() {}),
                        controller: textController,
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
                          suffixIcon: textController.text.isNotEmpty
                              ? InkWell(
                                  onTap: () => setState(
                                    () => textController.clear(),
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
                    )
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(18, 0, 12, 0),
                      child: Icon(
                        Icons.perm_identity_rounded,
                        color: FlutterFlowTheme.primaryColor,
                        size: 24,
                      ),
                    ),
                    AutoSizeText(
                      'ประวัติการรักษาทั้งหมด (1)',
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
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      InkWell(
                        onTap: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  PreviousTreatmentPageWidget(),
                            ),
                          );
                        },
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(18, 18, 18, 18),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 14, 0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Image.network(
                                      'https://picsum.photos/seed/63/600',
                                      width: 105,
                                      height: 105,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width -
                                          36 -
                                          105 -
                                          14,
                                      decoration: BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'ธนภัทร พัฒนา',
                                            style: GoogleFonts.getFont(
                                              'Kanit',
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                          )
                                        ],
                                      ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 40,
                                          decoration: BoxDecoration(),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              AutoSizeText(
                                                'อาการ',
                                                style: GoogleFonts.getFont(
                                                  'Kanit',
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 15,
                                          decoration: BoxDecoration(),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    5, 0, 5, 0),
                                                child: AutoSizeText(
                                                  ':',
                                                  style: GoogleFonts.getFont(
                                                    'Kanit',
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              36 -
                                              105 -
                                              14 -
                                              40 -
                                              15,
                                          decoration: BoxDecoration(),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Office Syndrome',
                                                style: GoogleFonts.getFont(
                                                  'Kanit',
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 14,
                                                ),
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 1,
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 102,
                                          decoration: BoxDecoration(),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              AutoSizeText(
                                                'เริ่มการรักษา',
                                                style: GoogleFonts.getFont(
                                                  'Kanit',
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 15,
                                          decoration: BoxDecoration(),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    5, 0, 5, 0),
                                                child: AutoSizeText(
                                                  ':',
                                                  style: GoogleFonts.getFont(
                                                    'Kanit',
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              36 -
                                              105 -
                                              14 -
                                              102 -
                                              15,
                                          decoration: BoxDecoration(),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                '25 มิ.ย. 2564',
                                                style: GoogleFonts.getFont(
                                                  'Kanit',
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 14,
                                                ),
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 1,
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 102,
                                          decoration: BoxDecoration(),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              AutoSizeText(
                                                'เสร็จสิ้นการรักษา',
                                                style: GoogleFonts.getFont(
                                                  'Kanit',
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 15,
                                          decoration: BoxDecoration(),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    5, 0, 5, 0),
                                                child: AutoSizeText(
                                                  ':',
                                                  style: GoogleFonts.getFont(
                                                    'Kanit',
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              36 -
                                              105 -
                                              14 -
                                              102 -
                                              15,
                                          decoration: BoxDecoration(),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                '25 มิ.ย. 2565',
                                                style: GoogleFonts.getFont(
                                                  'Kanit',
                                                  color: FlutterFlowTheme
                                                      .tertiaryColor,
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 14,
                                                ),
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 1,
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 102,
                                          decoration: BoxDecoration(),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              AutoSizeText(
                                                'สถานะการรักษา',
                                                style: GoogleFonts.getFont(
                                                  'Kanit',
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 15,
                                          decoration: BoxDecoration(),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    5, 0, 5, 0),
                                                child: AutoSizeText(
                                                  ':',
                                                  style: GoogleFonts.getFont(
                                                    'Kanit',
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              36 -
                                              105 -
                                              14 -
                                              102 -
                                              15,
                                          decoration: BoxDecoration(),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'สำเร็จการรักษา',
                                                style: GoogleFonts.getFont(
                                                  'Kanit',
                                                  color: Color(0xff3BC774),
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 14,
                                                ),
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 1,
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        height: 2,
                        thickness: 2,
                        color: Color(0xFFF5F5F5),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
