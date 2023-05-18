import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'empty_chat_model.dart';
export 'empty_chat_model.dart';

class EmptyChatWidget extends StatefulWidget {
  const EmptyChatWidget({
    Key? key,
    this.message1,
    this.message2,
    this.buttontext,
  }) : super(key: key);

  final String? message1;
  final String? message2;
  final String? buttontext;

  @override
  _EmptyChatWidgetState createState() => _EmptyChatWidgetState();
}

class _EmptyChatWidgetState extends State<EmptyChatWidget> {
  late EmptyChatModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyChatModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.chat,
          color: Color(0xFF7C8791),
          size: 90.0,
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.message1!,
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).headlineSmall.override(
                      fontFamily: 'Outfit',
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).headlineSmallFamily),
                    ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(12.0, 4.0, 12.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Text(
                  widget.message2!,
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodySmall.override(
                        fontFamily: 'Outfit',
                        color: Color(0xFF7C8791),
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodySmallFamily),
                      ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
