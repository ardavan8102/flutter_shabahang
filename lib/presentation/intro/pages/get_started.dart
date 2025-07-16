import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shabahang/common/widgets/buttons/basic_app_button.dart';
import 'package:shabahang/core/configs/assets/app_images.dart';
import 'package:shabahang/core/configs/assets/app_vectors.dart';
import 'package:shabahang/core/configs/theme/app_colors.dart';
import 'package:shabahang/presentation/choose_mode/pages/choose_mode.dart';

class GetStartPage extends StatelessWidget {
  const GetStartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 60,
              horizontal: 40,
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  AppImages.introBG,
                ),
              ),
            ),

            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(
                    AppVectors.logo,
                  ),
                ),

                const Spacer(),

                Text(
                  '... موزیک دوای هر دردیه',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 25,),

                Text(
                  'با برنامه شــبــاهنــگ میتونی به راحتی موزیک‌های خودتو یکجا ذخیره کنی و هرموقع خواستی بدون نیاز به اینترنت بهشون گوش بدی. جالبه نه؟',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.lightThemeGrey,
                  ),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 26,),

                BasicAppButton(
                  onPressed: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (BuildContext context) => const ChooseModePage())
                    );
                  }, 
                  title: 'شروع ماجراجویی',
                ),

                const SizedBox(height: 60,),

              ],
            ),
          ),
        ],
      ),
    );
  }
}