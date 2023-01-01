import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TermsOfserviceCopyWidget extends StatefulWidget {
  const TermsOfserviceCopyWidget({Key? key}) : super(key: key);

  @override
  _TermsOfserviceCopyWidgetState createState() =>
      _TermsOfserviceCopyWidgetState();
}

class _TermsOfserviceCopyWidgetState extends State<TermsOfserviceCopyWidget> {
  bool? checkboxValue;
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void dispose() {
    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<List<TosRecord>>(
      stream: queryTosRecord(
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 20,
              height: 20,
              child: SpinKitCubeGrid(
                color: Color(0xFFFFCA00),
                size: 20,
              ),
            ),
          );
        }
        List<TosRecord> termsOfserviceCopyTosRecordList = snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final termsOfserviceCopyTosRecord =
            termsOfserviceCopyTosRecordList.isNotEmpty
                ? termsOfserviceCopyTosRecordList.first
                : null;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            automaticallyImplyLeading: false,
            leading: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              borderWidth: 1,
              buttonSize: 60,
              icon: Icon(
                Icons.arrow_back_ios,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 30,
              ),
              onPressed: () async {
                context.pop();
              },
            ),
            title: Text(
              'Please Read Carefully',
              style: FlutterFlowTheme.of(context).title2.override(
                    fontFamily: 'Poppins',
                    color: FlutterFlowTheme.of(context).primaryText,
                    fontSize: 22,
                  ),
            ),
            actions: [],
            centerTitle: true,
            elevation: 2,
          ),
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                          child: Text(
                            'Terms of Service\n\nThese terms of service (the \"Terms\") \ngovern your use of the classifieds app\n (the \"App\") provided by [Company\n Name] (the \"Company\"). By accessing or\n using the App, you agree to be bound by\n these Terms. If you do not agree to\n these Terms, do not use the App.\n\n1.\tEligibility\nYou must be at least 18 years old to use\n the App. By using the App, you\n represent and warrant that you are at\n least 18 years old.\n\n2.\tContent\nThe App allows users to buy and sell\n items within a specific geographic\n region. The Company does not endorse\n any user-generated content and is not\n responsible for the accuracy,\n completeness, safety, legality, or\n intellectual property rights of any such\n content. You are solely responsible for\n your interactions with other users of the\n App.\n\n3.\tUser    Conduct\nYou agree not to use the App for any\n unlawful or fraudulent purpose, or to\n engage in any activity that interferes\n with the proper functioning of the App.\n You also agree not to post or transmit\n any content that is obscene,\n pornographic, or otherwise\n inappropriate.\n\n4.\tPurchases\nIf you make a purchase through the App,\n you will be asked to provide certain\n payment and other information. You\n represent and warrant that all such\n information is accurate and that you are\n authorized to use the payment method\n you provide.\n\n5.\tWarranty    Disclaimer\nThe App and all content and services\n provided through the App are provided\n on an \"as is\" and \"as available\" basis. The\n Company makes no representations or\n warranties of any kind, express or\n implied, as to the operation of the App\n or the information, content, materials,\n or products included on the App. The\n Company does not warrant that the App\n will be uninterrupted or error-free, and\n the Company will not be liable for any\n interruptions or errors.\n\n6.\tLimitation    of Liability\nThe Company will not be liable for any\n damages of any kind arising from the\n use of the App, including but not limited\n to direct, indirect, incidental, punitive,\n and consequential damages.\n\n7.\tGoverning     Law\nThese Terms and your use of the App will\n be governed by and construed in\n accordance with the laws of the [State\n/Province] without giving effect to any\n principles of conflicts of law.\n\n8.\tChanges    to These Terms\nThe Company reserves the right to\n change these Terms at any time and wil\nl post any revised terms on this page. By\n continuing to use the App after any such\n changes, you accept the revised Terms.\n\nContact Us\nIf you have any questions about these\n Terms, please contact us at [Contact Email].\n\n',
                            maxLines: 1000,
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                          child: Theme(
                            data: ThemeData(
                              checkboxTheme: CheckboxThemeData(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                              ),
                              unselectedWidgetColor: Color(0xFFF5F5F5),
                            ),
                            child: Checkbox(
                              value: checkboxValue ??=
                                  termsOfserviceCopyTosRecord!.termsofservice!,
                              onChanged: (newValue) async {
                                setState(() => checkboxValue = newValue!);
                              },
                              activeColor:
                                  FlutterFlowTheme.of(context).primaryColor,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                          child: Text(
                            'I\'ve read and agree to these \nTerms Of Service',
                            maxLines: 2,
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                      ],
                    ),
                    if (checkboxValue == false)
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FFButtonWidget(
                              onPressed: checkboxValue == false
                                  ? null
                                  : () async {
                                      final tosUpdateData = createTosRecordData(
                                        termsofservice: checkboxValue,
                                      );
                                      await termsOfserviceCopyTosRecord!
                                          .reference
                                          .update(tosUpdateData);
                                      await Future.delayed(
                                          const Duration(milliseconds: 1000));
                                      context.pop();
                                    },
                              text: 'Update',
                              options: FFButtonOptions(
                                width: 130,
                                height: 40,
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                textStyle: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                    ),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                                disabledColor:
                                    FlutterFlowTheme.of(context).grayIcon,
                              ),
                            ),
                          ],
                        ),
                      ),
                    if (checkboxValue == true)
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'You have agreed to our Terms of Service',
                              style: FlutterFlowTheme.of(context).bodyText1,
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
