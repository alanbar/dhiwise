import '../home_screen/widgets/home_item_widget.dart';
import 'package:alan_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 30, top: 79, right: 30),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgProfileimage139x139,
                          height: getSize(139),
                          width: getSize(139),
                          radius: BorderRadius.circular(getHorizontalSize(69))),
                      Padding(
                          padding: getPadding(top: 13),
                          child: Text("Adalah",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsSemiBold20)),
                      Text("Alcanasatre",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsRegular18),
                      Padding(
                          padding: getPadding(top: 15),
                          child: Text("Joined 6 Month Ago",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular10)),
                      Padding(
                          padding: getPadding(left: 4, top: 47),
                          child: ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(13));
                              },
                              itemCount: 3,
                              itemBuilder: (context, index) {
                                return HomeItemWidget(onTapPersonality: () {
                                  onTapPersonality(context);
                                });
                              }))
                    ]))));
  }

  onTapPersonality(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.personalityScreen);
  }
}
