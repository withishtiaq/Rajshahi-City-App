import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'chemistry_widget.dart' show ChemistryWidget;
import 'package:flutter/material.dart';

class ChemistryModel extends FlutterFlowModel<ChemistryWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  final textFieldKey = GlobalKey();
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? textFieldSelectedOption;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<PhysicsRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
  }
}
