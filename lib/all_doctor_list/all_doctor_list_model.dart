import '/components/search_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'all_doctor_list_widget.dart' show AllDoctorListWidget;
import 'package:flutter/material.dart';

class AllDoctorListModel extends FlutterFlowModel<AllDoctorListWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for search component.
  late SearchModel searchModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    searchModel = createModel(context, () => SearchModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    searchModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
