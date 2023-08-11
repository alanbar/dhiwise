import 'package:alan_s_application1/core/app_export.dart';
import 'package:alan_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class TermsandconditionsScreen extends StatelessWidget {
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
                      Container(
                          width: getHorizontalSize(155),
                          margin: getMargin(top: 79),
                          child: Text("Terms and Conditions",
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsSemiBold28)),
                      Container(
                          width: getHorizontalSize(285),
                          margin: getMargin(top: 63, right: 25, bottom: 7),
                          child: Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla fermentum netus amet risus commodo amet vulputate tellus. Et quis ornare sed diam in. Id nibh mattis quis fermentum non malesuada. Vel ullamcorper lacus, mollis pellentesque egestas aliquet aliquam. Risus lorem velit, nunc id ornare diam. Odio diam egestas vulputate tristique mi aliquam eget. Feugiat mi sed semper faucibus tellus aliquam nulla ullamcorper arcu. Est in risus pulvinar arcu pretium dui eget pretium. Nunc, sed scelerisque id varius.\nVulputate vel aliquam suscipit vitae, nullam pretium. Ut sed elementum eget id pellentesque. Odio placerat faucibus purus rhoncus, pharetra commodo. Augue a duis vitae tempor lobortis. Aliquam nunc amet fermentum, aliquet elementum ac neque, convallis. Fames nulla ornare diam odio enim. Enim, pellentesque ",
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular12Gray900a2
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.24))))
                    ]))));
  }

  onTapBtnArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
