import '../backend/backend.dart';
import '../flutter_flow/chat/index.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class ChatPageWidget extends StatefulWidget {
  const ChatPageWidget({
    Key? key,
    this.chatUser,
    this.chatRef,
  }) : super(key: key);

  final UsersRecord? chatUser;
  final DocumentReference? chatRef;

  @override
  _ChatPageWidgetState createState() => _ChatPageWidgetState();
}

class _ChatPageWidgetState extends State<ChatPageWidget> {
  FFChatInfo? _chatInfo;
  bool isGroupChat() {
    if (widget.chatUser == null) {
      return true;
    }
    if (widget.chatRef == null) {
      return false;
    }
    return _chatInfo?.isGroupChat ?? false;
  }

  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    FFChatManager.instance
        .getChatInfo(
      otherUserRecord: widget.chatUser,
      chatReference: widget.chatRef,
    )
        .listen((info) {
      if (mounted) {
        setState(() => _chatInfo = info);
      }
    });
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 24,
          ),
          onPressed: () async {
            context.pop();
          },
        ),
        title: Stack(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    GradientText(
                      widget.chatUser!.displayName!,
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Lato',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontSize: 16,
                          ),
                      colors: [
                        FlutterFlowTheme.of(context).primaryColor,
                        FlutterFlowTheme.of(context).secondaryColor
                      ],
                      gradientDirection: GradientDirection.ltr,
                      gradientType: GradientType.linear,
                    ),
                  ],
                ),
                InkWell(
                  onTap: () async {
                    var confirmDialogResponse = await showDialog<bool>(
                          context: context,
                          builder: (alertDialogContext) {
                            return AlertDialog(
                              title: Text('Delete Chat'),
                              content: Text(
                                  'Are you sure you want to delete this chat? Chat will also be deleted for recipient.'),
                              actions: [
                                TextButton(
                                  onPressed: () =>
                                      Navigator.pop(alertDialogContext, false),
                                  child: Text('Cancel'),
                                ),
                                TextButton(
                                  onPressed: () =>
                                      Navigator.pop(alertDialogContext, true),
                                  child: Text('Confirm'),
                                ),
                              ],
                            );
                          },
                        ) ??
                        false;
                    if (confirmDialogResponse) {
                      await widget.chatRef!.delete();

                      context.pushNamed('all_chats');
                    }
                  },
                  child: Icon(
                    Icons.delete,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 24,
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: StreamBuilder<FFChatInfo>(
            stream: FFChatManager.instance.getChatInfo(
              otherUserRecord: widget.chatUser,
              chatReference: widget.chatRef,
            ),
            builder: (context, snapshot) => snapshot.hasData
                ? FFChatPage(
                    chatInfo: snapshot.data!,
                    allowImages: true,
                    backgroundColor: Color(0xFFF2F4F8),
                    timeDisplaySetting: TimeDisplaySetting.visibleOnTap,
                    currentUserBoxDecoration: BoxDecoration(
                      color: Color(0xFFFFCA00),
                      border: Border.all(
                        color: Colors.transparent,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    otherUsersBoxDecoration: BoxDecoration(
                      color: Color(0xFF4B39EF),
                      border: Border.all(
                        color: Colors.transparent,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    currentUserTextStyle: GoogleFonts.getFont(
                      'DM Sans',
                      color: Color(0xFF1E2429),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      fontStyle: FontStyle.normal,
                    ),
                    otherUsersTextStyle: GoogleFonts.getFont(
                      'DM Sans',
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                    inputHintTextStyle: GoogleFonts.getFont(
                      'DM Sans',
                      color: Color(0xFF95A1AC),
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                    ),
                    inputTextStyle: GoogleFonts.getFont(
                      'DM Sans',
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                    ),
                    emptyChatWidget: Image.asset(
                      'assets/images/messagesEmpty@2x.png',
                      width: MediaQuery.of(context).size.width * 0.76,
                    ),
                  )
                : Center(
                    child: SizedBox(
                      width: 20,
                      height: 20,
                      child: SpinKitCubeGrid(
                        color: Color(0xFFFFCA00),
                        size: 20,
                      ),
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
