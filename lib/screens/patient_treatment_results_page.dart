import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PatientTreatmentResultsPageWidget extends StatefulWidget {
  PatientTreatmentResultsPageWidget({Key key}) : super(key: key);

  @override
  _PatientTreatmentResultsPageWidgetState createState() =>
      _PatientTreatmentResultsPageWidgetState();
}

class _PatientTreatmentResultsPageWidgetState
    extends State<PatientTreatmentResultsPageWidget> {
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
          'ผลการรักษา',
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
        child: Container(
          width: double.infinity,
          child: Stack(
            children: [
              Align(
                alignment: Alignment(0, 1),
                child: Container(
                  width: double.infinity,
                  height: 420,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
                          child: Container(
                            width: 170,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: Color(0xFFE5E5E5),
                                width: 1,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AutoSizeText(
                                  '30 มิ.ย. 64',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.getFont(
                                    'Kanit',
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0, -1),
                child: Container(
                  width: double.infinity,
                  height: 260,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        color: Color(0x3F000000),
                        offset: Offset(0, 2),
                      )
                    ],
                  ),
                  child: DefaultTabController(
                    length: 1,
                    initialIndex: 0,
                    child: Column(
                      children: [
                        TabBar(
                          isScrollable: true,
                          labelColor: FlutterFlowTheme.primaryColor,
                          unselectedLabelColor: Color(0xFF7A7A7A),
                          indicatorColor: FlutterFlowTheme.primaryColor,
                          indicatorWeight: 3,
                          tabs: [
                            Tab(
                              text: 'Office Syndrome',
                            )
                          ],
                        ),
                        Expanded(
                          child: TabBarView(
                            children: [Container()],
                          ),
                        ),
                      ],
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
