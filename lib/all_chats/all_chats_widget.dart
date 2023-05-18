import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/empty_chat_widget.dart';
import '/flutter_flow/chat/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'all_chats_model.dart';
export 'all_chats_model.dart';

class AllChatsWidget extends StatefulWidget {
  const AllChatsWidget({Key? key}) : super(key: key);

  @override
  _AllChatsWidgetState createState() => _AllChatsWidgetState();
}

class _AllChatsWidgetState extends State<AllChatsWidget> {
  late AllChatsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AllChatsModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          title: Text(
            'All Chats',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Lato',
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 36.0,
                  fontWeight: FontWeight.w600,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).bodyMediumFamily),
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 4.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
            child: StreamBuilder<List<ChatsRecord>>(
              stream: queryChatsRecord(
                queryBuilder: (chatsRecord) => chatsRecord
                    .where('users', arrayContains: currentUserReference)
                    .orderBy('last_message_time', descending: true),
              ),
              builder: (context, snapshot) {
                // Customize what your widget looks like when it's loading.
                if (!snapshot.hasData) {
                  return Center(
                    child: SizedBox(
                      width: 30.0,
                      height: 30.0,
                      child: SpinKitDualRing(
                        color: Color(0xFFFFCA00),
                        size: 30.0,
                      ),
                    ),
                  );
                }
                List<ChatsRecord> listViewChatsRecordList = snapshot.data!;
                if (listViewChatsRecordList.isEmpty) {
                  return EmptyChatWidget(
                    message1: 'No Messages Available',
                    message2: 'Your Conversations Will Show Up Here',
                    buttontext: '1',
                  );
                }
                return ListView.builder(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  itemCount: listViewChatsRecordList.length,
                  itemBuilder: (context, listViewIndex) {
                    final listViewChatsRecord =
                        listViewChatsRecordList[listViewIndex];
                    return StreamBuilder<FFChatInfo>(
                      stream: FFChatManager.instance
                          .getChatInfo(chatRecord: listViewChatsRecord),
                      builder: (context, snapshot) {
                        final chatInfo =
                            snapshot.data ?? FFChatInfo(listViewChatsRecord);
                        return FFChatPreview(
                          onTap: () => context.pushNamed(
                            'chat_page',
                            queryParams: {
                              'chatUser': serializeParam(
                                chatInfo.otherUsers.length == 1
                                    ? chatInfo.otherUsersList.first
                                    : null,
                                ParamType.Document,
                              ),
                              'chatRef': serializeParam(
                                chatInfo.chatRecord.reference,
                                ParamType.DocumentReference,
                              ),
                            }.withoutNulls,
                            extra: <String, dynamic>{
                              'chatUser': chatInfo.otherUsers.length == 1
                                  ? chatInfo.otherUsersList.first
                                  : null,
                            },
                          ),
                          lastChatText: chatInfo.chatPreviewMessage(),
                          lastChatTime: listViewChatsRecord.lastMessageTime,
                          seen: listViewChatsRecord.lastMessageSeenBy!
                              .contains(currentUserReference),
                          title: chatInfo.chatPreviewTitle(),
                          userProfilePic: chatInfo.chatPreviewPic(),
                          color: Color(0xFFEEF0F5),
                          unreadColor: Color(0xFFFFCA00),
                          titleTextStyle: GoogleFonts.getFont(
                            'DM Sans',
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                          ),
                          dateTextStyle: GoogleFonts.getFont(
                            'DM Sans',
                            color: Color(0x73000000),
                            fontWeight: FontWeight.normal,
                            fontSize: 14.0,
                          ),
                          previewTextStyle: GoogleFonts.getFont(
                            'DM Sans',
                            color: Color(0x73000000),
                            fontWeight: FontWeight.normal,
                            fontSize: 14.0,
                          ),
                          contentPadding: EdgeInsetsDirectional.fromSTEB(
                              3.0, 3.0, 3.0, 3.0),
                          borderRadius: BorderRadius.circular(10.0),
                        );
                      },
                    );
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
