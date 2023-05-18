import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/empty_list_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'sellersdb_model.dart';
export 'sellersdb_model.dart';

class SellersdbWidget extends StatefulWidget {
  const SellersdbWidget({Key? key}) : super(key: key);

  @override
  _SellersdbWidgetState createState() => _SellersdbWidgetState();
}

class _SellersdbWidgetState extends State<SellersdbWidget> {
  late SellersdbModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SellersdbModel());
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () async {
            context.pushNamed('new_product');
          },
          backgroundColor: Color(0xFF2500FF),
          elevation: 8.0,
          label: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                'New Ad',
                style: FlutterFlowTheme.of(context).bodyMedium,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                child: Icon(
                  Icons.add,
                  color: Color(0xFFF5BC2E),
                  size: 30.0,
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          title: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Text(
              'My Ads',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).displaySmall.override(
                    fontFamily: 'Lato',
                    color: FlutterFlowTheme.of(context).primaryText,
                    fontSize: 36.0,
                    fontWeight: FontWeight.w600,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).displaySmallFamily),
                  ),
            ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 10.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 20.0, 16.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GradientText(
                        'Manage your Ads here',
                        style: FlutterFlowTheme.of(context).bodySmall.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodySmallFamily,
                              color: Color(0xFFFFCA00),
                              fontSize: 20.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).bodySmallFamily),
                            ),
                        colors: [
                          FlutterFlowTheme.of(context).primary,
                          FlutterFlowTheme.of(context).secondary
                        ],
                        gradientDirection: GradientDirection.ltr,
                        gradientType: GradientType.linear,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 10.0, 16.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 10.0, 20.0, 10.0),
                        child: FlutterFlowDropDown<String>(
                          controller: _model.dropDownValueController ??=
                              FormFieldController<String>(null),
                          options: [
                            'Available',
                            'Sold',
                            'Sold Out',
                            'Seller is away'
                          ],
                          onChanged: (val) =>
                              setState(() => _model.dropDownValue = val),
                          width: 110.0,
                          height: 40.0,
                          searchHintTextStyle: FlutterFlowTheme.of(context)
                              .bodyLarge
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyLargeFamily,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyLargeFamily),
                              ),
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                color:
                                    FlutterFlowTheme.of(context).primaryBtnText,
                                fontSize: 12.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyMediumFamily),
                              ),
                          hintText: 'Status',
                          searchHintText: 'Search for an item...',
                          fillColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                          elevation: 2.0,
                          borderColor: FlutterFlowTheme.of(context).warning,
                          borderWidth: 0.0,
                          borderRadius: 10.0,
                          margin: EdgeInsetsDirectional.fromSTEB(
                              12.0, 4.0, 12.0, 4.0),
                          hidesUnderline: true,
                          isSearchable: false,
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed(
                            'sellersdb',
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                                duration: Duration(milliseconds: 20),
                              ),
                            },
                          );
                        },
                        text: 'Refresh',
                        icon: Icon(
                          Icons.refresh,
                          color: Color(0xFFFFCA00),
                          size: 15.0,
                        ),
                        options: FFButtonOptions(
                          width: 97.0,
                          height: 40.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .titleSmallFamily,
                                color: Colors.white,
                                fontSize: 13.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .titleSmallFamily),
                              ),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                        child: StreamBuilder<List<SoldRecord>>(
                          stream: querySoldRecord(
                            parent: currentUserReference,
                            queryBuilder: (soldRecord) => soldRecord.where(
                                'status',
                                isEqualTo: _model.dropDownValue),
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
                                      16.0, 0.0, 16.0, 8.0),
                                  child: StreamBuilder<ProductsRecord>(
                                    stream: ProductsRecord.getDocument(
                                        listViewSoldRecord.productid!),
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
                                      final menuItemProductsRecord =
                                          snapshot.data!;
                                      return InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
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
                                                        title:
                                                            Text('Delete Ad'),
                                                        content: Text(
                                                            'Are you sure you want to delete this Ad?'),
                                                        actions: [
                                                          TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    alertDialogContext,
                                                                    false),
                                                            child:
                                                                Text('Cancel'),
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
                                            await menuItemProductsRecord
                                                .reference
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
                                                blurRadius: 3.0,
                                                color: Color(0x411D2429),
                                                offset: Offset(0.0, 1.0),
                                              )
                                            ],
                                            gradient: LinearGradient(
                                              colors: [
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                                FlutterFlowTheme.of(context)
                                                    .secondary
                                              ],
                                              stops: [0.0, 1.0],
                                              begin: AlignmentDirectional(
                                                  0.0, -1.0),
                                              end: AlignmentDirectional(0, 1.0),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8.0, 8.0, 8.0, 8.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 1.0, 1.0, 1.0),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6.0),
                                                    child: Image.network(
                                                      menuItemProductsRecord
                                                          .thumb,
                                                      width: 80.0,
                                                      height: 80.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 8.0,
                                                                4.0, 0.0),
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
                                                              .name
                                                              .maybeHandleOverflow(
                                                            maxChars: 18,
                                                            replacement: '…',
                                                          ),
                                                          maxLines: 1,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .headlineSmall,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      4.0,
                                                                      8.0,
                                                                      0.0),
                                                          child: AutoSizeText(
                                                            menuItemProductsRecord
                                                                .desc
                                                                .maybeHandleOverflow(
                                                              maxChars: 10,
                                                              replacement: '…',
                                                            ),
                                                            textAlign:
                                                                TextAlign.start,
                                                            maxLines: 1,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmallFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodySmallFamily),
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
                                                              menuItemProductsRecord
                                                                  .status,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
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
                                                                  0.0,
                                                                  4.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Icon(
                                                        Icons
                                                            .chevron_right_rounded,
                                                        color:
                                                            Color(0xFF57636C),
                                                        size: 24.0,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  12.0,
                                                                  4.0,
                                                                  8.0),
                                                      child: Text(
                                                        formatNumber(
                                                          menuItemProductsRecord
                                                              .cost,
                                                          formatType:
                                                              FormatType.custom,
                                                          currency: '',
                                                          format: '',
                                                          locale: '',
                                                        ),
                                                        textAlign:
                                                            TextAlign.end,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  color: Color(
                                                                      0xFFFFCA00),
                                                                  fontSize:
                                                                      16.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
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
      ),
    );
  }
}
