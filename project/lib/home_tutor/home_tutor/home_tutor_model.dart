import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_tutor_widget.dart' show HomeTutorWidget;
import 'package:flutter/material.dart';

class HomeTutorModel extends FlutterFlowModel<HomeTutorWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  final textFieldKey = GlobalKey();
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? textFieldSelectedOption;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<HomeTutorRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
  }
}
