import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'edit_product_model.dart';
export 'edit_product_model.dart';

class EditProductWidget extends StatefulWidget {
  const EditProductWidget({
    Key? key,
    this.productfid,
    this.thumb,
  }) : super(key: key);

  final DocumentReference? productfid;
  final String? thumb;

  @override
  _EditProductWidgetState createState() => _EditProductWidgetState();
}

class _EditProductWidgetState extends State<EditProductWidget> {
  late EditProductModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditProductModel());
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
        final editProductProductsRecord = snapshot.data!;
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
            actions: [],
            centerTitle: false,
            elevation: 0.0,
          ),
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 286.0,
                                height: 51.8,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      FlutterFlowTheme.of(context).primaryColor,
                                      FlutterFlowTheme.of(context)
                                          .secondaryColor
                                    ],
                                    stops: [0.0, 1.0],
                                    begin: AlignmentDirectional(0.0, -1.0),
                                    end: AlignmentDirectional(0, 1.0),
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, -0.05),
                                  child: Text(
                                    'Edit Ad',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFFFFCA00),
                                          fontSize: 35.0,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 8.0, 16.0, 0.0),
                            child: Container(
                              width: double.infinity,
                              height: 230.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(16.0),
                                  child: Image.network(
                                    editProductProductsRecord.thumb!,
                                    width: double.infinity,
                                    height: double.infinity,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                28.0, 30.0, 28.0, 0.0),
                            child: TextFormField(
                              controller: _model.inputProductNameController ??=
                                  TextEditingController(
                                text: editProductProductsRecord.name,
                              ),
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Product Name',
                                labelStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFFFFCA00),
                                    ),
                                hintText: 'Product name...',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .bodyText2
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 14.0,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x004B39EF),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                filled: true,
                                fillColor: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                              style: FlutterFlowTheme.of(context).bodyText1,
                              validator: _model
                                  .inputProductNameControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                28.0, 30.0, 0.0, 0.0),
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
                                List<SoldRecord> statusDropDownSoldRecordList =
                                    snapshot.data!;
                                // Return an empty Container when the item does not exist.
                                if (snapshot.data!.isEmpty) {
                                  return Container();
                                }
                                final statusDropDownSoldRecord =
                                    statusDropDownSoldRecordList.isNotEmpty
                                        ? statusDropDownSoldRecordList.first
                                        : null;
                                return FlutterFlowDropDown<String>(
                                  controller:
                                      _model.statusDropDownController ??=
                                          FormFieldController<String>(
                                    _model.statusDropDownValue ??=
                                        editProductProductsRecord.status,
                                  ),
                                  options: [
                                    'Available',
                                    'Sold',
                                    'Sold Out',
                                    'Seller is away'
                                  ],
                                  onChanged: (val) => setState(
                                      () => _model.statusDropDownValue = val),
                                  width: 180.0,
                                  height: 50.0,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFF4E5153),
                                      ),
                                  hintText: 'Product category..',
                                  fillColor: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  elevation: 2.0,
                                  borderColor: Color(0x004B39EF),
                                  borderWidth: 1.0,
                                  borderRadius: 5.0,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 4.0, 12.0, 4.0),
                                  hidesUnderline: true,
                                  isSearchable: false,
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                28.0, 30.0, 0.0, 0.0),
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
                                    conditionDropDownSoldRecordList =
                                    snapshot.data!;
                                // Return an empty Container when the item does not exist.
                                if (snapshot.data!.isEmpty) {
                                  return Container();
                                }
                                final conditionDropDownSoldRecord =
                                    conditionDropDownSoldRecordList.isNotEmpty
                                        ? conditionDropDownSoldRecordList.first
                                        : null;
                                return FlutterFlowDropDown<String>(
                                  controller:
                                      _model.conditionDropDownController ??=
                                          FormFieldController<String>(
                                    _model.conditionDropDownValue ??=
                                        editProductProductsRecord.condition,
                                  ),
                                  options: [
                                    'Used',
                                    'New',
                                    'Like New',
                                    'For Parts/Repair'
                                  ],
                                  onChanged: (val) => setState(() =>
                                      _model.conditionDropDownValue = val),
                                  width: 180.0,
                                  height: 50.0,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFF4E5153),
                                      ),
                                  hintText: 'Condition...',
                                  fillColor: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  elevation: 2.0,
                                  borderColor: Color(0x004B39EF),
                                  borderWidth: 1.0,
                                  borderRadius: 5.0,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 4.0, 12.0, 4.0),
                                  hidesUnderline: true,
                                  isSearchable: false,
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                28.0, 30.0, 0.0, 0.0),
                            child: FlutterFlowDropDown<String>(
                              controller: _model.categoryDropDownController ??=
                                  FormFieldController<String>(
                                _model.categoryDropDownValue ??=
                                    editProductProductsRecord.category,
                              ),
                              options: [
                                'Smartphone',
                                'Laptop',
                                'Smartwatch',
                                'Desktop PC',
                                'Game Console',
                                'Accessories',
                                'Other'
                              ],
                              onChanged: (val) => setState(
                                  () => _model.categoryDropDownValue = val),
                              width: 180.0,
                              height: 50.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF4E5153),
                                  ),
                              hintText: 'Product category..',
                              fillColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              elevation: 2.0,
                              borderColor: Color(0x004B39EF),
                              borderWidth: 1.0,
                              borderRadius: 5.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 4.0, 12.0, 4.0),
                              hidesUnderline: true,
                              isSearchable: false,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                28.0, 30.0, 0.0, 0.0),
                            child: FlutterFlowDropDown<String>(
                              controller: _model.parishDropDownController ??=
                                  FormFieldController<String>(
                                _model.parishDropDownValue ??=
                                    editProductProductsRecord.parish,
                              ),
                              options: [
                                'St. Elizabeth',
                                'St. Ann',
                                'St. Andrew',
                                'Kingston',
                                'St. Mary',
                                'Trelawney',
                                'Westmoreland',
                                'Hanover',
                                'St. Thomas',
                                'St. James',
                                'St. Catherine',
                                'Clarendon',
                                'Manchester'
                              ],
                              onChanged: (val) => setState(
                                  () => _model.parishDropDownValue = val),
                              width: 180.0,
                              height: 50.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF4E5153),
                                  ),
                              hintText: 'Product parish..',
                              fillColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              elevation: 2.0,
                              borderColor: Color(0x004B39EF),
                              borderWidth: 1.0,
                              borderRadius: 5.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 4.0, 12.0, 4.0),
                              hidesUnderline: true,
                              isSearchable: false,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                28.0, 30.0, 28.0, 0.0),
                            child: TextFormField(
                              controller: _model.inputProductDescController ??=
                                  TextEditingController(
                                text: editProductProductsRecord.desc,
                              ),
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Description',
                                labelStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFFFFCA00),
                                    ),
                                hintText: 'Product description.....',
                                hintStyle:
                                    FlutterFlowTheme.of(context).bodyText2,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x004B39EF),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                filled: true,
                                fillColor: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                              style: FlutterFlowTheme.of(context).bodyText1,
                              maxLines: 3,
                              validator: _model
                                  .inputProductDescControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                29.0, 20.0, 17.0, 0.0),
                            child: Container(
                              width: 200.0,
                              child: TextFormField(
                                controller:
                                    _model.inputProductCostController ??=
                                        TextEditingController(
                                  text: editProductProductsRecord.cost
                                      ?.toString(),
                                ),
                                autofocus: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Price',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFFAB9B00),
                                      ),
                                  hintText: 'Edit price....',
                                  hintStyle:
                                      FlutterFlowTheme.of(context).bodyText2,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00FFCA00),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  prefixIcon: Icon(
                                    Icons.attach_money_sharp,
                                    color: Color(0xFFAB9B00),
                                  ),
                                ),
                                style: FlutterFlowTheme.of(context).bodyText1,
                                keyboardType: TextInputType.number,
                                validator: _model
                                    .inputProductCostControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                29.0, 20.0, 17.0, 0.0),
                            child: Container(
                              width: 200.0,
                              child: TextFormField(
                                controller:
                                    _model.inputProductQuantityController ??=
                                        TextEditingController(
                                  text: editProductProductsRecord.quantity
                                      ?.toString(),
                                ),
                                autofocus: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Quantity',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFFAB9B00),
                                      ),
                                  hintText: 'Quantity....',
                                  hintStyle:
                                      FlutterFlowTheme.of(context).bodyText2,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00FFCA00),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                ),
                                style: FlutterFlowTheme.of(context).bodyText1,
                                keyboardType: TextInputType.number,
                                validator: _model
                                    .inputProductQuantityControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 0.0, 30.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 20.0, 30.0, 12.0),
                                  child: StreamBuilder<UsersRecord>(
                                    stream: UsersRecord.getDocument(
                                        editProductProductsRecord.sellerid!),
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
                                      final textUsersRecord = snapshot.data!;
                                      return Text(
                                        'Seller: ${textUsersRecord.displayName}',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ListView(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            children: [],
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
                      padding: EdgeInsetsDirectional.fromSTEB(
                          16.0, 16.0, 16.0, 16.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          StreamBuilder<List<SoldRecord>>(
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
                              List<SoldRecord> buttonSoldRecordList =
                                  snapshot.data!;
                              // Return an empty Container when the item does not exist.
                              if (snapshot.data!.isEmpty) {
                                return Container();
                              }
                              final buttonSoldRecord =
                                  buttonSoldRecordList.isNotEmpty
                                      ? buttonSoldRecordList.first
                                      : null;
                              return FFButtonWidget(
                                onPressed: () async {
                                  final productsUpdateData =
                                      createProductsRecordData(
                                    name:
                                        _model.inputProductNameController.text,
                                    category: _model.categoryDropDownValue,
                                    thumb: widget.thumb,
                                    desc:
                                        _model.inputProductDescController.text,
                                    cost: int.tryParse(
                                        _model.inputProductCostController.text),
                                    parish: _model.parishDropDownValue,
                                    status: _model.statusDropDownValue,
                                    quantity: int.tryParse(_model
                                        .inputProductQuantityController.text),
                                    condition: _model.conditionDropDownValue,
                                  );
                                  await editProductProductsRecord.reference
                                      .update(productsUpdateData);

                                  final soldUpdateData = createSoldRecordData(
                                    status: _model.statusDropDownValue,
                                  );
                                  await buttonSoldRecord!.reference
                                      .update(soldUpdateData);
                                  context.pop();
                                },
                                text: 'SAVE',
                                options: FFButtonOptions(
                                  width: 120.0,
                                  height: 50.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: Color(0xFFFFCA00),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Outfit',
                                        color: Colors.white,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                  elevation: 3.0,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
