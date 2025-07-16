import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shabahang/common/helpers/is_dark_mode.dart';
import 'package:shabahang/common/widgets/appbar/return_arrow.dart';
import 'package:shabahang/common/widgets/buttons/basic_app_button.dart';
import 'package:shabahang/core/configs/assets/app_vectors.dart';
import 'package:shabahang/presentation/auth/pages/sign_up.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          
          AppBarReturnArrowButton(),

          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Align(
              alignment: Alignment.topCenter,
              child: SvgPicture.asset(
                AppVectors.logo
              ),
            ),
          ),

          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              
                  Text(
                    'ورود به حساب',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: context.isDarkMode ? Colors.white : Colors.black,
                    ),
                  ),
              
                  const SizedBox(height: 40,),

                  _eMailField(context),

                  const SizedBox(height: 20,),

                  _passWordField(context),

                  const SizedBox(height: 40,),

                  BasicAppButton(
                    onPressed: () {}, 
                    title: 'وارد شوید'
                  ),
              
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 70),
            child: Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => SignUpPage()));
                      }, 
                      child: Text('یکی بسازید'),
                    ),

                    Text(
                      'حساب کاربری ندارید؟',
                    ),
                    
                  ],
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }

  Widget _eMailField(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintTextDirection: TextDirection.rtl,
        hintText: 'آدرس ایمیل',
      ).applyDefaults(
        Theme.of(context).inputDecorationTheme
      ),
    );
  }

  Widget _passWordField(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintTextDirection: TextDirection.rtl,
        hintText: 'رمز حساب',
      ).applyDefaults(
        Theme.of(context).inputDecorationTheme
      ),
    );
  }
}