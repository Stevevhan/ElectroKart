import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'empty_list_model.dart';
export 'empty_list_model.dart';

class EmptyListWidget extends StatefulWidget {
  const EmptyListWidget({
    Key? key,
    this.message1,
    this.message2,
    this.buttontext,
  }) : super(key: key);

  final String? message1;
  final String? message2;
  final String? buttontext;

  @override
  _EmptyListWidgetState createState() => _EmptyListWidgetState();
}

class _EmptyListWidgetState extends State<EmptyListWidget> {
  late EmptyListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyListModel());
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
          Icons.post_add,
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
                style: FlutterFlowTheme.of(context).title3.override(
                      fontFamily: 'Outfit',
                      color: Color(0xFF090F13),
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
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
                  style: FlutterFlowTheme.of(context).bodyText2.override(
                        fontFamily: 'Outfit',
                        color: Color(0xFF7C8791),
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal,
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
