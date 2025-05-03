import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'hotel_widget.dart' show HotelWidget;
import 'package:flutter/material.dart';

class HotelModel extends FlutterFlowModel<HotelWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  final textFieldKey = GlobalKey();
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? textFieldSelectedOption;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<HotelRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
  }
}
