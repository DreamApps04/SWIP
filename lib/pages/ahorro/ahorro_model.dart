import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'ahorro_widget.dart' show AhorroWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AhorroModel extends FlutterFlowModel<AhorroWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtNomAhorro widget.
  FocusNode? txtNomAhorroFocusNode;
  TextEditingController? txtNomAhorroController;
  String? Function(BuildContext, String?)? txtNomAhorroControllerValidator;
  // State field(s) for txtDescAhorro widget.
  FocusNode? txtDescAhorroFocusNode;
  TextEditingController? txtDescAhorroController;
  String? Function(BuildContext, String?)? txtDescAhorroControllerValidator;
  // State field(s) for txtMonto widget.
  FocusNode? txtMontoFocusNode;
  TextEditingController? txtMontoController;
  String? Function(BuildContext, String?)? txtMontoControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    txtNomAhorroFocusNode?.dispose();
    txtNomAhorroController?.dispose();

    txtDescAhorroFocusNode?.dispose();
    txtDescAhorroController?.dispose();

    txtMontoFocusNode?.dispose();
    txtMontoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
