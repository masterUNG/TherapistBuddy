import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'forget_password_not_login_page.dart';
import '../main.dart';
import 'signup_page.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:therapist_buddy/variables.dart';

class LoginPageWidget extends StatefulWidget {
  LoginPageWidget({Key key}) : super(key: key);

  @override
  _LoginPageWidgetState createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget> {
  TextEditingController passwordTextfieldController;
  bool passwordTextfieldVisibility;
  TextEditingController phoneNumberTextfieldController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    passwordTextfieldController = TextEditingController();
    passwordTextfieldVisibility = false;
    phoneNumberTextfieldController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SignupPageWidget(),
            ),
          );
        },
        backgroundColor: Colors.white,
        elevation: 0,
        label: AutoSizeText(
          'สร้างบัญชีใหม่',
          textAlign: TextAlign.center,
          style: GoogleFonts.getFont(
            'Kanit',
            color: FlutterFlowTheme.primaryColor,
            fontWeight: FontWeight.w300,
            fontSize: 18,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Align(
          alignment: Alignment(0, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.png',
                width: MediaQuery.of(context).size.width * 0.35,
                fit: BoxFit.fitWidth,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 18, 0, 0),
                child: AutoSizeText(
                  'TherapistBuddy',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.getFont(
                    'Raleway',
                    color: Color(0xFF0080FF),
                    fontWeight: FontWeight.bold,
                    fontSize: 33,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
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
                        borderRadius:
                            BorderRadius.circular(defaultBorderRadius),
                        shape: BoxShape.rectangle,
                        border: Border.all(
                          color: FlutterFlowTheme.primaryColor,
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
                                color: FlutterFlowTheme.primaryColor,
                                width: 1.5,
                              ),
                              borderRadius:
                                  BorderRadius.circular(defaultBorderRadius),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.primaryColor,
                                width: 1.5,
                              ),
                              borderRadius:
                                  BorderRadius.circular(defaultBorderRadius),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: EdgeInsets.fromLTRB(20, 18, 20, 18),
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
                padding: EdgeInsets.fromLTRB(33, 8, 33, 0),
                child: TextFormField(
                  controller: passwordTextfieldController,
                  obscureText: !passwordTextfieldVisibility,
                  decoration: InputDecoration(
                    hintText: 'รหัสผ่าน',
                    hintStyle: GoogleFonts.getFont(
                      'Kanit',
                      color: Color(0xFFA7A8AF),
                      fontWeight: FontWeight.w300,
                      fontSize: 14,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.primaryColor,
                        width: 1.5,
                      ),
                      borderRadius: BorderRadius.circular(defaultBorderRadius),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.primaryColor,
                        width: 1.5,
                      ),
                      borderRadius: BorderRadius.circular(defaultBorderRadius),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.fromLTRB(20, 18, 20, 18),
                    suffixIcon: InkWell(
                      onTap: () => setState(
                        () => passwordTextfieldVisibility =
                            !passwordTextfieldVisibility,
                      ),
                      child: Icon(
                        passwordTextfieldVisibility
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: Color(0xFFA7A8AF),
                        size: 20,
                      ),
                    ),
                  ),
                  style: GoogleFonts.getFont(
                    'Kanit',
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                  ),
                  maxLines: 1,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(33, 20, 33, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                ForgetPasswordNotLoginPageWidget(),
                          ),
                        );
                      },
                      child: AutoSizeText(
                        'ลืมรหัสผ่านใช่หรือไม่',
                        style: GoogleFonts.getFont('Kanit',
                            color: Color(0xFF7A7A7A),
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                            fontStyle: FontStyle.normal,
                            decoration: TextDecoration.underline),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: FFButtonWidget(
                  onPressed: () async {
                    await Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            NavBarPage(initialPage: 'Home_page'),
                      ),
                      (r) => false,
                    );
                  },
                  text: 'ล็อกอิน',
                  options: FFButtonOptions(
                    width: 190,
                    height: 49,
                    color: Color(0xFF0080FF),
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
      ),
    );
  }
}
