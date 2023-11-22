import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'ingresos_widget.dart' show IngresosWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class IngresosModel extends FlutterFlowModel<IngresosWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for DropMes widget.
  String? dropMesValue;
  FormFieldController<String>? dropMesValueController;
  // State field(s) for DropQuincena widget.
  String? dropQuincenaValue;
  FormFieldController<String>? dropQuincenaValueController;
  // State field(s) for txtnomIngreso widget.
  FocusNode? txtnomIngresoFocusNode;
  TextEditingController? txtnomIngresoController;
  String? Function(BuildContext, String?)? txtnomIngresoControllerValidator;
  String? _txtnomIngresoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Nombre de ingreso es requerido';
    }

    return null;
  }

  // State field(s) for txtDescripcion widget.
  FocusNode? txtDescripcionFocusNode;
  TextEditingController? txtDescripcionController;
  String? Function(BuildContext, String?)? txtDescripcionControllerValidator;
  String? _txtDescripcionControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Descripción es requerido';
    }

    return null;
  }

  // State field(s) for txtMonto widget.
  FocusNode? txtMontoFocusNode;
  TextEditingController? txtMontoController;
  String? Function(BuildContext, String?)? txtMontoControllerValidator;
  String? _txtMontoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Monto es requerido';
    }

    return null;
  }

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    txtnomIngresoControllerValidator = _txtnomIngresoControllerValidator;
    txtDescripcionControllerValidator = _txtDescripcionControllerValidator;
    txtMontoControllerValidator = _txtMontoControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    txtnomIngresoFocusNode?.dispose();
    txtnomIngresoController?.dispose();

    txtDescripcionFocusNode?.dispose();
    txtDescripcionController?.dispose();

    txtMontoFocusNode?.dispose();
    txtMontoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
