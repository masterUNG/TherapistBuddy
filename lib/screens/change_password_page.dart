import 'edit_profile_page.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'forget_password_with_login_page.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:therapist_buddy/variables.dart';

class ChangePasswordPageWidget extends StatefulWidget {
  ChangePasswordPageWidget({Key key}) : super(key: key);

  @override
  _ChangePasswordPageWidgetState createState() =>
      _ChangePasswordPageWidgetState();
}

class _ChangePasswordPageWidgetState extends State<ChangePasswordPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController newPasswordTextfieldController;
  bool newPasswordTextfieldVisibility;
  TextEditingController oldPasswordTextfieldController;
  bool oldPasswordTextfieldVisibility;
  TextEditingController repeatNewPasswordTextfieldController;
  bool repeatNewPasswordTextfieldVisibility;

  @override
  void initState() {
    super.initState();
    newPasswordTextfieldController = TextEditingController();
    newPasswordTextfieldVisibility = false;
    oldPasswordTextfieldController = TextEditingController();
    oldPasswordTextfieldVisibility = false;
    repeatNewPasswordTextfieldController = TextEditingController();
    repeatNewPasswordTextfieldVisibility = false;
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
            'เปลี่ยนรหัสผ่าน',
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
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ForgetPasswordWithLoginPageWidget(),
            ),
          );
        },
        backgroundColor: Colors.white,
        elevation: 0,
        label: AutoSizeText(
          'ลืมรหัสผ่านใช่หรือไม่',
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
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(30, 25, 30, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment(-1, 0),
                    child: AutoSizeText(
                      'ใส่รหัสผ่านเก่า',
                      style: GoogleFonts.getFont(
                        'Kanit',
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(-1, 0),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: AutoSizeText(
                        '(รหัสผ่านไม่ถูกต้อง)',
                        style: GoogleFonts.getFont(
                          'Kanit',
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 8, 30, 0),
              child: TextFormField(
                controller: oldPasswordTextfieldController,
                obscureText: !oldPasswordTextfieldVisibility,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFCCD0D5),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(defaultBorderRadius),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFF0080FF),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(defaultBorderRadius),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.fromLTRB(20, 18, 20, 18),
                  suffixIcon: InkWell(
                    onTap: () => setState(
                      () => oldPasswordTextfieldVisibility =
                          !oldPasswordTextfieldVisibility,
                    ),
                    child: Icon(
                      oldPasswordTextfieldVisibility
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
              padding: EdgeInsets.fromLTRB(30, 8, 30, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment(-1, 0),
                    child: AutoSizeText(
                      'ใส่รหัสผ่านใหม่',
                      style: GoogleFonts.getFont(
                        'Kanit',
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(-1, 0),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: AutoSizeText(
                        '(ใส่รหัสผ่านอย่างน้อย 8 ตัว)',
                        style: GoogleFonts.getFont(
                          'Kanit',
                          color: Color(0xFFB1B2B8),
                          fontSize: 14,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 8, 30, 0),
              child: TextFormField(
                controller: newPasswordTextfieldController,
                obscureText: !newPasswordTextfieldVisibility,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFCCD0D5),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(defaultBorderRadius),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFF0080FF),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(defaultBorderRadius),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.fromLTRB(20, 18, 20, 18),
                  suffixIcon: InkWell(
                    onTap: () => setState(
                      () => newPasswordTextfieldVisibility =
                          !newPasswordTextfieldVisibility,
                    ),
                    child: Icon(
                      newPasswordTextfieldVisibility
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
              padding: EdgeInsets.fromLTRB(30, 8, 30, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment(-1, 0),
                    child: AutoSizeText(
                      'ใส่รหัสผ่านใหม่อีกครั้ง',
                      style: GoogleFonts.getFont(
                        'Kanit',
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(-1, 0),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: AutoSizeText(
                        '(รหัสผ่านไม่ตรงกัน)',
                        style: GoogleFonts.getFont(
                          'Kanit',
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 8, 30, 0),
              child: TextFormField(
                controller: repeatNewPasswordTextfieldController,
                obscureText: !repeatNewPasswordTextfieldVisibility,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFCCD0D5),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(defaultBorderRadius),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFF0080FF),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(defaultBorderRadius),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.fromLTRB(20, 18, 20, 18),
                  suffixIcon: InkWell(
                    onTap: () => setState(
                      () => repeatNewPasswordTextfieldVisibility =
                          !repeatNewPasswordTextfieldVisibility,
                    ),
                    child: Icon(
                      repeatNewPasswordTextfieldVisibility
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
              padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
              child: FFButtonWidget(
                onPressed: () async {
                  await Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditProfilePageWidget(),
                    ),
                    (r) => false,
                  );
                },
                text: 'ยืนยัน',
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
