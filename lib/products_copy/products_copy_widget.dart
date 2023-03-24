import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_ad_banner.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'products_copy_model.dart';
export 'products_copy_model.dart';

class ProductsCopyWidget extends StatefulWidget {
  const ProductsCopyWidget({Key? key}) : super(key: key);

  @override
  _ProductsCopyWidgetState createState() => _ProductsCopyWidgetState();
}

class _ProductsCopyWidgetState extends State<ProductsCopyWidget> {
  late ProductsCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductsCopyModel());

    _model.searchFieldController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          context.pushNamed(
            'ProductsCopy',
            extra: <String, dynamic>{
              kTransitionInfoKey: TransitionInfo(
                hasTransition: true,
                transitionType: PageTransitionType.fade,
                duration: Duration(milliseconds: 10),
              ),
            },
          );
        },
        backgroundColor: Color(0xFF2500FF),
        elevation: 8.0,
        child: Icon(
          Icons.refresh,
          color: Color(0xFFF5BC2E),
          size: 30.0,
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 382.3,
                  decoration: BoxDecoration(),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(17.0, 35.0, 17.0, 0.0),
                    child: TextFormField(
                      controller: _model.searchFieldController,
                      onChanged: (_) => EasyDebounce.debounce(
                        '_model.searchFieldController',
                        Duration(milliseconds: 500),
                        () => setState(() {}),
                      ),
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: 'Search here...',
                        hintStyle: FlutterFlowTheme.of(context).bodyText2,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF2500FF),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        filled: true,
                        fillColor:
                            FlutterFlowTheme.of(context).primaryBackground,
                        prefixIcon: Icon(
                          Icons.search,
                          color: FlutterFlowTheme.of(context).primaryColor,
                        ),
                        suffixIcon:
                            _model.searchFieldController!.text.isNotEmpty
                                ? InkWell(
                                    onTap: () async {
                                      _model.searchFieldController?.clear();
                                      setState(() {});
                                    },
                                    child: Icon(
                                      Icons.clear,
                                      color: Color(0xFFFFCA00),
                                      size: 22.0,
                                    ),
                                  )
                                : null,
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1,
                      validator: _model.searchFieldControllerValidator
                          .asValidator(context),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FlutterFlowDropDown<String>(
                        controller: _model.dropDownController1 ??=
                            FormFieldController<String>(null),
                        options: [
                          'St. Elizabeth',
                          'Portland',
                          'St. Andrew',
                          'Kingston',
                          'Hanover',
                          'St. James',
                          'Trelawney',
                          'St. Catherine',
                          'St. Ann',
                          'St. Mary',
                          'St. Thomas',
                          'Westmoreland',
                          'Clarendon',
                          'Manchester'
                        ],
                        onChanged: (val) =>
                            setState(() => _model.dropDownValue1 = val),
                        width: 140.0,
                        height: 50.0,
                        textStyle: FlutterFlowTheme.of(context)
                            .bodyText1
                            .override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 12.0,
                            ),
                        hintText: 'Parish...',
                        fillColor:
                            FlutterFlowTheme.of(context).primaryBackground,
                        elevation: 2.0,
                        borderColor: Color(0xFF2500FF),
                        borderWidth: 0.0,
                        borderRadius: 30.0,
                        margin: EdgeInsetsDirectional.fromSTEB(
                            12.0, 4.0, 12.0, 4.0),
                        hidesUnderline: true,
                        isSearchable: false,
                      ),
                      FlutterFlowDropDown<String>(
                        controller: _model.dropDownController2 ??=
                            FormFieldController<String>(null),
                        options: [
                          'Smartphone',
                          'Laptop',
                          'Smartwatch',
                          'Desktop PC',
                          'Game Console',
                          'Accessories',
                          'Other'
                        ],
                        onChanged: (val) =>
                            setState(() => _model.dropDownValue2 = val),
                        width: 140.0,
                        height: 50.0,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                                  fontFamily: 'Poppins',
                                  fontSize: 12.0,
                                ),
                        hintText: 'Category...',
                        fillColor:
                            FlutterFlowTheme.of(context).primaryBackground,
                        elevation: 2.0,
                        borderColor: Color(0xFF2500FF),
                        borderWidth: 0.0,
                        borderRadius: 30.0,
                        margin: EdgeInsetsDirectional.fromSTEB(
                            12.0, 4.0, 12.0, 4.0),
                        hidesUnderline: true,
                        isSearchable: false,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(5.0, 15.0, 5.0, 0.0),
                  child: FlutterFlowAdBanner(
                    width: MediaQuery.of(context).size.width * 1.0,
                    height: 50.0,
                    showsTestAd: true,
                    androidAdUnitID: 'ca-app-pub-4840032926949336/8829177242',
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 1.0,
                        height: MediaQuery.of(context).size.height * 0.7,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Visibility(
                          visible: FFAppState().showFullList,
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 12.0, 0.0, 0.0),
                            child: PagedListView<DocumentSnapshot<Object?>?,
                                ProductsRecord>(
                              pagingController: () {
                                final Query<Object?> Function(Query<Object?>)
                                    queryBuilder =
                                    (productsRecord) => productsRecord
                                        .where('parish',
                                            isEqualTo: _model.dropDownValue1)
                                        .where('Category',
                                            isEqualTo: _model.dropDownValue2)
                                        .orderBy('Cost');
                                if (_model.pagingController != null) {
                                  final query =
                                      queryBuilder(ProductsRecord.collection);
                                  if (query != _model.pagingQuery) {
                                    // The query has changed
                                    _model.pagingQuery = query;
                                    _model.streamSubscriptions
                                        .forEach((s) => s?.cancel());
                                    _model.streamSubscriptions.clear();
                                    _model.pagingController!.refresh();
                                  }
                                  return _model.pagingController!;
                                }

                                _model.pagingController =
                                    PagingController(firstPageKey: null);
                                _model.pagingQuery =
                                    queryBuilder(ProductsRecord.collection);
                                _model.pagingController!
                                    .addPageRequestListener((nextPageMarker) {
                                  queryProductsRecordPage(
                                    queryBuilder: (productsRecord) =>
                                        productsRecord
                                            .where('parish',
                                                isEqualTo:
                                                    _model.dropDownValue1)
                                            .where('Category',
                                                isEqualTo:
                                                    _model.dropDownValue2)
                                            .orderBy('Cost'),
                                    nextPageMarker: nextPageMarker,
                                    pageSize: 50,
                                    isStream: true,
                                  ).then((page) {
                                    _model.pagingController!.appendPage(
                                      page.data,
                                      page.nextPageMarker,
                                    );
                                    final streamSubscription =
                                        page.dataStream?.listen((data) {
                                      data.forEach((item) {
                                        final itemIndexes = _model
                                            .pagingController!.itemList!
                                            .asMap()
                                            .map((k, v) =>
                                                MapEntry(v.reference.id, k));
                                        final index =
                                            itemIndexes[item.reference.id];
                                        final items =
                                            _model.pagingController!.itemList!;
                                        if (index != null) {
                                          items.replaceRange(
                                              index, index + 1, [item]);
                                          _model.pagingController!.itemList = {
                                            for (var item in items)
                                              item.reference: item
                                          }.values.toList();
                                        }
                                      });
                                      setState(() {});
                                    });
                                    _model.streamSubscriptions
                                        .add(streamSubscription);
                                  });
                                });
                                return _model.pagingController!;
                              }(),
                              padding: EdgeInsets.zero,
                              primary: false,
                              shrinkWrap: true,
                              reverse: false,
                              scrollDirection: Axis.vertical,
                              builderDelegate:
                                  PagedChildBuilderDelegate<ProductsRecord>(
                                // Customize what your widget looks like when it's loading the first page.
                                firstPageProgressIndicatorBuilder: (_) =>
                                    Center(
                                  child: SizedBox(
                                    width: 30.0,
                                    height: 30.0,
                                    child: SpinKitDualRing(
                                      color: Color(0xFFFFCA00),
                                      size: 30.0,
                                    ),
                                  ),
                                ),

                                itemBuilder: (context, _, listViewIndex) {
                                  final listViewProductsRecord = _model
                                      .pagingController!
                                      .itemList![listViewIndex];
                                  return Visibility(
                                    visible: functions.showSearchResult(
                                            _model.searchFieldController.text,
                                            listViewProductsRecord.name!) ??
                                        true,
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 8.0),
                                      child: StreamBuilder<List<UsersRecord>>(
                                        stream: queryUsersRecord(
                                          singleRecord: true,
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
                                          List<UsersRecord>
                                              menuItemUsersRecordList =
                                              snapshot.data!;
                                          // Return an empty Container when the item does not exist.
                                          if (snapshot.data!.isEmpty) {
                                            return Container();
                                          }
                                          final menuItemUsersRecord =
                                              menuItemUsersRecordList.isNotEmpty
                                                  ? menuItemUsersRecordList
                                                      .first
                                                  : null;
                                          return InkWell(
                                            onTap: () async {
                                              context.pushNamed(
                                                'product_details',
                                                queryParams: {
                                                  'productfid': serializeParam(
                                                    listViewProductsRecord
                                                        .reference,
                                                    ParamType.DocumentReference,
                                                  ),
                                                }.withoutNulls,
                                              );
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
                                                        .primaryColor,
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryColor
                                                  ],
                                                  stops: [0.0, 1.0],
                                                  begin: AlignmentDirectional(
                                                      0.0, -1.0),
                                                  end: AlignmentDirectional(
                                                      0, 1.0),
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        8.0, 8.0, 8.0, 8.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  1.0,
                                                                  1.0,
                                                                  1.0),
                                                      child: Hero(
                                                        tag:
                                                            listViewProductsRecord
                                                                .thumb!,
                                                        transitionOnUserGestures:
                                                            true,
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      6.0),
                                                          child: Image.network(
                                                            listViewProductsRecord
                                                                .thumb!,
                                                            width: 80.0,
                                                            height: 80.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    8.0,
                                                                    8.0,
                                                                    4.0,
                                                                    0.0),
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
                                                              listViewProductsRecord
                                                                  .name!
                                                                  .maybeHandleOverflow(
                                                                maxChars: 18,
                                                                replacement:
                                                                    '…',
                                                              ),
                                                              maxLines: 1,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .title3
                                                                  .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontSize:
                                                                        16.0,
                                                                  ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          4.0,
                                                                          8.0,
                                                                          0.0),
                                                              child:
                                                                  AutoSizeText(
                                                                listViewProductsRecord
                                                                    .category!
                                                                    .maybeHandleOverflow(
                                                                        maxChars:
                                                                            10),
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
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
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          4.0,
                                                                          8.0,
                                                                          0.0),
                                                              child:
                                                                  AutoSizeText(
                                                                listViewProductsRecord
                                                                    .parish!,
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
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
                                                          CrossAxisAlignment
                                                              .end,
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
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
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
                                                              listViewProductsRecord
                                                                  .cost!,
                                                              formatType:
                                                                  FormatType
                                                                      .custom,
                                                              currency: '',
                                                              format: '',
                                                              locale: '',
                                                            ),
                                                            textAlign:
                                                                TextAlign.end,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: Color(
                                                                      0xFFFFCA00),
                                                                  fontSize:
                                                                      16.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
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
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 1.0,
                      height: 71.6,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
