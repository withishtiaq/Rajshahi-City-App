import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'reset_pass_widget.dart' show ResetPassWidget;
import 'package:flutter/material.dart';

class ResetPassModel extends FlutterFlowModel<ResetPassWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    emailTextController?.dispose();
  }
}
