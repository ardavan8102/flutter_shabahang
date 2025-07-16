import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shabahang/common/widgets/buttons/basic_app_button.dart';
import 'package:shabahang/core/configs/assets/app_images.dart';
import 'package:shabahang/core/configs/assets/app_vectors.dart';
import 'package:shabahang/core/configs/theme/app_colors.dart';
import 'package:shabahang/presentation/auth/pages/signup_or_signin.dart';
import 'package:shabahang/presentation/choose_mode/bloc/theme_qbit.dart';

class ChooseModePage extends StatefulWidget {
  const ChooseModePage({super.key});

  @override
  State<ChooseModePage> createState() => _ChooseModePageState();
}

class _ChooseModePageState extends State<ChooseModePage> {
  int _selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AppImages.chooseModeBG),
              ),
            ),
            padding: EdgeInsets.symmetric(
              vertical: 60,
              horizontal: 40,
            ),
            child: Column(
              children: [
                const Spacer(),
                Text(
                  'کدوم یکی رو دوست داری؟',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 36),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        _selectableGlowingCircle(0, AppVectors.lightThemeChoose, ThemeMode.light),
                        const SizedBox(height: 15,),
                        Text(
                          'حالت روشن',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(width: 40),

                    Column(
                      children: [
                        _selectableGlowingCircle(1, AppVectors.darkThemeChoose, ThemeMode.dark),
                        const SizedBox(height: 15,),
                        Text(
                          'حالت تاریک',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    
                  ],
                ),

                const SizedBox(height: 40),

                BasicAppButton(
                  onPressed: () {
                    if (_selectedIndex == -1) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'لطفاً یک حالت را انتخاب کنید',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                          backgroundColor: Colors.red,
                          behavior: SnackBarBehavior.floating,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                          margin: EdgeInsets.all(20),
                          duration: Duration(seconds: 3),
                        ),
                      );
                    } else {
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (BuildContext context) => const SignupOrSigninPage(),
                        ),
                      );
                    }
                  }, 
                  title: 'انتخاب کن',
                ),

                const SizedBox(height: 100),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _selectableGlowingCircle(int index, String svgAssetPath, ThemeMode themeM) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = _selectedIndex == index ? -1 : index;
          context.read<ThemeQbit>().updateTheme(themeM);
        });
      },
      child: SizedBox(
        width: 80,
        height: 80,
        child: Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            // Purple glow background
            Positioned(
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                height: _selectedIndex == index ? 100 : 0,
                width: _selectedIndex == index ? 100 : 0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.transparent,
                  boxShadow: _selectedIndex == index
                      ? [
                          BoxShadow(
                            color: AppColors.primary.withOpacity(0.6),
                            blurRadius: 30,
                            spreadRadius: 5,
                          ),
                        ]
                      : [],
                ),
              ),
            ),
            
            // Main circle with image
            ClipOval(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                child: Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.white.withAlpha(20),
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: _selectedIndex == index
                          ? AppColors.primary.withOpacity(0.8)
                          : Colors.transparent,
                      width: 2,
                    ),
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      svgAssetPath,
                      color: _selectedIndex == index ? Colors.white : const Color.fromARGB(255, 195, 158, 255) ,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}