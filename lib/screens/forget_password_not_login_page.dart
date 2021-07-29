import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'otp_verification_in_forget_password_not_login_page.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:therapist_buddy/variables.dart';

class ForgetPasswordNotLoginPageWidget extends StatefulWidget {
  ForgetPasswordNotLoginPageWidget({Key key}) : super(key: key);

  @override
  _ForgetPasswordNotLoginPageWidgetState createState() =>
      _ForgetPasswordNotLoginPageWidgetState();
}

class _ForgetPasswordNotLoginPageWidgetState
    extends State<ForgetPasswordNotLoginPageWidget> {
  TextEditingController phoneNumberTextfieldController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    phoneNumberTextfieldController = TextEditingController();
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
            'ลืมรหัสผ่าน',
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
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(33, 25, 33, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 95,
                    height: 49,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(defaultBorderRadius),
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        color: Color(0xFFCCD0D5),
                        width: 1.5,
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/thailandFlag_pic.jpg',
                          width: 28,
                          fit: BoxFit.fitWidth,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(3, 0, 0, 0),
                          child: AutoSizeText(
                            '+66',
                            style: GoogleFonts.getFont(
                              'Kanit',
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: TextFormField(
                        controller: phoneNumberTextfieldController,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'หมายเลขโทรศัพท์',
                          hintStyle: GoogleFonts.getFont(
                            'Kanit',
                            color: Color(0xFFA7A8AF),
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFCCD0D5),
                              width: 1.5,
                            ),
                            borderRadius:
                                BorderRadius.circular(defaultBorderRadius),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF0080FF),
                              width: 1.5,
                            ),
                            borderRadius:
                                BorderRadius.circular(defaultBorderRadius),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.fromLTRB(18, 14, 18, 14),
                        ),
                        style: GoogleFonts.getFont(
                          'Kanit',
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                        ),
                        maxLines: 1,
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
              child: FFButtonWidget(
                onPressed: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          OTPVerificationInForgetPasswordNotLoginPageWidget(),
                    ),
                  );
                },
                text: 'ถัดไป',
                options: FFButtonOptions(
                  width: 190,
                  height: 49,
                  color: FlutterFlowTheme.primaryColor,
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
            )
          ],
        ),
      ),
    );
  }
}
