// ignore_for_file: unnecessary_this

import 'package:flutter/material.dart';

extension MediaQueryValues on BuildContext {
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;
  double get toPadding => MediaQuery.of(this).viewPadding.top;
  double get bottom => MediaQuery.of(this).viewInsets.bottom;

  double getHeightPercentage(double value) {
    if (value <= 0) {
      return value.abs();
    }
    return (value / this.height) * 100;
  }

  double getWidthPercentage(double value) {
    if (value <= 0) {
      return value.abs();
    }
    return (value / this.width) * 100;
  }

  double getToPaddingPercentage(double value) {
    if (value <= 0) {
      return value.abs();
    }
    return (value / this.toPadding) * 100;
  }

  double getBottomPercentage(double value) {
    if (value <= 0) {
      return value.abs();
    }
    return (value / this.bottom) * 100;
  }
}
