import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'edit_profile_widget.dart' show EditProfileWidget;
import 'package:flutter/material.dart';

class EditProfileModel extends FlutterFlowModel<EditProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for phoneNumber widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberTextController;
  String? Function(BuildContext, String?)? phoneNumberTextControllerValidator;
  // State field(s) for passWord widget.
  FocusNode? passWordFocusNode;
  TextEditingController? passWordTextController;
  String? Function(BuildContext, String?)? passWordTextControllerValidator;
  // State field(s) for userID widget.
  FocusNode? userIDFocusNode;
  TextEditingController? userIDTextController;
  String? Function(BuildContext, String?)? userIDTextControllerValidator;
  // State field(s) for createdTime widget.
  FocusNode? createdTimeFocusNode;
  TextEditingController? createdTimeTextController;
  String? Function(BuildContext, String?)? createdTimeTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    phoneNumberFocusNode?.dispose();
    phoneNumberTextController?.dispose();

    passWordFocusNode?.dispose();
    passWordTextController?.dispose();

    userIDFocusNode?.dispose();
    userIDTextController?.dispose();

    createdTimeFocusNode?.dispose();
    createdTimeTextController?.dispose();
  }
}
