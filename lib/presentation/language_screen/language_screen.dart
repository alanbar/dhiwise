import 'package:alan_s_application1/core/app_export.dart';
import 'package:alan_s_application1/widgets/custom_button.dart';
import 'package:alan_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class LanguageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 32, top: 43, right: 32, bottom: 43),
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
                          padding: getPadding(top: 82),
                          child: Text("Language",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsSemiBold28)),
                      Padding(
                          padding: getPadding(top: 7),
                          child: Text(
                              "Your settings so that we are comfortable",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium12.copyWith(
                                  letterSpacing: getHorizontalSize(0.12)))),
                      CustomButton(
                          height: getVerticalSize(60),
                          text: "Indonesian",
                          margin: getMargin(top: 86),
                          variant: ButtonVariant.FillDeeporange5005e,
                          padding: ButtonPadding.PaddingAll20,
                          fontStyle:
                              ButtonFontStyle.PoppinsMedium12Deeporange500),
                      CustomButton(
                          height: getVerticalSize(60),
                          text: "English",
                          margin: getMargin(top: 14),
                          variant: ButtonVariant.FillDeeppurpleA4005e,
                          padding: ButtonPadding.PaddingAll20,
                          fontStyle:
                              ButtonFontStyle.PoppinsMedium12DeeppurpleA400_1),
                      Spacer(),
                      CustomButton(
                          height: getVerticalSize(60),
                          text: "Save",
                          margin: getMargin(bottom: 28))
                    ]))));
  }

  onTapBtnArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
