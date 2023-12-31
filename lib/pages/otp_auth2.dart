import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:medcentral/pages/user_details.dart';

import '../utilities/button.dart';
import 'otp_auth1.dart';

class OTP extends StatefulWidget {
  const OTP({super.key});

  @override
  State<OTP> createState() => _OTPState();
}
TextEditingController otpcontroller = TextEditingController();
class _OTPState extends State<OTP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 60,
                      ),
                      Text(
                        "Get Started",
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.w700,
                            fontSize: 34,
                            color: HexColor("#2E2D32")),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 100,
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 0, horizontal: 50),
                  child: SingleChildScrollView(
                    physics: PageScrollPhysics(),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Phone Number",
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  color: HexColor("#2E2D32")),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                          controller: phonecontroller,
                          cursorColor: HexColor("#37C9EE"),
                          style: GoogleFonts.lato(
                              fontSize: 14, fontWeight: FontWeight.w400),
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelStyle: GoogleFonts.lato(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: HexColor("#2E2D32")),
                            border: OutlineInputBorder(),
                            labelText: 'Enter Your Phone Number',
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(
                              "Didnt get OTP?",
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                  color: HexColor("#2E2D32")),
                            ),
                            SizedBox(width: 5,),
                            InkWell(
                              onTap: (){},
                              child: Text(
                                "Resend",
                                style: GoogleFonts.lato(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 13,
                                    color: HexColor("#37C9EE")),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 50,),
                        Row(
                          children: [
                            Text(
                              "Enter OTP",
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  color: HexColor("#2E2D32")),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                          controller: otpcontroller,
                          cursorColor: HexColor("#37C9EE"),
                          style: GoogleFonts.lato(
                              fontSize: 14, fontWeight: FontWeight.w400),
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelStyle: GoogleFonts.lato(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: HexColor("#2E2D32")),
                            border: OutlineInputBorder(),
                            labelText: 'Enter OTP',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                splashColor: Colors.blue.shade50,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => UserDetails()));
                },
                child: const BlueButton(
                  text: "Submit and Proceed",
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ));
  }
}
