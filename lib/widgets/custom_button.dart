import 'package:alan_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonWithOrWithoutIcon(),
      ),
    );
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          suffixWidget ?? SizedBox(),
        ],
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  _buildTextButtonStyle() {
    return TextButton.styleFrom(
      fixedSize: Size(
        width ?? double.maxFinite,
        height ?? getVerticalSize(40),
      ),
      padding: _setPadding(),
      backgroundColor: _setColor(),
      side: _setTextButtonBorder(),
      shape: RoundedRectangleBorder(
        borderRadius: _setBorderRadius(),
      ),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll20:
        return getPadding(
          all: 21,
        );
      default:
        return getPadding(
          all: 18,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.FillDeeporange50063:
        return ColorConstant.deepOrange50063;
      case ButtonVariant.OutlineRedA40066:
        return ColorConstant.redA4000c;
      case ButtonVariant.FillDeeporange5005e:
        return ColorConstant.deepOrange5005e;
      case ButtonVariant.FillDeeppurpleA4005e:
        return ColorConstant.deepPurpleA4005e;
      default:
        return ColorConstant.lightBlue400;
    }
  }

  _setTextButtonBorder() {
    switch (variant) {
      case ButtonVariant.OutlineRedA40066:
        return BorderSide(
          color: ColorConstant.redA40066,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.FillLightblue400:
      case ButtonVariant.FillDeeporange50063:
      case ButtonVariant.FillDeeporange5005e:
      case ButtonVariant.FillDeeppurpleA4005e:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            14.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.PoppinsMedium14WhiteA700_1:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(
            1.50,
          ),
        );
      case ButtonFontStyle.PoppinsMedium14Deeporange500_1:
        return TextStyle(
          color: ColorConstant.deepOrange500,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(
            1.50,
          ),
        );
      case ButtonFontStyle.PoppinsMedium14WhiteA700_2:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
          height: getVerticalSize(
            1.50,
          ),
        );
      case ButtonFontStyle.PoppinsSemiBold16RedA40090_1:
        return TextStyle(
          color: ColorConstant.redA40090,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(
            1.50,
          ),
        );
      case ButtonFontStyle.PoppinsMedium12Deeporange500:
        return TextStyle(
          color: ColorConstant.deepOrange500,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(
            1.50,
          ),
        );
      case ButtonFontStyle.PoppinsMedium12DeeppurpleA400_1:
        return TextStyle(
          color: ColorConstant.deepPurpleA400,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(
            1.50,
          ),
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(
            1.50,
          ),
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder14,
}

enum ButtonPadding {
  PaddingAll17,
  PaddingAll20,
}

enum ButtonVariant {
  FillLightblue400,
  FillDeeporange50063,
  OutlineRedA40066,
  FillDeeporange5005e,
  FillDeeppurpleA4005e,
}

enum ButtonFontStyle {
  PoppinsSemiBold16WhiteA700,
  PoppinsMedium14WhiteA700_1,
  PoppinsMedium14Deeporange500_1,
  PoppinsMedium14WhiteA700_2,
  PoppinsSemiBold16RedA40090_1,
  PoppinsMedium12Deeporange500,
  PoppinsMedium12DeeppurpleA400_1,
}
