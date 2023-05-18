import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for emailAddress widget.
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  // State field(s) for password widget.
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  // State field(s) for Display_Name widget.
  TextEditingController? displayNameController;
  String? Function(BuildContext, String?)? displayNameControllerValidator;
  // State field(s) for emailAddress-Create widget.
  TextEditingController? emailAddressCreateController;
  String? Function(BuildContext, String?)?
      emailAddressCreateControllerValidator;
  // State field(s) for phoneNumber-Create widget.
  TextEditingController? phoneNumberCreateController;
  final phoneNumberCreateMask = MaskTextInputFormatter(mask: '(###)###-####');
  String? Function(BuildContext, String?)? phoneNumberCreateControllerValidator;
  // State field(s) for password-Create widget.
  TextEditingController? passwordCreateController;
  late bool passwordCreateVisibility;
  String? Function(BuildContext, String?)? passwordCreateControllerValidator;
  String? _passwordCreateControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 8) {
      return 'Requires at least 8 characters.';
    }

    return null;
  }

  // State field(s) for TOFcheck widget.
  bool? tOFcheckValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordVisibility = false;
    passwordCreateVisibility = false;
    passwordCreateControllerValidator = _passwordCreateControllerValidator;
  }

  void dispose() {
    emailAddressController?.dispose();
    passwordController?.dispose();
    displayNameController?.dispose();
    emailAddressCreateController?.dispose();
    phoneNumberCreateController?.dispose();
    passwordCreateController?.dispose();
  }

  /// Additional helper methods are added here.

}
