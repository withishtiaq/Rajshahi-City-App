import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'accounting_widget.dart' show AccountingWidget;
import 'package:flutter/material.dart';

class AccountingModel extends FlutterFlowModel<AccountingWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  final textFieldKey = GlobalKey();
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? textFieldSelectedOption;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<AccontingRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
  }
}
