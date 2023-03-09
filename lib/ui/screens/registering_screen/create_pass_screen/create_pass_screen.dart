import 'package:arasan/widgets/app_bars.dart';
import 'package:flutter/material.dart';

import '../../../ui_samples/ui_samples.dart';

class CreatePassScreen extends StatefulWidget {
  const CreatePassScreen({Key? key}) : super(key: key);

  @override
  State<CreatePassScreen> createState() => _CreatePassScreenState();
}

class _CreatePassScreenState extends State<CreatePassScreen> {
  TextEditingController passController = TextEditingController();
  TextEditingController repPassController = TextEditingController();
  bool obscured_pass = true;
  bool obscured_rep_pass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AB().appBarWithLogo(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 24,
        ),
        child: Center(
          child: Column(
            children: [
              Samples().titleSubtitle(
                'Пароль',
                'Придумайте пароль',
              ),
              SizedBox(
                height: 32,
              ),
              Samples().password(passController, icnPassBtn(), obscured_pass),
              SizedBox(
                height: 12,
              ),
              Samples().password(
                  repPassController, icnRepPassBtn(), obscured_rep_pass),
              SizedBox(
                height: 24,
              ),
              SizedBox(
                  height: 44,
                  width: double.infinity,
                  child: Samples().filledOutlinedButton('Продолжить', true, 'addphoto', null)),
            ],
          ),
        ),
      ),);
  }
  IconButton icnPassBtn() {
    return IconButton(
      onPressed: () {
        setState(() {
          obscured_pass = !obscured_pass;
        });
      },
      icon: Icon(
        Icons.remove_red_eye_outlined,
        color: obscured_pass == true ? Colors.grey : Colors.black,
      ),
    );
  }

  IconButton icnRepPassBtn() {
    return IconButton(
      onPressed: () {
        setState(() {
          obscured_rep_pass = !obscured_rep_pass;
        });
      },
      icon: Icon(
        Icons.remove_red_eye_outlined,
        color: obscured_rep_pass == true ? Colors.grey : Colors.black,
      ),
    );
  }
}
