import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_ad_banner.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'products_model.dart';
export 'products_model.dart';

class ProductsWidget extends StatefulWidget {
  const ProductsWidget({Key? key}) : super(key: key);

  @override
  _ProductsWidgetState createState() => _ProductsWidgetState();
}

class _ProductsWidgetState extends State<ProductsWidget>
    with TickerProviderStateMixin {
  late ProductsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  final animationsMap = {
    'textOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 1.0,
          end: 1.0,
        ),
      ],
    ),
    'adBannerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductsModel());

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

    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            context.pushNamed(
              'Products',
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
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          title: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 20.0),
            child: InkWell(
              onLongPress: () async {
                context.pushNamed(
                  'Easter_Egg',
                  extra: <String, dynamic>{
                    kTransitionInfoKey: TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.scale,
                      alignment: Alignment.bottomCenter,
                    ),
                  },
                );
              },
              child: Image.asset(
                'assets/images/LogoMakr-6UzfuU.png',
                width: 254.7,
                height: 65.2,
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
          actions: [
            FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              borderWidth: 1.0,
              buttonSize: 60.0,
              fillColor: Color(0x00E0E3E7),
              icon: Icon(
                Icons.search,
                color: Color(0xFFF5BC2E),
                size: 24.0,
              ),
              onPressed: () async {
                context.pushNamed(
                  'searchpage',
                  extra: <String, dynamic>{
                    kTransitionInfoKey: TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.fade,
                    ),
                  },
                );
              },
            ),
          ],
          centerTitle: false,
          elevation: 2.0,
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
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 10.0, 0.0),
                          child: FlutterFlowDropDown<String>(
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
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
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
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 10.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 2.0, 0.0),
                          child: GradientText(
                            'Welcome:',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w800,
                                    ),
                            colors: [
                              FlutterFlowTheme.of(context).primaryColor,
                              FlutterFlowTheme.of(context).secondaryColor
                            ],
                            gradientDirection: GradientDirection.ltr,
                            gradientType: GradientType.linear,
                          ),
                        ),
                        AuthUserStreamWidget(
                          builder: (context) => InkWell(
                            onTap: () async {
                              context.pushNamed('edit_profile');
                            },
                            child: Text(
                              currentUserDisplayName,
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 16.0,
                                  ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 12.0, 20.0, 12.0),
                          child: InkWell(
                            onTap: () async {
                              context.pushNamed(
                                'ProductsCopy',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                  ),
                                },
                              );
                            },
                            child: GradientText(
                              'All Products',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Lexend Deca',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                              colors: [
                                FlutterFlowTheme.of(context).primaryColor,
                                Color(0xFFAB9B00)
                              ],
                              gradientDirection: GradientDirection.ltr,
                              gradientType: GradientType.linear,
                            ),
                          ).animateOnPageLoad(
                              animationsMap['textOnPageLoadAnimation']!),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 352.3,
                          height: 91.1,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 10.0, 10.0, 10.0),
                            child: FlutterFlowAdBanner(
                              showsTestAd: true,
                              androidAdUnitID:
                                  'ca-app-pub-4840032926949336/8829177242',
                            ).animateOnPageLoad(
                                animationsMap['adBannerOnPageLoadAnimation']!),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      StreamBuilder<List<ProductsRecord>>(
                        stream: queryProductsRecord(
                          queryBuilder: (productsRecord) => productsRecord
                              .where('parish',
                                  isEqualTo: _model.dropDownValue1 != ''
                                      ? _model.dropDownValue1
                                      : null)
                              .where('Category',
                                  isEqualTo: _model.dropDownValue2 != ''
                                      ? _model.dropDownValue2
                                      : null),
                          limit: 20,
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
                          List<ProductsRecord> wrapProductsRecordList =
                              snapshot.data!;
                          return Wrap(
                            spacing: 8.0,
                            runSpacing: 8.0,
                            alignment: WrapAlignment.start,
                            crossAxisAlignment: WrapCrossAlignment.start,
                            direction: Axis.horizontal,
                            runAlignment: WrapAlignment.start,
                            verticalDirection: VerticalDirection.down,
                            clipBehavior: Clip.none,
                            children: List.generate(
                                wrapProductsRecordList.length, (wrapIndex) {
                              final wrapProductsRecord =
                                  wrapProductsRecordList[wrapIndex];
                              return Visibility(
                                visible: functions.showSearchResult(
                                        _model.searchFieldController.text,
                                        wrapProductsRecord.name!) ??
                                    true,
                                child: InkWell(
                                  onTap: () async {
                                    context.pushNamed(
                                      'product_details',
                                      queryParams: {
                                        'productfid': serializeParam(
                                          wrapProductsRecord.reference,
                                          ParamType.DocumentReference,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.45,
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 4.0,
                                          color: Color(0x3600000F),
                                          offset: Offset(0.0, 2.0),
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
                                        begin: AlignmentDirectional(0.0, -1.0),
                                        end: AlignmentDirectional(0, 1.0),
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 12.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Hero(
                                                  tag:
                                                      wrapProductsRecord.thumb!,
                                                  transitionOnUserGestures:
                                                      true,
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(0.0),
                                                      bottomRight:
                                                          Radius.circular(0.0),
                                                      topLeft:
                                                          Radius.circular(8.0),
                                                      topRight:
                                                          Radius.circular(8.0),
                                                    ),
                                                    child: Image.network(
                                                      wrapProductsRecord.thumb!,
                                                      width: 100.0,
                                                      height: 110.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 4.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 4.0, 0.0, 0.0),
                                                  child: AutoSizeText(
                                                    wrapProductsRecord.name!
                                                        .maybeHandleOverflow(
                                                            maxChars: 18),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'Lexend Deca',
                                                          color:
                                                              Color(0xFF090F13),
                                                          fontSize: 14.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 4.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 4.0, 0.0, 0.0),
                                                  child: Text(
                                                    wrapProductsRecord.category!
                                                        .maybeHandleOverflow(
                                                            maxChars: 15),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'Lexend Deca',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          fontSize: 10.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 4.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 4.0, 0.0, 0.0),
                                                  child: Text(
                                                    formatNumber(
                                                      wrapProductsRecord.cost!,
                                                      formatType:
                                                          FormatType.custom,
                                                      currency: '',
                                                      format: '',
                                                      locale: '',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText2
                                                        .override(
                                                          fontFamily:
                                                              'Lexend Deca',
                                                          color:
                                                              Color(0xFFFFCA00),
                                                          fontSize: 14.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 2.0, 10.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 4.0, 0.0, 0.0),
                                                  child: Text(
                                                    wrapProductsRecord.parish!
                                                        .maybeHandleOverflow(
                                                            maxChars: 15),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'Lexend Deca',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          fontSize: 10.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 2.0, 10.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 0.0, 0.0, 0.0),
                                                  child: StreamBuilder<
                                                      UsersRecord>(
                                                    stream:
                                                        UsersRecord.getDocument(
                                                            wrapProductsRecord
                                                                .sellerid!),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 30.0,
                                                            height: 30.0,
                                                            child:
                                                                SpinKitDualRing(
                                                              color: Color(
                                                                  0xFFFFCA00),
                                                              size: 30.0,
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      final textUsersRecord =
                                                          snapshot.data!;
                                                      return Text(
                                                        textUsersRecord
                                                            .displayName!,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBtnText,
                                                                  fontSize:
                                                                      14.0,
                                                                ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                                if (wrapProductsRecord
                                                        .sellerid ==
                                                    currentUserReference)
                                                  Icon(
                                                    Icons.post_add,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBtnText,
                                                    size: 24.0,
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ).animateOnPageLoad(animationsMap[
                                    'containerOnPageLoadAnimation']!),
                              );
                            }),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
