import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class EditProfileModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for yourName widget.
  TextEditingController? yourNameController;
  String? Function(BuildContext, String?)? yourNameControllerValidator;
  // State field(s) for youremailaddress widget.
  TextEditingController? youremailaddressController;
  String? Function(BuildContext, String?)? youremailaddressControllerValidator;
  // State field(s) for yourphone widget.
  TextEditingController? yourphoneController;
  final yourphoneMask = MaskTextInputFormatter(mask: '(###) ###-##-##');
  String? Function(BuildContext, String?)? yourphoneControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    yourNameController?.dispose();
    youremailaddressController?.dispose();
    yourphoneController?.dispose();
  }

  /// Additional helper methods are added here.

}
