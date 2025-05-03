import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'bangla_widget.dart' show BanglaWidget;
import 'package:flutter/material.dart';

class BanglaModel extends FlutterFlowModel<BanglaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  final textFieldKey = GlobalKey();
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? textFieldSelectedOption;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<BanglaRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
  }
}
