// ignore_for_file: prefer_initializing_formals

import 'dart:ui';

class ScreenUtil {
  static ScreenUtil? _instance;
  static const int defaultWidth = 375;
  static const int defaultHeight = 852;

  late double uiWidthPx;
  late double uiHeightPx;
  late bool allowFontScaling;

  late double _pixelRatio;
  late double _screenWidth;
  late double _screenHeight;
  late double _statusBarHeight;
  late double _bottomBarHeight;
  late double _textScaleFactor;

  ScreenUtil({
    num width = defaultWidth,
    num height = defaultHeight,
    bool allowFontScaling = false,
  }) {
    uiWidthPx = width.toDouble();
    uiHeightPx = height.toDouble();
    this.allowFontScaling = allowFontScaling;
    _pixelRatio = window.devicePixelRatio;
    _screenWidth = window.physicalSize.width;
    _screenHeight = window.physicalSize.height;
    _statusBarHeight = window.padding.top;
    _bottomBarHeight = window.padding.bottom;
    _textScaleFactor = window.textScaleFactor;
  }

  static ScreenUtil getInstance({
    num width = defaultWidth,
    num height = defaultHeight,
    bool allowFontScaling = false,
  }) {
    _instance ??= ScreenUtil(
      width: width,
      height: height,
      allowFontScaling: allowFontScaling,
    );
    return _instance!;
  }

  double get textScaleFactor => _textScaleFactor;

  double get pixelRatio => _pixelRatio;

  double get screenWidth => _screenWidth / _pixelRatio;

  double get screenHeight => _screenHeight / _pixelRatio;

  double get screenWidthPx => _screenWidth;

  double get screenHeightPx => _screenHeight;

  double get statusBarHeight => _statusBarHeight / _pixelRatio;

  double get statusBarHeightPx => _statusBarHeight;

  double get bottomBarHeight => _bottomBarHeight;

  double get scaleWidth => screenWidth / uiWidthPx;

  double get scaleHeight =>
      (screenHeight - statusBarHeight - bottomBarHeight) / uiHeightPx;

  double get scaleText => scaleWidth;

  double setWidth(num width) => width * scaleWidth;

  double setHeight(num height) => height * scaleHeight;

  double setSp(num fontSize, {bool? allowFontScalingSelf}) =>
      allowFontScalingSelf == true
          ? (fontSize * scaleText)
          : (allowFontScaling
              ? (fontSize * scaleText)
              : (fontSize * scaleText / _textScaleFactor));
}
