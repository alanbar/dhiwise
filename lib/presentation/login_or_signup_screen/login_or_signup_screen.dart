import 'package:alan_s_application1/core/app_export.dart';
import 'package:alan_s_application1/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class LoginOrSignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 32, top: 39, right: 32, bottom: 39),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: getHorizontalSize(208),
                          margin: getMargin(top: 41),
                          child: Text("Welcome to our community",
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold34)),
                      Container(
                          width: getHorizontalSize(281),
                          margin: getMargin(top: 2, right: 29),
                          child: Text(
                              "our community is ready to help you to join our best platform",
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular12.copyWith(
                                  letterSpacing: getHorizontalSize(0.12)))),
                      CustomImageView(
                          svgPath: ImageConstant.imgLogoGray50,
                          height: getVerticalSize(105),
                          width: getHorizontalSize(117),
                          alignment: Alignment.center,
                          margin: getMargin(top: 31)),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 33),
                              child: Text("Get in through",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsSemiBold18))),
                      CustomButton(
                          height: getVerticalSize(60),
                          text: "Sign Up",
                          margin: getMargin(top: 33),
                          fontStyle: ButtonFontStyle.PoppinsMedium14WhiteA700_1,
                          onTap: () {
                            onTapSignup(context);
                          }),
                      CustomButton(
                          height: getVerticalSize(60),
                          text: "Login",
                          margin: getMargin(top: 14, bottom: 5),
                          variant: ButtonVariant.FillDeeporange50063,
                          fontStyle:
                              ButtonFontStyle.PoppinsMedium14Deeporange500_1,
                          onTap: () {
                            onTapLogin(context);
                          })
                    ]))));
  }

  onTapSignup(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signupScreen);
  }

  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
