import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'parler_widget.dart' show ParlerWidget;
import 'package:flutter/material.dart';

class ParlerModel extends FlutterFlowModel<ParlerWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  final textFieldKey = GlobalKey();
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? textFieldSelectedOption;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<ParlarRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
  }
}
