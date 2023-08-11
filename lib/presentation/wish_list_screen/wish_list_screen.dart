import 'package:alan_s_application1/core/app_export.dart';
import 'package:alan_s_application1/widgets/custom_button.dart';
import 'package:alan_s_application1/widgets/custom_icon_button.dart';
import 'package:alan_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class WishListScreen extends StatelessWidget {
  TextEditingController filesizeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
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
                          padding: getPadding(top: 75),
                          child: Text("Make a wish list",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsSemiBold28)),
                      Padding(
                          padding: getPadding(top: 11),
                          child: Text("Make your job easier with our reminders",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium12.copyWith(
                                  letterSpacing: getHorizontalSize(0.12)))),
                      Padding(
                          padding: getPadding(top: 85),
                          child: Text("Task todo",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium12Gray9008b
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.12)))),
                      Container(
                          margin: getMargin(top: 12),
                          padding: getPadding(
                              left: 18, top: 17, right: 18, bottom: 17),
                          decoration: AppDecoration.outlineGray9005e.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder14),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgCalendar23x24,
                                height: getVerticalSize(23),
                                width: getHorizontalSize(24)),
                            Padding(
                                padding:
                                    getPadding(left: 18, top: 1, bottom: 1),
                                child: Text("Create Action Mobile",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtPoppinsMedium14Gray90090))
                          ])),
                      Padding(
                          padding: getPadding(top: 18),
                          child: Text("Date",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium12Gray9008b
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.12)))),
                      Container(
                          margin: getMargin(top: 12),
                          padding: getPadding(
                              left: 18, top: 17, right: 18, bottom: 17),
                          decoration: AppDecoration.outlineGray9005e.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder14),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgCalendar,
                                height: getVerticalSize(23),
                                width: getHorizontalSize(24)),
                            Padding(
                                padding: getPadding(left: 18, top: 1),
                                child: Text("tt/mm/yy",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtPoppinsMedium14Gray90090))
                          ])),
                      Padding(
                          padding: getPadding(top: 18),
                          child: Text("Attachments",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium12Gray9008b
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.12)))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: filesizeController,
                          hintText: "maximum 10 mb",
                          margin: getMargin(top: 12),
                          variant: TextFormFieldVariant.OutlineGray9006c,
                          shape: TextFormFieldShape.RoundedBorder14,
                          padding: TextFormFieldPadding.PaddingT18,
                          fontStyle: TextFormFieldFontStyle.PoppinsMedium14,
                          textInputAction: TextInputAction.done,
                          prefix: Container(
                              margin: getMargin(
                                  left: 18, top: 17, right: 18, bottom: 17),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgInfo)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(58))),
                      CustomButton(
                          height: getVerticalSize(58),
                          text: "Make a wish list",
                          margin: getMargin(top: 35, bottom: 5))
                    ]))));
  }

  onTapBtnArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
