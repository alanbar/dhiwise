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

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class PersonalityScreen extends StatelessWidget {
  TextEditingController usernameOneController = TextEditingController();

  TextEditingController firstnameOneController = TextEditingController();

  TextEditingController lastnameOneController = TextEditingController();

  TextEditingController hobbyOneController = TextEditingController();

  TextEditingController priceController = TextEditingController();

  TextEditingController countryOneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(97),
                leadingWidth: 56,
                leading: AppbarIconbutton(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 32, bottom: 3),
                    onTap: () {
                      onTapArrowleft3(context);
                    }),
                actions: [
                  AppbarTitle(
                      text: "Personality",
                      margin: getMargin(left: 32, right: 32))
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding:
                            getPadding(left: 32, top: 33, right: 32, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  imagePath:
                                      ImageConstant.imgProfileimage139x139,
                                  height: getSize(139),
                                  width: getSize(139),
                                  radius: BorderRadius.circular(
                                      getHorizontalSize(69)),
                                  alignment: Alignment.center),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(top: 18),
                                      child: Text("Edit Photo",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtPoppinsMedium12Deeporange500a2
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(
                                                          0.12))))),
                              Padding(
                                  padding: getPadding(top: 50),
                                  child: Text("UserName",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsMedium12
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.12)))),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: usernameOneController,
                                  hintText: "AdalahAlcana|",
                                  margin: getMargin(top: 13),
                                  variant:
                                      TextFormFieldVariant.OutlineGray9005e,
                                  fontStyle: TextFormFieldFontStyle
                                      .PoppinsMedium14Gray900a2_2),
                              Padding(
                                  padding: getPadding(top: 18),
                                  child: Text("First Name",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsMedium12
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.12)))),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: firstnameOneController,
                                  hintText: "Alcanasatre",
                                  margin: getMargin(top: 13),
                                  variant:
                                      TextFormFieldVariant.OutlineGray9005e,
                                  fontStyle: TextFormFieldFontStyle
                                      .PoppinsMedium14Gray900a2_2),
                              Padding(
                                  padding: getPadding(top: 18),
                                  child: Text("Last Name",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsMedium12
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.12)))),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: lastnameOneController,
                                  hintText: "Fourta|",
                                  margin: getMargin(top: 13),
                                  variant:
                                      TextFormFieldVariant.OutlineGray9005e,
                                  fontStyle: TextFormFieldFontStyle
                                      .PoppinsMedium14Gray900a2_2),
                              Padding(
                                  padding: getPadding(top: 20),
                                  child: Text("Hobby",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsMedium12
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.12)))),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: hobbyOneController,
                                  hintText: "Sleep|",
                                  margin: getMargin(top: 11),
                                  variant:
                                      TextFormFieldVariant.OutlineGray9005e,
                                  fontStyle: TextFormFieldFontStyle
                                      .PoppinsMedium14Gray900a2_3),
                              Padding(
                                  padding: getPadding(top: 18),
                                  child: Text("Date of birth",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtPoppinsMedium12Gray9007e
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.12)))),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: priceController,
                                  hintText: "28 May 2002|",
                                  margin: getMargin(top: 13),
                                  variant:
                                      TextFormFieldVariant.OutlineGray9005e,
                                  fontStyle: TextFormFieldFontStyle
                                      .PoppinsMedium14Gray900a2_3),
                              Padding(
                                  padding: getPadding(top: 20),
                                  child: Text("Country",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsMedium12
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.12)))),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: countryOneController,
                                  hintText: "Indonesian|",
                                  margin: getMargin(top: 11),
                                  variant:
                                      TextFormFieldVariant.OutlineGray9005e,
                                  fontStyle: TextFormFieldFontStyle
                                      .PoppinsMedium14Gray900a2_2,
                                  textInputAction: TextInputAction.done),
                              CustomButton(
                                  height: getVerticalSize(60),
                                  text: "Change save",
                                  margin: getMargin(top: 34),
                                  onTap: () {
                                    onTapChangesave(context);
                                  })
                            ]))))));
  }

  onTapChangesave(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.workTodayScreen);
  }

  onTapArrowleft3(BuildContext context) {
    Navigator.pop(context);
  }
}
