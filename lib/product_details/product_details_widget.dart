import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:url_launcher/url_launcher.dart';
import 'product_details_model.dart';
export 'product_details_model.dart';

class ProductDetailsWidget extends StatefulWidget {
  const ProductDetailsWidget({
    Key? key,
    this.productfid,
    this.soldfid,
  }) : super(key: key);

  final DocumentReference? productfid;
  final DocumentReference? soldfid;

  @override
  _ProductDetailsWidgetState createState() => _ProductDetailsWidgetState();
}

class _ProductDetailsWidgetState extends State<ProductDetailsWidget>
    with TickerProviderStateMixin {
  late ProductDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'imageOnPageLoadAnimation': AnimationInfo(
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
    'textOnPageLoadAnimation': AnimationInfo(
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
    'buttonOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ShakeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          hz: 10,
          offset: Offset(0.0, 0.0),
          rotation: 0.087,
        ),
      ],
    ),
    'iconButtonOnPageLoadAnimation1': AnimationInfo(
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
    'iconButtonOnPageLoadAnimation2': AnimationInfo(
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
    'iconButtonOnPageLoadAnimation3': AnimationInfo(
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
    _model = createModel(context, () => ProductDetailsModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<ProductsRecord>(
      stream: ProductsRecord.getDocument(widget.productfid!),
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
        final productDetailsProductsRecord = snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            automaticallyImplyLeading: false,
            leading: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              borderWidth: 1.0,
              buttonSize: 60.0,
              icon: Icon(
                Icons.arrow_back_rounded,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 30.0,
              ),
              onPressed: () async {
                context.pop();
              },
            ),
            actions: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 16.0, 8.0),
                child: Container(
                  height: 32.0,
                  decoration: BoxDecoration(
                    color: Color(0x00FFCA00),
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30.0,
                        borderWidth: 1.0,
                        buttonSize: 60.0,
                        icon: Icon(
                          Icons.search,
                          color: Color(0xFFF5BC2E),
                          size: 25.0,
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
                      ).animateOnPageLoad(
                          animationsMap['iconButtonOnPageLoadAnimation1']!),
                      Builder(
                        builder: (context) => FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30.0,
                          borderWidth: 1.0,
                          buttonSize: 60.0,
                          icon: Icon(
                            Icons.share_rounded,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 25.0,
                          ),
                          onPressed: () async {
                            await Share.share(
                              'electrokart://electrokart.com${GoRouter.of(context).location}',
                              sharePositionOrigin:
                                  getWidgetBoundingBox(context),
                            );
                          },
                        ).animateOnPageLoad(
                            animationsMap['iconButtonOnPageLoadAnimation2']!),
                      ),
                      if (productDetailsProductsRecord.sellerid !=
                          currentUserReference)
                        InkWell(
                          onLongPress: () async {
                            context.pushNamed(
                              'cart_page',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                ),
                              },
                            );
                          },
                          child: FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30.0,
                            borderWidth: 1.0,
                            buttonSize: 60.0,
                            icon: Icon(
                              Icons.offline_bolt_outlined,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 25.0,
                            ),
                            onPressed: () async {
                              FFAppState().update(() {
                                FFAppState().addToCart(widget.productfid!);
                              });
                              await Future.delayed(
                                  const Duration(milliseconds: 1000));
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Added to Favorites',
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                  ),
                                  duration: Duration(milliseconds: 3000),
                                  backgroundColor: Color(0xC00038FF),
                                ),
                              );
                            },
                          ),
                        ).animateOnPageLoad(
                            animationsMap['iconButtonOnPageLoadAnimation3']!),
                    ],
                  ),
                ),
              ),
            ],
            centerTitle: false,
            elevation: 0.0,
          ),
          body: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 8.0, 16.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          height: 230.0,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: InkWell(
                              onTap: () async {
                                await Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.fade,
                                    child: FlutterFlowExpandedImageView(
                                      image: Image.network(
                                        productDetailsProductsRecord.thumb!,
                                        fit: BoxFit.contain,
                                      ),
                                      allowRotation: false,
                                      tag: productDetailsProductsRecord.thumb!,
                                      useHeroAnimation: true,
                                    ),
                                  ),
                                );
                              },
                              child: Hero(
                                tag: productDetailsProductsRecord.thumb!,
                                transitionOnUserGestures: true,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(16.0),
                                  child: Image.network(
                                    productDetailsProductsRecord.thumb!,
                                    width: double.infinity,
                                    height: double.infinity,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ).animateOnPageLoad(
                                animationsMap['imageOnPageLoadAnimation']!),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 12.0, 0.0, 0.0),
                        child: Text(
                          productDetailsProductsRecord.name!,
                          style: FlutterFlowTheme.of(context).title1.override(
                                fontFamily: 'Montserrat',
                              ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: Container(
                              width: double.infinity,
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              child: ExpandableNotifier(
                                initialExpanded: false,
                                child: ExpandablePanel(
                                  header: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        4.0, 15.0, 0.0, 0.0),
                                    child: Text(
                                      'Description',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Montserrat',
                                            fontSize: 16.0,
                                          ),
                                    ),
                                  ),
                                  collapsed: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 5.0, 0.0, 0.0),
                                    child: Container(
                                      width: 340.6,
                                      decoration: BoxDecoration(
                                        color: Color(0x1E95A1AC),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            15.0, 10.0, 0.0, 10.0),
                                        child: Text(
                                          productDetailsProductsRecord.desc!,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText2,
                                        ),
                                      ),
                                    ),
                                  ),
                                  expanded: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText2,
                                      ),
                                    ],
                                  ),
                                  theme: ExpandableThemeData(
                                    tapHeaderToExpand: false,
                                    tapBodyToExpand: false,
                                    tapBodyToCollapse: false,
                                    headerAlignment:
                                        ExpandablePanelHeaderAlignment.center,
                                    hasIcon: false,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 5.0),
                        child: Text(
                          'About this item',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 16.0,
                                  ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 340.6,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: Color(0x1E95A1AC),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 5.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 4.0, 0.0, 0.0),
                                        child: Text(
                                          'Category: ${productDetailsProductsRecord.category}',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText2,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 5.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 4.0, 0.0, 0.0),
                                        child: StreamBuilder<List<SoldRecord>>(
                                          stream: querySoldRecord(
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
                                            List<SoldRecord>
                                                textSoldRecordList =
                                                snapshot.data!;
                                            // Return an empty Container when the item does not exist.
                                            if (snapshot.data!.isEmpty) {
                                              return Container();
                                            }
                                            final textSoldRecord =
                                                textSoldRecordList.isNotEmpty
                                                    ? textSoldRecordList.first
                                                    : null;
                                            return Text(
                                              'Quantity: ${productDetailsProductsRecord.quantity?.toString()}',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText2,
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 5.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 4.0, 0.0, 0.0),
                                        child: StreamBuilder<List<SoldRecord>>(
                                          stream: querySoldRecord(
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
                                            List<SoldRecord>
                                                textSoldRecordList =
                                                snapshot.data!;
                                            // Return an empty Container when the item does not exist.
                                            if (snapshot.data!.isEmpty) {
                                              return Container();
                                            }
                                            final textSoldRecord =
                                                textSoldRecordList.isNotEmpty
                                                    ? textSoldRecordList.first
                                                    : null;
                                            return GradientText(
                                              'Status: ${productDetailsProductsRecord.status}',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText2,
                                              colors: [
                                                FlutterFlowTheme.of(context)
                                                    .primaryColor,
                                                FlutterFlowTheme.of(context)
                                                    .secondaryColor
                                              ],
                                              gradientDirection:
                                                  GradientDirection.ltr,
                                              gradientType: GradientType.linear,
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
                        ],
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 5.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'Seller Information',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 16.0,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 340.7,
                              height: 106.2,
                              decoration: BoxDecoration(
                                color: Color(0x1E95A1AC),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 8.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        StreamBuilder<UsersRecord>(
                                          stream: UsersRecord.getDocument(
                                              productDetailsProductsRecord
                                                  .sellerid!),
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
                                            final textUsersRecord =
                                                snapshot.data!;
                                            return GradientText(
                                              'Seller: ${textUsersRecord.displayName}',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            'Montserrat',
                                                        fontSize: 16.0,
                                                      ),
                                              colors: [
                                                FlutterFlowTheme.of(context)
                                                    .primaryColor,
                                                FlutterFlowTheme.of(context)
                                                    .secondaryColor
                                              ],
                                              gradientDirection:
                                                  GradientDirection.ltr,
                                              gradientType: GradientType.linear,
                                            );
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 5.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'Parish: ${productDetailsProductsRecord.parish}',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Montserrat',
                                                fontSize: 16.0,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 5.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        StreamBuilder<UsersRecord>(
                                          stream: UsersRecord.getDocument(
                                              productDetailsProductsRecord
                                                  .sellerid!),
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
                                            final textUsersRecord =
                                                snapshot.data!;
                                            return GradientText(
                                              'Joined: ${dateTimeFormat('yMMMd', textUsersRecord.createdTime)}',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            'Montserrat',
                                                        fontSize: 14.0,
                                                      ),
                                              colors: [
                                                FlutterFlowTheme.of(context)
                                                    .alternate,
                                                FlutterFlowTheme.of(context)
                                                    .tertiaryColor
                                              ],
                                              gradientDirection:
                                                  GradientDirection.ltr,
                                              gradientType: GradientType.linear,
                                            );
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 5.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        StreamBuilder<UsersRecord>(
                                          stream: UsersRecord.getDocument(
                                              productDetailsProductsRecord
                                                  .sellerid!),
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
                                            final textUsersRecord =
                                                snapshot.data!;
                                            return InkWell(
                                              onTap: () async {
                                                await launchUrl(Uri(
                                                  scheme: 'tel',
                                                  path: textUsersRecord
                                                      .phoneNumber!,
                                                ));
                                              },
                                              child: GradientText(
                                                'Phone: ${textUsersRecord.phoneNumber}',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          fontSize: 16.0,
                                                        ),
                                                colors: [
                                                  FlutterFlowTheme.of(context)
                                                      .tertiaryColor,
                                                  FlutterFlowTheme.of(context)
                                                      .alternate
                                                ],
                                                gradientDirection:
                                                    GradientDirection.ltr,
                                                gradientType:
                                                    GradientType.linear,
                                              ),
                                            );
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 15.0, 0.0, 30.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15.0, 0.0, 0.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  context.pushNamed('Report');
                                },
                                text: 'REPORT',
                                icon: Icon(
                                  Icons.flag_rounded,
                                  size: 15.0,
                                ),
                                options: FFButtonOptions(
                                  width: 130.0,
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).alternate,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                      ),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 1.0,
                        height: MediaQuery.of(context).size.height * 0.5,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 1.0,
                          height: MediaQuery.of(context).size.height * 1.0,
                          decoration: BoxDecoration(),
                          child: DefaultTabController(
                            length: 2,
                            initialIndex: 0,
                            child: Column(
                              children: [
                                TabBar(
                                  labelColor: Color(0xFFFFCA00),
                                  unselectedLabelColor: Color(0x4B95A1AC),
                                  labelStyle:
                                      FlutterFlowTheme.of(context).bodyText1,
                                  indicatorColor: FlutterFlowTheme.of(context)
                                      .secondaryColor,
                                  tabs: [
                                    Tab(
                                      text: 'Other Ads by Seller',
                                    ),
                                    Tab(
                                      text: 'Related Items',
                                    ),
                                  ],
                                ),
                                Expanded(
                                  child: TabBarView(
                                    children: [
                                      KeepAliveWidgetWrapper(
                                        builder: (context) => Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              1.0,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              1.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 12.0, 0.0, 0.0),
                                            child: StreamBuilder<
                                                List<ProductsRecord>>(
                                              stream: queryProductsRecord(
                                                queryBuilder: (productsRecord) =>
                                                    productsRecord.where(
                                                        'sellerid',
                                                        isEqualTo:
                                                            productDetailsProductsRecord
                                                                .sellerid),
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 30.0,
                                                      height: 30.0,
                                                      child: SpinKitDualRing(
                                                        color:
                                                            Color(0xFFFFCA00),
                                                        size: 30.0,
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<ProductsRecord>
                                                    listViewProductsRecordList =
                                                    snapshot.data!;
                                                return ListView.builder(
                                                  padding: EdgeInsets.zero,
                                                  primary: false,
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  itemCount:
                                                      listViewProductsRecordList
                                                          .length,
                                                  itemBuilder:
                                                      (context, listViewIndex) {
                                                    final listViewProductsRecord =
                                                        listViewProductsRecordList[
                                                            listViewIndex];
                                                    return Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  0.0,
                                                                  16.0,
                                                                  8.0),
                                                      child: StreamBuilder<
                                                          List<UsersRecord>>(
                                                        stream:
                                                            queryUsersRecord(
                                                          singleRecord: true,
                                                        ),
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
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
                                                          List<UsersRecord>
                                                              menuItemUsersRecordList =
                                                              snapshot.data!;
                                                          // Return an empty Container when the item does not exist.
                                                          if (snapshot
                                                              .data!.isEmpty) {
                                                            return Container();
                                                          }
                                                          final menuItemUsersRecord =
                                                              menuItemUsersRecordList
                                                                      .isNotEmpty
                                                                  ? menuItemUsersRecordList
                                                                      .first
                                                                  : null;
                                                          return InkWell(
                                                            onTap: () async {
                                                              context.pushNamed(
                                                                'product_details',
                                                                queryParams: {
                                                                  'productfid':
                                                                      serializeParam(
                                                                    listViewProductsRecord
                                                                        .reference,
                                                                    ParamType
                                                                        .DocumentReference,
                                                                  ),
                                                                }.withoutNulls,
                                                              );
                                                            },
                                                            child: Container(
                                                              width: double
                                                                  .infinity,
                                                              decoration:
                                                                  BoxDecoration(
                                                                boxShadow: [
                                                                  BoxShadow(
                                                                    blurRadius:
                                                                        3.0,
                                                                    color: Color(
                                                                        0x411D2429),
                                                                    offset:
                                                                        Offset(
                                                                            0.0,
                                                                            1.0),
                                                                  )
                                                                ],
                                                                gradient:
                                                                    LinearGradient(
                                                                  colors: [
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryColor,
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryColor
                                                                  ],
                                                                  stops: [
                                                                    0.0,
                                                                    1.0
                                                                  ],
                                                                  begin:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          -1.0),
                                                                  end:
                                                                      AlignmentDirectional(
                                                                          0,
                                                                          1.0),
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            8.0,
                                                                            8.0,
                                                                            8.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          1.0,
                                                                          1.0,
                                                                          1.0),
                                                                      child:
                                                                          ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(6.0),
                                                                        child: Image
                                                                            .network(
                                                                          listViewProductsRecord
                                                                              .thumb!,
                                                                          width:
                                                                              80.0,
                                                                          height:
                                                                              80.0,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Expanded(
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            8.0,
                                                                            8.0,
                                                                            4.0,
                                                                            0.0),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Text(
                                                                              listViewProductsRecord.name!.maybeHandleOverflow(
                                                                                maxChars: 18,
                                                                                replacement: '…',
                                                                              ),
                                                                              maxLines: 1,
                                                                              style: FlutterFlowTheme.of(context).title3.override(
                                                                                    fontFamily: 'Poppins',
                                                                                    fontSize: 16.0,
                                                                                  ),
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 8.0, 0.0),
                                                                              child: AutoSizeText(
                                                                                listViewProductsRecord.category!.maybeHandleOverflow(maxChars: 10),
                                                                                textAlign: TextAlign.start,
                                                                                style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                      fontFamily: 'Poppins',
                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 8.0, 0.0),
                                                                              child: AutoSizeText(
                                                                                listViewProductsRecord.parish!,
                                                                                textAlign: TextAlign.start,
                                                                                style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                      fontFamily: 'Poppins',
                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .end,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              4.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Icon(
                                                                            Icons.chevron_right_rounded,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              12.0,
                                                                              4.0,
                                                                              8.0),
                                                                          child:
                                                                              Text(
                                                                            formatNumber(
                                                                              listViewProductsRecord.cost!,
                                                                              formatType: FormatType.custom,
                                                                              currency: '',
                                                                              format: '',
                                                                              locale: '',
                                                                            ),
                                                                            textAlign:
                                                                                TextAlign.end,
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: Color(0xFFFFCA00),
                                                                                  fontSize: 16.0,
                                                                                  fontWeight: FontWeight.bold,
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
                                        ),
                                      ),
                                      KeepAliveWidgetWrapper(
                                        builder: (context) => Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 12.0, 0.0, 0.0),
                                          child: PagedListView<
                                              DocumentSnapshot<Object?>?,
                                              ProductsRecord>(
                                            pagingController: () {
                                              final Query<Object?> Function(
                                                      Query<Object?>)
                                                  queryBuilder =
                                                  (productsRecord) =>
                                                      productsRecord.where(
                                                          'Category',
                                                          isEqualTo:
                                                              productDetailsProductsRecord
                                                                  .category);
                                              if (_model.pagingController !=
                                                  null) {
                                                final query = queryBuilder(
                                                    ProductsRecord.collection);
                                                if (query !=
                                                    _model.pagingQuery) {
                                                  // The query has changed
                                                  _model.pagingQuery = query;
                                                  _model.streamSubscriptions
                                                      .forEach(
                                                          (s) => s?.cancel());
                                                  _model.streamSubscriptions
                                                      .clear();
                                                  _model.pagingController!
                                                      .refresh();
                                                }
                                                return _model.pagingController!;
                                              }

                                              _model.pagingController =
                                                  PagingController(
                                                      firstPageKey: null);
                                              _model.pagingQuery = queryBuilder(
                                                  ProductsRecord.collection);
                                              _model.pagingController!
                                                  .addPageRequestListener(
                                                      (nextPageMarker) {
                                                queryProductsRecordPage(
                                                  queryBuilder: (productsRecord) =>
                                                      productsRecord.where(
                                                          'Category',
                                                          isEqualTo:
                                                              productDetailsProductsRecord
                                                                  .category),
                                                  nextPageMarker:
                                                      nextPageMarker,
                                                  pageSize: 25,
                                                  isStream: true,
                                                ).then((page) {
                                                  _model.pagingController!
                                                      .appendPage(
                                                    page.data,
                                                    page.nextPageMarker,
                                                  );
                                                  final streamSubscription =
                                                      page.dataStream
                                                          ?.listen((data) {
                                                    data.forEach((item) {
                                                      final itemIndexes = _model
                                                          .pagingController!
                                                          .itemList!
                                                          .asMap()
                                                          .map((k, v) =>
                                                              MapEntry(
                                                                  v.reference
                                                                      .id,
                                                                  k));
                                                      final index = itemIndexes[
                                                          item.reference.id];
                                                      final items = _model
                                                          .pagingController!
                                                          .itemList!;
                                                      if (index != null) {
                                                        items.replaceRange(
                                                            index,
                                                            index + 1,
                                                            [item]);
                                                        _model.pagingController!
                                                            .itemList = {
                                                          for (var item
                                                              in items)
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
                                            scrollDirection: Axis.vertical,
                                            builderDelegate:
                                                PagedChildBuilderDelegate<
                                                    ProductsRecord>(
                                              // Customize what your widget looks like when it's loading the first page.
                                              firstPageProgressIndicatorBuilder:
                                                  (_) => Center(
                                                child: SizedBox(
                                                  width: 30.0,
                                                  height: 30.0,
                                                  child: SpinKitDualRing(
                                                    color: Color(0xFFFFCA00),
                                                    size: 30.0,
                                                  ),
                                                ),
                                              ),

                                              itemBuilder:
                                                  (context, _, listViewIndex) {
                                                final listViewProductsRecord =
                                                    _model.pagingController!
                                                            .itemList![
                                                        listViewIndex];
                                                return Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 0.0, 16.0, 8.0),
                                                  child: StreamBuilder<
                                                      List<UsersRecord>>(
                                                    stream: queryUsersRecord(
                                                      singleRecord: true,
                                                    ),
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
                                                      List<UsersRecord>
                                                          menuItemUsersRecordList =
                                                          snapshot.data!
                                                              .where((u) =>
                                                                  u.uid !=
                                                                  currentUserUid)
                                                              .toList();
                                                      // Return an empty Container when the item does not exist.
                                                      if (snapshot
                                                          .data!.isEmpty) {
                                                        return Container();
                                                      }
                                                      final menuItemUsersRecord =
                                                          menuItemUsersRecordList
                                                                  .isNotEmpty
                                                              ? menuItemUsersRecordList
                                                                  .first
                                                              : null;
                                                      return InkWell(
                                                        onTap: () async {
                                                          context.pushNamed(
                                                            'product_details',
                                                            queryParams: {
                                                              'productfid':
                                                                  serializeParam(
                                                                listViewProductsRecord
                                                                    .reference,
                                                                ParamType
                                                                    .DocumentReference,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        },
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          decoration:
                                                              BoxDecoration(
                                                            boxShadow: [
                                                              BoxShadow(
                                                                blurRadius: 3.0,
                                                                color: Color(
                                                                    0x411D2429),
                                                                offset: Offset(
                                                                    0.0, 1.0),
                                                              )
                                                            ],
                                                            gradient:
                                                                LinearGradient(
                                                              colors: [
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryColor,
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryColor
                                                              ],
                                                              stops: [0.0, 1.0],
                                                              begin:
                                                                  AlignmentDirectional(
                                                                      0.0,
                                                                      -1.0),
                                                              end:
                                                                  AlignmentDirectional(
                                                                      0, 1.0),
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8.0,
                                                                        8.0,
                                                                        8.0,
                                                                        8.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          1.0,
                                                                          1.0,
                                                                          1.0),
                                                                  child:
                                                                      ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            6.0),
                                                                    child: Image
                                                                        .network(
                                                                      listViewProductsRecord
                                                                          .thumb!,
                                                                      width:
                                                                          80.0,
                                                                      height:
                                                                          80.0,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            8.0,
                                                                            4.0,
                                                                            0.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
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
                                                                            maxChars:
                                                                                18,
                                                                            replacement:
                                                                                '…',
                                                                          ),
                                                                          maxLines:
                                                                              1,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .title3
                                                                              .override(
                                                                                fontFamily: 'Poppins',
                                                                                fontSize: 16.0,
                                                                              ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              4.0,
                                                                              8.0,
                                                                              0.0),
                                                                          child:
                                                                              AutoSizeText(
                                                                            listViewProductsRecord.category!.maybeHandleOverflow(maxChars: 10),
                                                                            textAlign:
                                                                                TextAlign.start,
                                                                            style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              4.0,
                                                                              8.0,
                                                                              0.0),
                                                                          child:
                                                                              AutoSizeText(
                                                                            listViewProductsRecord.parish!,
                                                                            textAlign:
                                                                                TextAlign.start,
                                                                            style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .end,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          4.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .chevron_right_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          12.0,
                                                                          4.0,
                                                                          8.0),
                                                                      child:
                                                                          Text(
                                                                        formatNumber(
                                                                          listViewProductsRecord
                                                                              .cost!,
                                                                          formatType:
                                                                              FormatType.custom,
                                                                          currency:
                                                                              '',
                                                                          format:
                                                                              '',
                                                                          locale:
                                                                              '',
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.end,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                              fontFamily: 'Poppins',
                                                                              color: Color(0xFFFFCA00),
                                                                              fontSize: 16.0,
                                                                              fontWeight: FontWeight.bold,
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
                                            ),
                                          ),
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
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 7.0,
                      color: Color(0x32000000),
                      offset: Offset(0.0, -2.0),
                    )
                  ],
                  gradient: LinearGradient(
                    colors: [
                      FlutterFlowTheme.of(context).primaryColor,
                      FlutterFlowTheme.of(context).secondaryColor
                    ],
                    stops: [0.0, 1.0],
                    begin: AlignmentDirectional(0.0, -1.0),
                    end: AlignmentDirectional(0, 1.0),
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0),
                    topLeft: Radius.circular(16.0),
                    topRight: Radius.circular(16.0),
                  ),
                ),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                '\$',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      fontSize: 24.0,
                                    ),
                              ),
                              Text(
                                valueOrDefault<String>(
                                  productDetailsProductsRecord.cost?.toString(),
                                  '1',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .title1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                              ).animateOnPageLoad(
                                  animationsMap['textOnPageLoadAnimation']!),
                            ],
                          ),
                        ],
                      ),
                      if (productDetailsProductsRecord.sellerid !=
                          currentUserReference)
                        FFButtonWidget(
                          onPressed: () async {
                            final chatsCreateData = {
                              ...createChatsRecordData(
                                userA: productDetailsProductsRecord.sellerid,
                                userB: currentUserReference,
                                lastMessage:
                                    'Re: ${productDetailsProductsRecord.name}',
                                lastMessageTime: getCurrentTimestamp,
                              ),
                              'users': functions.createChatUserList(
                                  productDetailsProductsRecord.sellerid!,
                                  currentUserReference!),
                            };
                            await ChatsRecord.collection
                                .doc()
                                .set(chatsCreateData);

                            context.pushNamed(
                              'all_chats',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                ),
                              },
                            );
                          },
                          text: 'Inquire Now',
                          icon: Icon(
                            Icons.chat_bubble_outline_rounded,
                            size: 15.0,
                          ),
                          options: FFButtonOptions(
                            width: 150.0,
                            height: 50.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Color(0xFFFFCA00),
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Outfit',
                                      color: Colors.white,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w800,
                                    ),
                            elevation: 3.0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['buttonOnPageLoadAnimation']!),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
