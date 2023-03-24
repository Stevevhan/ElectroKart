import '/auth/auth_util.dart';
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

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for inputProductName widget.
  TextEditingController? inputProductNameController;
  String? Function(BuildContext, String?)? inputProductNameControllerValidator;
  // State field(s) for statusDropDown widget.
  String? statusDropDownValue;
  FormFieldController<String>? statusDropDownController;
  // State field(s) for conditionDropDown widget.
  String? conditionDropDownValue;
  FormFieldController<String>? conditionDropDownController;
  // State field(s) for CategoryDropDown widget.
  String? categoryDropDownValue;
  FormFieldController<String>? categoryDropDownController;
  // State field(s) for ParishDropDown widget.
  String? parishDropDownValue;
  FormFieldController<String>? parishDropDownController;
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
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ProductsRecord? productid;

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
