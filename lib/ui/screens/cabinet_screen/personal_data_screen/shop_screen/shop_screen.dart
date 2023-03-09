import 'package:arasan/constants/assets_const.dart';
import 'package:arasan/widgets/app_bars.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ActiveShoppingScreen extends StatelessWidget {
  const ActiveShoppingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AB().appBarWithText('Активные покупки', true, false),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        child: Column(
          children: [
            SizedBox(
                width: double.infinity,
                child: Card(
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Image.asset(
                                Assets().img + 'venik.png',
                                fit: BoxFit.fill,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Дубовый веник',
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  color: Color(0xff1e1e1e)),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              '2000 ТГ',
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  color: Color(0xff953e37)),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              '11.06.2022, 19:45',
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xff8c8c8c)),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.topRight,
                            child: SizedBox(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    '1 шт',
                                    style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18,
                                        color: Color(0xff595959)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
