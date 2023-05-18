import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'terms_ofservice_model.dart';
export 'terms_ofservice_model.dart';

class TermsOfserviceWidget extends StatefulWidget {
  const TermsOfserviceWidget({Key? key}) : super(key: key);

  @override
  _TermsOfserviceWidgetState createState() => _TermsOfserviceWidgetState();
}

class _TermsOfserviceWidgetState extends State<TermsOfserviceWidget> {
  late TermsOfserviceModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TermsOfserviceModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30.0,
          borderWidth: 1.0,
          buttonSize: 60.0,
          icon: Icon(
            Icons.arrow_back_ios,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 30.0,
          ),
          onPressed: () async {
            context.pop();
          },
        ),
        title: Text(
          'Please Read',
          style: FlutterFlowTheme.of(context).headlineMedium.override(
                fontFamily: FlutterFlowTheme.of(context).headlineMediumFamily,
                color: FlutterFlowTheme.of(context).primaryText,
                fontSize: 22.0,
                useGoogleFonts: GoogleFonts.asMap().containsKey(
                    FlutterFlowTheme.of(context).headlineMediumFamily),
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2.0,
      ),
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Text(
                      'Terms of Service\n\nThese terms of service (the \"Terms\") \ngovern your use of the ElectroKart app\n (the \"App\") provided by ElectroKart (the\n \"Company\"). By accessing or\n using the App, you agree to be bound by\n these Terms. If you do not agree to\n these Terms, do not use the App.\n\n1.\tEligibility\nYou must be at least 18 years old to use\n the App. By using the App, you\n represent and warrant that you are at\n least 18 years old.\n\n2.\tContent\nThe App allows users to buy and sell\n items within a specific geographic\n region. The Company does not endorse\n any user-generated content and is not\n responsible for the accuracy,\n completeness, safety, legality, or\n intellectual property rights of any such\n content. You are solely responsible for\n your interactions with other users of the\n App.\n\n3.\tUser Conduct\nYou agree not to use the App for any\n unlawful or fraudulent purpose, or to\n engage in any activity that interferes\n with the proper functioning of the App.\n You also agree not to post or transmit\n any content that is obscene,\n pornographic, or otherwise\n inappropriate.\n\n4.\tPurchases\nIf you make a purchase through the App,\n you will be asked to provide certain\n payment and other information. You\n represent and warrant that all such\n information is accurate and that you are\n authorized to use the payment method\n you provide.\n\n5.\tWarranty Disclaimer\nThe App and all content and services\n provided through the App are provided\n on an \"as is\" and \"as available\" basis. The\n Company makes no representations or\n warranties of any kind, express or\n implied, as to the operation of the App\n or the information, content, materials,\n or products included on the App. The\n Company does not warrant that the App\n will be uninterrupted or error-free, and\n the Company will not be liable for any\n interruptions or errors.\n\n6.\tLimitation of Liability\nThe Company will not be liable for any\n damages of any kind arising from the\n use of the App, including but not limited\n to direct, indirect, incidental, punitive,\n and consequential damages.\n\n7.\tGoverning Law\nThese Terms and your use of the App will\n be governed by and construed in\naccordance with the laws of Jamaica\n without giving effect to any principles\n of conflicts of law.\n\n8.\tChanges to These Terms\nThe Company reserves the right to\nchange these Terms at any time and will\npost any revised terms on this page. By\n continuing to use the App after any such\n changes, you accept the revised Terms.\n\nContact Us\nIf you have any questions about these\nTerms, please contact us at:\nElectroKart876@Gmail.com\n\n',
                      maxLines: 1000,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            fontSize: 13.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
