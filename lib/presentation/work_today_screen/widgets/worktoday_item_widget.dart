import 'package:alan_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WorktodayItemWidget extends StatelessWidget {
  WorktodayItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        top: 15,
        bottom: 15,
      ),
      decoration: AppDecoration.fillWhiteA7007e,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: getVerticalSize(
              26,
            ),
            width: getHorizontalSize(
              28,
            ),
            decoration: BoxDecoration(
              color: ColorConstant.deepOrange5006c,
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  6,
                ),
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              top: 3,
              bottom: 2,
            ),
            child: Text(
              "",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsRegular14,
            ),
          ),
          CustomImageView(
            svgPath: ImageConstant.imgArrowiconDeepOrange500,
            height: getVerticalSize(
              5,
            ),
            width: getHorizontalSize(
              3,
            ),
            margin: getMargin(
              top: 10,
              bottom: 10,
            ),
          ),
        ],
      ),
    );
  }
}
