import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'chatnotice_model.dart';
export 'chatnotice_model.dart';

class ChatnoticeWidget extends StatefulWidget {
  const ChatnoticeWidget({Key? key}) : super(key: key);

  @override
  _ChatnoticeWidgetState createState() => _ChatnoticeWidgetState();
}

class _ChatnoticeWidgetState extends State<ChatnoticeWidget> {
  late ChatnoticeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatnoticeModel());
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
          'Important Notice',
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
                      '📢 Important Notice: Protect Your Information! 🚫🔒\n\n\nDear users,\n\nWe kindly remind you to exercise caution \nwhen using our ElectroKart chat. It is \nessential to avoid sharing sensitive \ninformation that could compromise your \nsafety and security. Here are a few key \npoints to remember:\n\n\n1️⃣    Be mindful of personal details: Please \nrefrain from sharing your full name, \naddress, phone number, or financial \ninformation in the chat. Safeguarding your \nprivacy is crucial.\n\n2️⃣   Stay vigilant against scams: Exercise\n caution when interacting with others. Be \ncautious of requests for money or \npayment through unofficial channels. Meet \nin person at secure, public locations for \ntransactions.\n\n3️⃣   Think twice before clicking: Stay away\n from suspicious links or downloading files\n from unknown sources. These could pose\n risks to your device\'s security.\n\n4️⃣   Report suspicious activity: If you \nencounter any suspicious or potentially \nharmful messages, promptly report them \nto our app administrators. Please refrain \nfrom sharing or forwarding such messages \nto prevent further incidents.\n\n5️⃣   Strengthen your password: Create a \nstrong, unique password for your account\nto prevent unauthorized access. Avoid \nusing easily guessable information.\n\nYour safety is our utmost priority, and we \nappreciate your cooperation in \nmaintaining a secure environment for all \nusers. Should you have any concerns or\nrequire assistance, you can contact us at\nElectroKart876@Gmail.com.\n\nThank you for your attention and\n happy browsing!\n\nBest regards,\nElectroKart\n',
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
