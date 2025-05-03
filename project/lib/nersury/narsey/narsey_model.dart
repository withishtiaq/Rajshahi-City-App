import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'narsey_widget.dart' show NarseyWidget;
import 'package:flutter/material.dart';

class NarseyModel extends FlutterFlowModel<NarseyWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  final textFieldKey = GlobalKey();
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? textFieldSelectedOption;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<NarseryRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
  }
}
