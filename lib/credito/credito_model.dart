import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'credito_widget.dart' show CreditoWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreditoModel extends FlutterFlowModel<CreditoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for DropMes widget.
  String? dropMesValue;
  FormFieldController<String>? dropMesValueController;
  // State field(s) for DropCategoria widget.
  String? dropCategoriaValue;
  FormFieldController<String>? dropCategoriaValueController;
  // State field(s) for txtNomGasto widget.
  FocusNode? txtNomGastoFocusNode;
  TextEditingController? txtNomGastoController;
  String? Function(BuildContext, String?)? txtNomGastoControllerValidator;
  // State field(s) for txtCuota widget.
  FocusNode? txtCuotaFocusNode;
  TextEditingController? txtCuotaController;
  String? Function(BuildContext, String?)? txtCuotaControllerValidator;
  // State field(s) for txtMonto widget.
  FocusNode? txtMontoFocusNode;
  TextEditingController? txtMontoController;
  String? Function(BuildContext, String?)? txtMontoControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    txtNomGastoFocusNode?.dispose();
    txtNomGastoController?.dispose();

    txtCuotaFocusNode?.dispose();
    txtCuotaController?.dispose();

    txtMontoFocusNode?.dispose();
    txtMontoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
