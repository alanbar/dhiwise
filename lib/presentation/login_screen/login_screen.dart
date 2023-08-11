import 'package:alan_s_application1/core/app_export.dart';
import 'package:alan_s_application1/widgets/app_bar/appbar_iconbutton.dart';
import 'package:alan_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:alan_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:alan_s_application1/widgets/custom_button.dart';
import 'package:alan_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(71),
                leadingWidth: 56,
                leading: AppbarIconbutton(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 32, bottom: 3),
                    onTap: () {
                      onTapArrowleft1(context);
                    }),
                actions: [
                  AppbarTitle(
                      text: "Login", margin: getMargin(left: 48, right: 48))
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding:
                            getPadding(left: 32, top: 25, right: 32, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  width: getHorizontalSize(221),
                                  margin: getMargin(right: 89),
                                  child: Text(
                                      "this is your community, help them to grow more",
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold34)),
                              Container(
                                  width: getHorizontalSize(282),
                                  margin: getMargin(top: 1, right: 28),
                                  child: Text(
                                      "Our community is your community too so let's strengthen our community together",
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsMedium12
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.12)))),
                              CustomImageView(
                                  svgPath: ImageConstant.imgLogoGray50113x116,
                                  height: getVerticalSize(113),
                                  width: getHorizontalSize(116),
                                  alignment: Alignment.center,
                                  margin: getMargin(top: 21)),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: emailController,
                                  hintText: "Email",
                                  margin: getMargin(top: 115),
                                  shape: TextFormFieldShape.RoundedBorder14,
                                  fontStyle: TextFormFieldFontStyle
                                      .PoppinsMedium14Gray9007e_2,
                                  textInputType: TextInputType.emailAddress),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: passwordController,
                                  hintText: "Password",
                                  margin: getMargin(top: 24),
                                  shape: TextFormFieldShape.RoundedBorder14,
                                  textInputAction: TextInputAction.done,
                                  textInputType: TextInputType.visiblePassword,
                                  isObscureText: true),
                              GestureDetector(
                                  onTap: () {
                                    onTapTxtForgotPasswor(context);
                                  },
                                  child: Padding(
                                      padding: getPadding(left: 2, top: 26),
                                      child: Text("Forgot Password?",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtPoppinsSemiBold12
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(
                                                          0.12))))),
                              CustomButton(
                                  height: getVerticalSize(60),
                                  text: "Next",
                                  margin: getMargin(top: 32),
                                  fontStyle: ButtonFontStyle
                                      .PoppinsMedium14WhiteA700_2),
                              Align(
                                  alignment: Alignment.center,
                                  child: GestureDetector(
                                      onTap: () {
                                        onTapRowconfirmation(context);
                                      },
                                      child: Padding(
                                          padding: getPadding(top: 24),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                    padding:
                                                        getPadding(bottom: 1),
                                                    child: Text(
                                                        "Don’t have an account?",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsMedium12Gray9007e
                                                            .copyWith(
                                                                letterSpacing:
                                                                    getHorizontalSize(
                                                                        0.12)))),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 8, top: 1),
                                                    child: Text("SignUp",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsSemiBold12
                                                            .copyWith(
                                                                letterSpacing:
                                                                    getHorizontalSize(
                                                                        0.12))))
                                              ]))))
                            ]))))));
  }

  onTapTxtForgotPasswor(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.forgotPasswordScreen);
  }

  onTapRowconfirmation(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signupScreen);
  }

  onTapArrowleft1(BuildContext context) {
    Navigator.pop(context);
  }
}
