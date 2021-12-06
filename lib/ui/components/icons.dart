import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:najot_talim_app/size_config.dart';

SvgPicture tvtv = SvgPicture.asset(
  'assets/icons/tv.svg',
  width: getProportionateScreenWidth(22.0),
  height: getProportionateScreenHeight(22.0),
);

SvgPicture sms = SvgPicture.asset(
  'assets/icons/sms.svg',
  height: getProportionateScreenHeight(26.0),
  width: getProportionateScreenWidth(26.0),
);
SvgPicture download = SvgPicture.asset(
  'assets/icons/download.svg',
  // height: getProportionateScreenHeight(22.0),
  // width: getProportionateScreenWidth(22.0),
);
SvgPicture play = SvgPicture.asset(
  'assets/icons/play.svg',
  height: getProportionateScreenHeight(26.0),
  width: getProportionateScreenWidth(26.0),
);
