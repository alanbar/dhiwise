import 'package:alan_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeItemWidget extends StatelessWidget {
  HomeItemWidget({this.onTapPersonality});

  VoidCallback? onTapPersonality;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapPersonality?.call();
      },
      child: Container(
        padding: getPadding(
          left: 28,
          top: 16,
          right: 28,
          bottom: 16,
        ),
        decoration: AppDecoration.fillDeeporange5000c.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder14,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              svgPath: ImageConstant.imgLocation,
              height: getVerticalSize(
                18,
              ),
              width: getHorizontalSize(
                20,
              ),
              margin: getMargin(
                top: 4,
                bottom: 4,
              ),
            ),
            Spacer(
              flex: 45,
            ),
            Padding(
              padding: getPadding(
                top: 3,
              ),
              child: Text(
                "",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsMedium16,
              ),
            ),
            Spacer(
              flex: 54,
            ),
            CustomImageView(
              svgPath: ImageConstant.imgStroke1DeepOrange500,
              height: getVerticalSize(
                6,
              ),
              width: getHorizontalSize(
                5,
              ),
              radius: BorderRadius.circular(
                getHorizontalSize(
                  2,
                ),
              ),
              margin: getMargin(
                top: 10,
                right: 5,
                bottom: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
