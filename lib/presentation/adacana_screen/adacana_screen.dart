import 'package:alan_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

class AdacanaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgLogo,
                          height: getVerticalSize(325),
                          width: getHorizontalSize(238),
                          margin: getMargin(top: 1),
                          onTap: () {
                            onTapImgLogo(context);
                          })
                    ]))));
  }

  onTapImgLogo(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginOrSignupScreen);
  }
}
