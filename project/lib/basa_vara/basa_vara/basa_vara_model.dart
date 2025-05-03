import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'basa_vara_widget.dart' show BasaVaraWidget;
import 'package:flutter/material.dart';

class BasaVaraModel extends FlutterFlowModel<BasaVaraWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  final textFieldKey = GlobalKey();
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? textFieldSelectedOption;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<BasaVraRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
  }
}
