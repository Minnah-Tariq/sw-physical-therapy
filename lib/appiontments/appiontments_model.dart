import '/components/custom_textfeild_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'appiontments_widget.dart' show AppiontmentsWidget;
import 'package:flutter/material.dart';

class AppiontmentsModel extends FlutterFlowModel<AppiontmentsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Model for CustomTextfeild component.
  late CustomTextfeildModel customTextfeildModel;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  DateTime? datePicked;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    customTextfeildModel = createModel(context, () => CustomTextfeildModel());
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    customTextfeildModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
