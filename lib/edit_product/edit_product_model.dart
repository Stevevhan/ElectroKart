import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditProductModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for inputProductName widget.
  TextEditingController? inputProductNameController;
  String? Function(BuildContext, String?)? inputProductNameControllerValidator;
  // State field(s) for statusDropDown widget.
  String? statusDropDownValue;
  FormFieldController<String>? statusDropDownValueController;
  // State field(s) for conditionDropDown widget.
  String? conditionDropDownValue;
  FormFieldController<String>? conditionDropDownValueController;
  // State field(s) for CategoryDropDown widget.
  String? categoryDropDownValue;
  FormFieldController<String>? categoryDropDownValueController;
  // State field(s) for ParishDropDown widget.
  String? parishDropDownValue;
  FormFieldController<String>? parishDropDownValueController;
  // State field(s) for inputProductDesc widget.
  TextEditingController? inputProductDescController;
  String? Function(BuildContext, String?)? inputProductDescControllerValidator;
  // State field(s) for inputProductCost widget.
  TextEditingController? inputProductCostController;
  String? Function(BuildContext, String?)? inputProductCostControllerValidator;
  // State field(s) for inputProductQuantity widget.
  TextEditingController? inputProductQuantityController;
  String? Function(BuildContext, String?)?
      inputProductQuantityControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    inputProductNameController?.dispose();
    inputProductDescController?.dispose();
    inputProductCostController?.dispose();
    inputProductQuantityController?.dispose();
  }

  /// Additional helper methods are added here.

}
