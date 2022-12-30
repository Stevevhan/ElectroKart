import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/empty_list_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class SellersdbWidget extends StatefulWidget {
  const SellersdbWidget({Key? key}) : super(key: key);

  @override
  _SellersdbWidgetState createState() => _SellersdbWidgetState();
}

class _SellersdbWidgetState extends State<SellersdbWidget> {
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

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          context.pushNamed('new_product');
        },
        backgroundColor: Color(0xFF2500FF),
        elevation: 8,
        child: Icon(
          Icons.add,
          color: Color(0xFFF5BC2E),
          size: 30,
        ),
      ),
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        automaticallyImplyLeading: false,
        title: Align(
          alignment: AlignmentDirectional(0, 0),
          child: GradientText(
            'My Ads',
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).title1.override(
                  fontFamily: 'Lato',
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  fontSize: 36,
                ),
            colors: [
              FlutterFlowTheme.of(context).primaryColor,
              FlutterFlowTheme.of(context).secondaryColor
            ],
            gradientDirection: GradientDirection.ltr,
            gradientType: GradientType.linear,
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 10,
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 20, 16, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GradientText(
                      'Manage your Ads here',
                      style: FlutterFlowTheme.of(context).bodyText2.override(
                            fontFamily: 'Poppins',
                            color: Color(0xFFFFCA00),
                            fontSize: 20,
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
              ),
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                      child: StreamBuilder<List<SoldRecord>>(
                        stream: querySoldRecord(
                          parent: currentUserReference,
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
                          List<SoldRecord> listViewSoldRecordList =
                              snapshot.data!;
                          if (listViewSoldRecordList.isEmpty) {
                            return EmptyListWidget(
                              message1: 'No Ads',
                              message2: 'You haven\'t listed any Ads.',
                              buttontext: 'Post Ad',
                            );
                          }
                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            primary: false,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: listViewSoldRecordList.length,
                            itemBuilder: (context, listViewIndex) {
                              final listViewSoldRecord =
                                  listViewSoldRecordList[listViewIndex];
                              return Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16, 0, 16, 8),
                                child: StreamBuilder<ProductsRecord>(
                                  stream: ProductsRecord.getDocument(
                                      listViewSoldRecord.productid!),
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
                                    final menuItemProductsRecord =
                                        snapshot.data!;
                                    return InkWell(
                                      onTap: () async {
                                        context.pushNamed(
                                          'edit_product',
                                          queryParams: {
                                            'productfid': serializeParam(
                                              listViewSoldRecord.productid,
                                              ParamType.DocumentReference,
                                            ),
                                            'thumb': serializeParam(
                                              menuItemProductsRecord.thumb,
                                              ParamType.String,
                                            ),
                                          }.withoutNulls,
                                        );
                                      },
                                      onLongPress: () async {
                                        var confirmDialogResponse =
                                            await showDialog<bool>(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      title: Text('Delete Ad'),
                                                      content: Text(
                                                          'Are you sure you want to delete this Ad?'),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext,
                                                                  false),
                                                          child: Text('Cancel'),
                                                        ),
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext,
                                                                  true),
                                                          child:
                                                              Text('Confirm'),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                ) ??
                                                false;
                                        if (confirmDialogResponse) {
                                          await listViewSoldRecord.reference
                                              .delete();
                                          await menuItemProductsRecord.reference
                                              .delete();
                                        } else {
                                          context.pushNamed(
                                            'sellersdb',
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                                duration:
                                                    Duration(milliseconds: 0),
                                              ),
                                            },
                                          );
                                        }
                                      },
                                      child: Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 3,
                                              color: Color(0x411D2429),
                                              offset: Offset(0, 1),
                                            )
                                          ],
                                          gradient: LinearGradient(
                                            colors: [
                                              FlutterFlowTheme.of(context)
                                                  .primaryColor,
                                              FlutterFlowTheme.of(context)
                                                  .secondaryColor
                                            ],
                                            stops: [0, 1],
                                            begin: AlignmentDirectional(0, -1),
                                            end: AlignmentDirectional(0, 1),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8, 8, 8, 8),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 1, 1, 1),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(6),
                                                  child: Image.network(
                                                    menuItemProductsRecord
                                                        .thumb!,
                                                    width: 80,
                                                    height: 80,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(8, 8, 4, 0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        menuItemProductsRecord
                                                            .name!,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .title3,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 4, 8, 0),
                                                        child: AutoSizeText(
                                                          menuItemProductsRecord
                                                              .desc!
                                                              .maybeHandleOverflow(
                                                                  maxChars: 20),
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText2
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            listViewSoldRecord
                                                                .status!,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 4, 0, 0),
                                                    child: Icon(
                                                      Icons
                                                          .chevron_right_rounded,
                                                      color: Color(0xFF57636C),
                                                      size: 24,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 12, 4, 8),
                                                    child: Text(
                                                      formatNumber(
                                                        menuItemProductsRecord
                                                            .cost!,
                                                        formatType:
                                                            FormatType.custom,
                                                        currency: '',
                                                        format: '',
                                                        locale: '',
                                                      ),
                                                      textAlign: TextAlign.end,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyText1
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            color: Color(
                                                                0xFFFFCA00),
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.bold,
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
                                  },
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
