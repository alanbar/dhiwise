import 'package:alan_s_application1/core/app_export.dart';
import 'package:alan_s_application1/widgets/custom_button.dart';
import 'package:alan_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 32, top: 43, right: 32, bottom: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomIconButton(
                          height: 24,
                          width: 24,
                          onTap: () {
                            onTapBtnArrowleft(context);
                          },
                          child: CustomImageView(
                              svgPath: ImageConstant.imgArrowleft)),
                      Padding(
                          padding: getPadding(top: 50),
                          child: Text("Settings",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsSemiBold28)),
                      Padding(
                          padding: getPadding(top: 9),
                          child: Text(
                              "Your settings so that we are comfortable",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium12.copyWith(
                                  letterSpacing: getHorizontalSize(0.12)))),
                      GestureDetector(
                          onTap: () {
                            onTapPersonality(context);
                          },
                          child: Container(
                              margin: getMargin(top: 33),
                              padding: getPadding(
                                  left: 28, top: 20, right: 28, bottom: 10),
                              decoration: AppDecoration.outlineBlack9000c
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder14),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text("Personality",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsMedium12Gray90090)),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgArrowright,
                                        height: getVerticalSize(6),
                                        width: getHorizontalSize(3),
                                        margin: getMargin(
                                            left: 91, top: 6, bottom: 6))
                                  ]))),
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              margin: getMargin(top: 10),
                              decoration: AppDecoration.outlineBlack9000c1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    GestureDetector(
                                        onTap: () {
                                          onTapLanguage(context);
                                        },
                                        child: Container(
                                            padding: getPadding(
                                                left: 28,
                                                top: 19,
                                                right: 28,
                                                bottom: 19),
                                            decoration: AppDecoration
                                                .outlineBlack9000c
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder14),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 2),
                                                      child: Text("Language",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsMedium12Gray90090)),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowright,
                                                      height:
                                                          getVerticalSize(6),
                                                      width:
                                                          getHorizontalSize(3),
                                                      margin: getMargin(
                                                          left: 93,
                                                          top: 7,
                                                          bottom: 7))
                                                ])))
                                  ]))),
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              margin: getMargin(top: 14),
                              decoration: AppDecoration.outlineBlack9000c1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    GestureDetector(
                                        onTap: () {
                                          onTapRowtermandcondition(context);
                                        },
                                        child: Container(
                                            padding: getPadding(
                                                left: 28,
                                                top: 20,
                                                right: 28,
                                                bottom: 20),
                                            decoration: AppDecoration
                                                .outlineBlack9000c
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder14),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(bottom: 1),
                                                      child: Text(
                                                          "Terms and Conditions",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsMedium12Gray90090)),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowright,
                                                      height:
                                                          getVerticalSize(6),
                                                      width:
                                                          getHorizontalSize(3),
                                                      margin: getMargin(
                                                          left: 58,
                                                          top: 6,
                                                          bottom: 6))
                                                ])))
                                  ]))),
                      Spacer(),
                      CustomButton(
                          height: getVerticalSize(60),
                          text: "Log Out",
                          margin: getMargin(bottom: 63),
                          variant: ButtonVariant.OutlineRedA40066,
                          fontStyle:
                              ButtonFontStyle.PoppinsSemiBold16RedA40090_1)
                    ]))));
  }

  onTapBtnArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  onTapPersonality(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.personalityScreen);
  }

  onTapLanguage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.languageScreen);
  }

  onTapRowtermandcondition(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.termsandconditionsScreen);
  }
}
