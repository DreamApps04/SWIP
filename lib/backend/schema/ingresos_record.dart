import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IngresosRecord extends FirestoreRecord {
  IngresosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombreIngreso" field.
  String? _nombreIngreso;
  String get nombreIngreso => _nombreIngreso ?? '';
  bool hasNombreIngreso() => _nombreIngreso != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "monto" field.
  double? _monto;
  double get monto => _monto ?? 0.0;
  bool hasMonto() => _monto != null;

  // "mesIngreso" field.
  String? _mesIngreso;
  String get mesIngreso => _mesIngreso ?? '';
  bool hasMesIngreso() => _mesIngreso != null;

  // "userId" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "numQuincena" field.
  String? _numQuincena;
  String get numQuincena => _numQuincena ?? '';
  bool hasNumQuincena() => _numQuincena != null;

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  void _initializeFields() {
    _nombreIngreso = snapshotData['nombreIngreso'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _monto = castToType<double>(snapshotData['monto']);
    _mesIngreso = snapshotData['mesIngreso'] as String?;
    _userId = snapshotData['userId'] as DocumentReference?;
    _numQuincena = snapshotData['numQuincena'] as String?;
    _fecha = snapshotData['fecha'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ingresos');

  static Stream<IngresosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => IngresosRecord.fromSnapshot(s));

  static Future<IngresosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => IngresosRecord.fromSnapshot(s));

  static IngresosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      IngresosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static IngresosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      IngresosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'IngresosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is IngresosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createIngresosRecordData({
  String? nombreIngreso,
  String? descripcion,
  double? monto,
  String? mesIngreso,
  DocumentReference? userId,
  String? numQuincena,
  DateTime? fecha,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombreIngreso': nombreIngreso,
      'descripcion': descripcion,
      'monto': monto,
      'mesIngreso': mesIngreso,
      'userId': userId,
      'numQuincena': numQuincena,
      'fecha': fecha,
    }.withoutNulls,
  );

  return firestoreData;
}

class IngresosRecordDocumentEquality implements Equality<IngresosRecord> {
  const IngresosRecordDocumentEquality();

  @override
  bool equals(IngresosRecord? e1, IngresosRecord? e2) {
    return e1?.nombreIngreso == e2?.nombreIngreso &&
        e1?.descripcion == e2?.descripcion &&
        e1?.monto == e2?.monto &&
        e1?.mesIngreso == e2?.mesIngreso &&
        e1?.userId == e2?.userId &&
        e1?.numQuincena == e2?.numQuincena &&
        e1?.fecha == e2?.fecha;
  }

  @override
  int hash(IngresosRecord? e) => const ListEquality().hash([
        e?.nombreIngreso,
        e?.descripcion,
        e?.monto,
        e?.mesIngreso,
        e?.userId,
        e?.numQuincena,
        e?.fecha
      ]);

  @override
  bool isValidKey(Object? o) => o is IngresosRecord;
}
