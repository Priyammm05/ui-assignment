import 'package:feed/utils/screenutils/screen_utils.dart';

extension SizeExtension on double {
  double get wp => ScreenUtil().setWidth(this);

  double get hp => ScreenUtil().setHeight(this);

  double get sp => ScreenUtil().setSp(this);
}
