import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shabahang/common/helpers/is_dark_mode.dart';
import 'package:shabahang/common/widgets/appbar/return_arrow.dart';
import 'package:shabahang/common/widgets/buttons/basic_app_button.dart';
import 'package:shabahang/core/configs/assets/app_vectors.dart';
import 'package:shabahang/core/configs/theme/app_colors.dart';
import 'package:shabahang/presentation/auth/pages/sign_up.dart';

class SignupOrSigninPage extends StatelessWidget {
  const SignupOrSigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AppBarReturnArrowButton(),
          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(
              AppVectors.topRightPatternDark
            ),
          ),

          Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset(
              AppVectors.bottomRightPatternDark
            ),
          ),

          Align(
            alignment: Alignment.centerLeft,
            child: SvgPicture.asset(
              AppVectors.leftBottomPatternDark,
            ),
          ),

          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 40,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(AppVectors.logo),

                  const SizedBox(height: 30,),
              
                  Text(
                    'شــبــاهــنــگ ، نوای ارغوانی موسیقی',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 25,),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Text(
                      'یک برنامه پخش موسیقی مدرن و جذاب.موسیقی های خودتون رو آپلود کنید و در هر زمان به آنها دسترسی داشته باشید.',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        height: 1.7,
                        color: AppColors.lightThemeGrey,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  const SizedBox(height: 50,),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                    
                        Expanded(
                          flex: 1,
                          child: BasicAppButton(
                            onPressed: () {}, 
                            title: 'ثبت نام'
                          ),
                        ),
                    
                        const SizedBox(width: 20,),
                    
                        TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const SignUpPage()));
                          }, 
                          child: Text(
                            'ورود به حساب',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: context.isDarkMode ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}