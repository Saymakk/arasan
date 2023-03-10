import 'package:arasan/constants/assets_const.dart';
import 'package:arasan/ui/ui_samples/ui_samples.dart';
import 'package:arasan/ui/ui_samples/ui_styles.dart';
import 'package:arasan/widgets/app_bars.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AB().appBarWithText('Избранное', true, false),
      backgroundColor: Color(0xfff5f5f5),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Магазин',
                    style: Styles().titleTextStyle(),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 135 * 10,
                    child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 2,
                        mainAxisSpacing: 80,
                      ),
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index_grid) {
                        return Column(
                          children: [
                            Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(14),
                                child: Column(
                                  children: [
                                    Image.asset(Assets().img + 'venik.png'),
                                    SizedBox(height: 20,),
                                    Text('Дубовый веник', style: Styles().cardTitle(),),
                                    SizedBox(height: 30,),
                                    SizedBox(
                                        width: double.infinity,
                                        child: Samples().unfilledOutlinedButton('2000 Т', true, 'comment', null))
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 30,)
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50,)
            ],
          ),
        ),
      ),
    );
  }
}
