import 'package:alan_s_application1/core/app_export.dart';
import 'package:alan_s_application1/widgets/app_bar/appbar_iconbutton.dart';
import 'package:alan_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:alan_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:alan_s_application1/widgets/custom_button.dart';
import 'package:alan_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class SignupScreen extends StatelessWidget {
  TextEditingController firstnameController = TextEditingController();

  TextEditingController lastnameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(45),
                leadingWidth: 52,
                leading: AppbarIconbutton(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 28, bottom: 3),
                    onTap: () {
                      onTapArrowleft(context);
                    }),
                actions: [
                  AppbarTitle(
                      text: "Sign Up", margin: getMargin(left: 45, right: 45))
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding:
                            getPadding(left: 28, top: 41, right: 36, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  width: getHorizontalSize(218),
                                  margin: getMargin(right: 92),
                                  child: Text("When community comes unity",
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold34)),
                              Container(
                                  width: getHorizontalSize(245),
                                  margin: getMargin(right: 65),
                                  child: Text(
                                      "Our community is always there 24 hours if you need it, don't hesitate to join",
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtPoppinsRegular12Black9007e
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.12)))),
                              CustomImageView(
                                  svgPath: ImageConstant.imgLogoGray50120x114,
                                  height: getVerticalSize(120),
                                  width: getHorizontalSize(114),
                                  alignment: Alignment.center,
                                  margin: getMargin(top: 12)),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: firstnameController,
                                  hintText: "First name",
                                  margin: getMargin(top: 96)),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: lastnameController,
                                  hintText: "Last name",
                                  margin: getMargin(top: 24)),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: emailController,
                                  hintText: "E-mail",
                                  margin: getMargin(top: 24),
                                  textInputType: TextInputType.emailAddress),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: passwordController,
                                  hintText: "Password",
                                  margin: getMargin(top: 24),
                                  textInputAction: TextInputAction.done,
                                  textInputType: TextInputType.visiblePassword,
                                  isObscureText: true),
                              Container(
                                  width: getHorizontalSize(248),
                                  margin:
                                      getMargin(left: 1, top: 22, right: 61),
                                  child: Text(
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsMedium12
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.12)))),
                              CustomButton(
                                  height: getVerticalSize(60),
                                  text: "Next",
                                  margin: getMargin(top: 30),
                                  fontStyle: ButtonFontStyle
                                      .PoppinsMedium14WhiteA700_2)
                            ])))),
            bottomNavigationBar: GestureDetector(
                onTap: () {
                  onTapAlreadyhavean(context);
                },
                child: Padding(
                    padding: getPadding(left: 86, right: 85, bottom: 18),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Already have an account?",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium12.copyWith(
                                  letterSpacing: getHorizontalSize(0.12))),
                          Padding(
                              padding: getPadding(left: 8),
                              child: Text("Login",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsSemiBold12.copyWith(
                                      letterSpacing: getHorizontalSize(0.12))))
                        ])))));
  }

  onTapAlreadyhavean(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }

  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
