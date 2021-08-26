import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/flutter_flow_drop_down_template.dart';
import '../flutter_flow/flutter_flow_radio_button.dart';

import 'package:therapist_buddy/variables.dart';
import 'otp_verification_in_signup_page.dart';

class SignupPageWidget extends StatefulWidget {
  SignupPageWidget({Key key}) : super(key: key);

  @override
  _SignupPageWidgetState createState() => _SignupPageWidgetState();
}

class _SignupPageWidgetState extends State<SignupPageWidget> {
  TextEditingController firstNameTextfieldController;
  TextEditingController lastNameTextfieldController;
  TextEditingController phoneNumberTextfieldController;
  TextEditingController passwordTextfieldController;
  TextEditingController repeatPasswordTextfieldController;
  TextEditingController licenseNumberTextfieldController;
  bool passwordTextfieldVisibility;
  bool repeatPasswordTextfieldVisibility;
  String dropDownValue1;
  String dropDownValue2;
  String dropDownValue3;
  String dropDownValue4;
  String dropDownValue5;
  String radioButtonValue;

  @override
  void initState() {
    super.initState();
    firstNameTextfieldController = TextEditingController();
    lastNameTextfieldController = TextEditingController();
    phoneNumberTextfieldController = TextEditingController();
    passwordTextfieldController = TextEditingController();
    repeatPasswordTextfieldController = TextEditingController();
    licenseNumberTextfieldController = TextEditingController();
    passwordTextfieldVisibility = false;
    repeatPasswordTextfieldVisibility = false;
  }

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
            'ลงทะเบียน',
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
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: Stack(
                  alignment: Alignment(0, 0.9),
                  children: [
                    Container(
                      width: 125,
                      height: 125,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        'assets/images/profileDefault_pic.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Align(
                      alignment: Alignment(0.25, 0),
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Color(0xFFF0F2F5),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.edit_rounded,
                          color: Colors.black,
                          size: 16,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment(-1, 0),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                  child: Text(
                    'ชื่อ',
                    style: GoogleFonts.getFont(
                      'Kanit',
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(30, 8, 30, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FlutterFlowDropDown(
                      initialOption: 'กภ.',
                      options: ['กภ.'],
                      onChanged: (value) {
                        setState(() => dropDownValue1 = value);
                      },
                      width: 95,
                      height: 49,
                      textStyle: GoogleFonts.getFont(
                        'Kanit',
                        color: Colors.black,
                        fontSize: 14,
                      ),
                      fillColor: Colors.white,
                      elevation: 2,
                      borderColor: secondaryColor,
                      borderWidth: 1,
                      borderRadius: defaultBorderRadius,
                      margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      hidesUnderline: true,
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: TextFormField(
                          controller: firstNameTextfieldController,
                          obscureText: false,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: secondaryColor,
                                width: 1,
                              ),
                              borderRadius:
                                  BorderRadius.circular(defaultBorderRadius),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: primaryColor,
                                width: 1,
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
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment(-1, 0),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(30, 8, 0, 0),
                  child: Text(
                    'นามสกุล',
                    style: GoogleFonts.getFont(
                      'Kanit',
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(30, 8, 30, 0),
                child: TextFormField(
                  controller: lastNameTextfieldController,
                  obscureText: false,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: secondaryColor,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(defaultBorderRadius),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: primaryColor,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(defaultBorderRadius),
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
                      child: Text(
                        'หมายเลขโทรศัพท์',
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
                        child: Text(
                          '(หมายเลขนี้ถูกใช้งานแล้ว)',
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
                child: Row(
                  mainAxisSize: MainAxisSize.max,
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
                          color: secondaryColor,
                          width: 1,
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
                            child: Text(
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
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: TextFormField(
                          controller: phoneNumberTextfieldController,
                          obscureText: false,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: secondaryColor,
                                width: 1,
                              ),
                              borderRadius:
                                  BorderRadius.circular(defaultBorderRadius),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: primaryColor,
                                width: 1,
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
                padding: EdgeInsets.fromLTRB(30, 8, 30, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment(-1, 0),
                      child: Text(
                        'รหัสผ่าน',
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
                        child: Text(
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
                  controller: passwordTextfieldController,
                  obscureText: !passwordTextfieldVisibility,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: secondaryColor,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(defaultBorderRadius),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: primaryColor,
                        width: 1,
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
                padding: EdgeInsets.fromLTRB(30, 8, 30, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment(-1, 0),
                      child: Text(
                        'ใส่รหัสผ่านอีกครั้ง',
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
                        child: Text(
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
                  controller: repeatPasswordTextfieldController,
                  obscureText: !repeatPasswordTextfieldVisibility,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: secondaryColor,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(defaultBorderRadius),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: secondaryColor,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(defaultBorderRadius),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.fromLTRB(18, 14, 18, 14),
                    suffixIcon: InkWell(
                      onTap: () => setState(
                        () => repeatPasswordTextfieldVisibility =
                            !repeatPasswordTextfieldVisibility,
                      ),
                      child: Icon(
                        repeatPasswordTextfieldVisibility
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
              Align(
                alignment: Alignment(-1, 0),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(30, 8, 30, 0),
                  child: Text(
                    'เลขที่ใบประกอบ',
                    style: GoogleFonts.getFont(
                      'Kanit',
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(30, 8, 30, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FlutterFlowDropDown(
                      initialOption: 'กภ.',
                      options: ['กภ.'],
                      onChanged: (value) {
                        setState(() => dropDownValue1 = value);
                      },
                      width: 95,
                      height: 49,
                      textStyle: GoogleFonts.getFont(
                        'Kanit',
                        color: Colors.black,
                        fontSize: 14,
                      ),
                      fillColor: Colors.white,
                      elevation: 2,
                      borderColor: secondaryColor,
                      borderWidth: 1,
                      borderRadius: defaultBorderRadius,
                      margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      hidesUnderline: true,
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: TextFormField(
                          controller: licenseNumberTextfieldController,
                          obscureText: false,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: secondaryColor,
                                width: 1,
                              ),
                              borderRadius:
                                  BorderRadius.circular(defaultBorderRadius),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: primaryColor,
                                width: 1,
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
              Align(
                alignment: Alignment(-1, 0),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(30, 8, 0, 0),
                  child: Text(
                    'สถานพยาบาลที่ปฏิบัติงานอยู่',
                    style: GoogleFonts.getFont(
                      'Kanit',
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(30, 8, 30, 0),
                child: FlutterFlowDropDown(
                  initialOption: 'โรงพยาบาลสงขลานครินทร์',
                  options: ['โรงพยาบาลสงขลานครินทร์'],
                  onChanged: (value) {
                    setState(() => dropDownValue2 = value);
                  },
                  width: double.infinity,
                  height: 49,
                  textStyle: GoogleFonts.getFont(
                    'Kanit',
                    color: Colors.black,
                    fontSize: 14,
                  ),
                  fillColor: Colors.white,
                  elevation: 2,
                  borderColor: secondaryColor,
                  borderWidth: 1,
                  borderRadius: defaultBorderRadius,
                  margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  hidesUnderline: true,
                ),
              ),
              Align(
                alignment: Alignment(-1, 0),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(30, 8, 0, 0),
                  child: Text(
                    'วันเกิด',
                    style: GoogleFonts.getFont(
                      'Kanit',
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(30, 8, 30, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FlutterFlowDropDown(
                      initialOption: '1',
                      options: [
                        '1',
                        '2',
                        '3',
                        '4',
                        '5',
                        '6',
                        '7',
                        '8',
                        '9',
                        '10',
                        '11',
                        '12',
                        '13',
                        '14',
                        '15',
                        '16',
                        '17',
                        '18',
                        '19',
                        '20',
                        '21',
                        '22',
                        '23',
                        '24',
                        '25',
                        '26',
                        '27',
                        '28',
                        '29',
                        '30',
                        '31'
                      ],
                      onChanged: (value) {
                        setState(() => dropDownValue3 = value);
                      },
                      width: (MediaQuery.of(context).size.width - 60 - 20) / 3,
                      height: 49,
                      textStyle: GoogleFonts.getFont(
                        'Kanit',
                        color: Colors.black,
                        fontSize: 14,
                      ),
                      fillColor: Colors.white,
                      elevation: 2,
                      borderColor: secondaryColor,
                      borderWidth: 1,
                      borderRadius: defaultBorderRadius,
                      margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      hidesUnderline: true,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: FlutterFlowDropDown(
                        options: [
                          'ม.ค.',
                          'ก.พ.',
                          'มี.ค.',
                          'เม.ย.',
                          'พ.ค.',
                          'มิ.ย.',
                          'ก.ค.',
                          'ส.ค.',
                          'ก.ย.',
                          'ต.ค.',
                          'พ.ย.',
                          'ธ.ค.'
                        ],
                        onChanged: (value) {
                          setState(() => dropDownValue4 = value);
                        },
                        width:
                            (MediaQuery.of(context).size.width - 60 - 20) / 3,
                        height: 49,
                        textStyle: GoogleFonts.getFont(
                          'Kanit',
                          color: Colors.black,
                          fontSize: 14,
                        ),
                        fillColor: Colors.white,
                        elevation: 2,
                        borderColor: secondaryColor,
                        borderWidth: 1,
                        borderRadius: defaultBorderRadius,
                        margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        hidesUnderline: true,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: FlutterFlowDropDown(
                        initialOption: '2564',
                        options: [
                          '2440',
                          '2441',
                          '2442',
                          '2443',
                          '2444',
                          '2445',
                          '2446',
                          '2447',
                          '2448',
                          '2449',
                          '2450',
                          '2451',
                          '2452',
                          '2453',
                          '2454',
                          '2455',
                          '2456',
                          '2457',
                          '2458',
                          '2459',
                          '2460',
                          '2461',
                          '2462',
                          '2463',
                          '2464',
                          '2465',
                          '2466',
                          '2467',
                          '2468',
                          '2469',
                          '2470',
                          '2471',
                          '2472',
                          '2473',
                          '2474',
                          '2475',
                          '2476',
                          '2477',
                          '2478',
                          '2479',
                          '2480',
                          '2481',
                          '2482',
                          '2483',
                          '2484',
                          '2485',
                          '2486',
                          '2487',
                          '2488',
                          '2489',
                          '2490',
                          '2491',
                          '2492',
                          '2493',
                          '2494',
                          '2495',
                          '2496',
                          '2497',
                          '2498',
                          '2499',
                          '2500',
                          '2501',
                          '2502',
                          '2503',
                          '2504',
                          '2505',
                          '2506',
                          '2507',
                          '2508',
                          '2509',
                          '2510',
                          '2511',
                          '2512',
                          '2513',
                          '2514',
                          '2515',
                          '2516',
                          '2517',
                          '2518',
                          '2519',
                          '2520',
                          '2521',
                          '2522',
                          '2523',
                          '2524',
                          '2525',
                          '2526',
                          '2527',
                          '2528',
                          '2529',
                          '2530',
                          '2531',
                          '2532',
                          '2533',
                          '2534',
                          '2535',
                          '2536',
                          '2537',
                          '2538',
                          '2539',
                          '2540',
                          '2541',
                          '2542',
                          '2543',
                          '2544',
                          '2545',
                          '2546',
                          '2547',
                          '2548',
                          '2549',
                          '2550',
                          '2551',
                          '2552',
                          '2553',
                          '2554',
                          '2555',
                          '2556',
                          '2557',
                          '2558',
                          '2559',
                          '2560',
                          '2561',
                          '2562',
                          '2563',
                          '2564'
                        ],
                        onChanged: (value) {
                          setState(() => dropDownValue5 = value);
                        },
                        width:
                            (MediaQuery.of(context).size.width - 60 - 20) / 3,
                        height: 49,
                        textStyle: GoogleFonts.getFont(
                          'Kanit',
                          color: Colors.black,
                          fontSize: 14,
                        ),
                        fillColor: Colors.white,
                        elevation: 2,
                        borderColor: Color(0xFFCCD0D5),
                        borderWidth: 1,
                        borderRadius: defaultBorderRadius,
                        margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        hidesUnderline: true,
                      ),
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment(-1, 0),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(30, 8, 0, 0),
                  child: Text(
                    'เพศ',
                    style: GoogleFonts.getFont(
                      'Kanit',
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(-1, 0),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(30, 8, 0, 0),
                  child: FlutterFlowRadioButton(
                    options: ['ชาย', 'หญิง', 'อื่นๆ', 'ไม่ระบุ'],
                    onChanged: (value) {
                      setState(() => radioButtonValue = value);
                    },
                    optionHeight: 35,
                    textStyle: GoogleFonts.getFont(
                      'Kanit',
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                      fontSize: 18,
                    ),
                    textPadding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                    buttonPosition: RadioButtonPosition.left,
                    direction: Axis.vertical,
                    radioButtonColor: primaryColor,
                    toggleable: false,
                    horizontalAlignment: WrapAlignment.start,
                    verticalAlignment: WrapCrossAlignment.start,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 40),
                child: FFButtonWidget(
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            OTPVerificationInSignupPageWidget(),
                      ),
                    );
                  },
                  text: 'ถัดไป',
                  options: FFButtonOptions(
                    width: 190,
                    height: 49,
                    color: primaryColor,
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
