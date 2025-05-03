import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'atm_widget.dart' show AtmWidget;
import 'package:flutter/material.dart';

class AtmModel extends FlutterFlowModel<AtmWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  final textFieldKey = GlobalKey();
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? textFieldSelectedOption;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<AtmRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
  }
}
