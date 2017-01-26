import 'package:flutter/material.dart';

/**
 * Collection on methods that help create Widgets.
 */
class WidgetUtils {
  WidgetUtils._private();

  /**
   * Adds a divider between every pair of widgets on |widgets|.
   */
  static List<Widget> addDividers(List<Widget> widgets) {
    if (widgets == null || widgets.length <= 1) {
      return widgets;
    }
    List<Widget> widgetsWithDividers = [widgets[0]];
    widgets.sublist(1).forEach((widget) {
      widgetsWithDividers.add(new Divider());
      widgetsWithDividers.add(widget);
    });
    return widgetsWithDividers;
  }

}
