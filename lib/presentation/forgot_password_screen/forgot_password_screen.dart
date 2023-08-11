import 'package:alan_s_application1/core/app_export.dart';
import 'package:alan_s_application1/widgets/app_bar/appbar_iconbutton.dart';
import 'package:alan_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:alan_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:alan_s_application1/widgets/custom_button.dart';
import 'package:alan_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ForgotPasswordScreen extends StatelessWidget {
  TextEditingController yourEmailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(85),
                leadingWidth: 56,
                leading: AppbarIconbutton(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 32, top: 14, bottom: 17),
                    onTap: () {
                      onTapArrowleft2(context);
                    }),
                actions: [
                  AppbarTitle(
                      text: "Forgot Password",
                      margin:
                          getMargin(left: 35, top: 14, right: 35, bottom: 14))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 31, top: 22, right: 31, bottom: 22),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(183),
                          width: getHorizontalSize(262),
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                    width: getHorizontalSize(245),
                                    child: Text(
                                        "If you are always helping others you are helping yourself too",
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsMedium12Gray9007e
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.12))))),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                    width: getHorizontalSize(262),
                                    child: Text(
                                        "Helping others means helping yourself. ",
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsBold34)))
                          ])),
                      CustomImageView(
                          svgPath: ImageConstant.imgLogoGray50121x135,
                          height: getVerticalSize(121),
                          width: getHorizontalSize(135),
                          alignment: Alignment.center,
                          margin: getMargin(top: 37)),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 27),
                              child: Text("Forgot Password",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsSemiBold18))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: yourEmailController,
                          hintText: "Your Email",
                          margin: getMargin(top: 45),
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.emailAddress),
                      Container(
                          width: getHorizontalSize(246),
                          margin: getMargin(top: 19, right: 64),
                          child: Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular12.copyWith(
                                  letterSpacing: getHorizontalSize(0.12)))),
                      CustomButton(
                          height: getVerticalSize(60),
                          text: "Start",
                          margin: getMargin(top: 18, bottom: 5),
                          fontStyle: ButtonFontStyle.PoppinsMedium14WhiteA700_1,
                          onTap: () {
                            onTapStart(context);
                          })
                    ]))));
  }

  onTapStart(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }

  onTapArrowleft2(BuildContext context) {
    Navigator.pop(context);
  }
}
