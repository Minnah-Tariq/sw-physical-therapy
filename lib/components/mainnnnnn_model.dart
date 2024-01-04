import '/components/mainbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'mainnnnnn_widget.dart' show MainnnnnnWidget;
import 'package:flutter/material.dart';

class MainnnnnnModel extends FlutterFlowModel<MainnnnnnWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for mainbar component.
  late MainbarModel mainbarModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    mainbarModel = createModel(context, () => MainbarModel());
  }

  @override
  void dispose() {
    mainbarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
