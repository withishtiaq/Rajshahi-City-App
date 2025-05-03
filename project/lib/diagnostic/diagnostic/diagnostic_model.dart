import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'diagnostic_widget.dart' show DiagnosticWidget;
import 'package:flutter/material.dart';

class DiagnosticModel extends FlutterFlowModel<DiagnosticWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  final textFieldKey = GlobalKey();
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? textFieldSelectedOption;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<DiagnosticRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
  }
}
