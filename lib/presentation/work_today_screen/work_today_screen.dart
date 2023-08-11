import '../work_today_screen/widgets/worktoday_item_widget.dart';
import 'package:alan_s_application1/core/app_export.dart';
import 'package:alan_s_application1/widgets/custom_button.dart';
import 'package:alan_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class WorkTodayScreen extends StatelessWidget {
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
                          padding: getPadding(top: 79),
                          child: Text("Work Today’s",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsSemiBold28)),
                      Padding(
                          padding: getPadding(top: 7),
                          child: Text("Make your job easier with our reminders",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium12.copyWith(
                                  letterSpacing: getHorizontalSize(0.12)))),
                      Padding(
                          padding: getPadding(top: 78),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 6, bottom: 2),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("Today",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtPoppinsMedium14),
                                          Padding(
                                              padding: getPadding(top: 5),
                                              child: Text("02 April 2021",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsSemiBold16))
                                        ])),
                                CustomIconButton(
                                    height: 58,
                                    width: 60,
                                    variant: IconButtonVariant.FillTeal4005e,
                                    shape: IconButtonShape.RoundedBorder14,
                                    padding: IconButtonPadding.PaddingAll17,
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgCalendar))
                              ])),
                      Padding(
                          padding: getPadding(top: 59),
                          child: ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(5));
                              },
                              itemCount: 2,
                              itemBuilder: (context, index) {
                                return WorktodayItemWidget();
                              })),
                      CustomButton(
                          height: getVerticalSize(60),
                          text: "Make a wish list",
                          margin: getMargin(top: 63, bottom: 5),
                          onTap: () {
                            onTapMakeawishlistTwo(context);
                          })
                    ]))));
  }

  onTapBtnArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  onTapMakeawishlistTwo(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.wishListScreen);
  }
}
