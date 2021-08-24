import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:therapist_buddy/variables.dart';

class PatientTreatmentResultsPageWidget extends StatefulWidget {
  PatientTreatmentResultsPageWidget({Key key}) : super(key: key);

  @override
  _PatientTreatmentResultsPageWidgetState createState() =>
      _PatientTreatmentResultsPageWidgetState();
}

class _PatientTreatmentResultsPageWidgetState
    extends State<PatientTreatmentResultsPageWidget> {
  double lineGraphAreaHeight = 260;
  int symptomsNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          title: Text(
            'ผลการรักษา',
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
        child: Container(
          width: double.infinity,
          child: Stack(
            children: [
              Align(
                alignment: Alignment(0, 1),
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height -
                      MediaQuery.of(context).padding.top -
                      MediaQuery.of(context).padding.bottom -
                      appbarHeight -
                      lineGraphAreaHeight,
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
                                Text(
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
                  height: lineGraphAreaHeight,
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
                        Container(
                          height: 50,
                          child: TabBar(
                            isScrollable: true,
                            labelPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            labelColor: primaryColor,
                            labelStyle:
                                TextStyle(fontSize: 18.0, fontFamily: 'Kanit'),
                            unselectedLabelColor: Color(0xFF7A7A7A),
                            unselectedLabelStyle:
                                TextStyle(fontSize: 18.0, fontFamily: 'Kanit'),
                            indicatorColor: primaryColor,
                            indicatorWeight: 3,
                            tabs: [
                              Container(
                                width: MediaQuery.of(context).size.width /
                                    symptomsNumber,
                                child: Tab(
                                  text: 'Office Syndrome',
                                ),
                              )
                            ],
                          ),
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
