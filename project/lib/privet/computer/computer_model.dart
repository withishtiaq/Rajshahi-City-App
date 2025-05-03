import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'computer_widget.dart' show ComputerWidget;
import 'package:flutter/material.dart';

class ComputerModel extends FlutterFlowModel<ComputerWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  final textFieldKey = GlobalKey();
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? textFieldSelectedOption;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<ComputerRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
  }
}
