import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NewProductModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey5 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  final formKey4 = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for inputProductName widget.
  TextEditingController? inputProductNameController;
  String? Function(BuildContext, String?)? inputProductNameControllerValidator;
  String? _inputProductNameControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

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
  String? _inputProductDescControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for inputProductCost widget.
  TextEditingController? inputProductCostController;
  String? Function(BuildContext, String?)? inputProductCostControllerValidator;
  String? _inputProductCostControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for inputProductQuantity widget.
  TextEditingController? inputProductQuantityController;
  String? Function(BuildContext, String?)?
      inputProductQuantityControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ProductsRecord? productid;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    inputProductNameControllerValidator = _inputProductNameControllerValidator;
    inputProductDescControllerValidator = _inputProductDescControllerValidator;
    inputProductCostControllerValidator = _inputProductCostControllerValidator;
  }

  void dispose() {
    inputProductNameController?.dispose();
    inputProductDescController?.dispose();
    inputProductCostController?.dispose();
    inputProductQuantityController?.dispose();
  }

  /// Additional helper methods are added here.

}
