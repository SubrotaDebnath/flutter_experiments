import 'package:flutter/material.dart';
import 'enums.dart';

typedef AdaptiveWidgetBuilder = Widget Function(
    BuildContext context, DeviceMood deviceMood);

class AdaptiveWidgetsBuilder extends StatelessWidget {
  const AdaptiveWidgetsBuilder({
    required this.builder,
    Key? key,
  }) : super(key: key);
  final AdaptiveWidgetBuilder builder;

  Widget _buildWithConstraints(
      BuildContext context, BoxConstraints constraints) {
    final Orientation orientation = constraints.maxWidth > constraints.maxHeight
        ? Orientation.landscape
        : Orientation.portrait;

    final DeviceMood deviceMood = (orientation == Orientation.landscape)
        ? constraints.maxHeight > 600
            ? DeviceMood.landscapeTablet
            : DeviceMood.landscapeMobile
        : constraints.maxWidth > 600
            ? DeviceMood.portraitTablet
            : DeviceMood.portraitMobile;
    return builder(context, deviceMood);
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: _buildWithConstraints);
  }
}
