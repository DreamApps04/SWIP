import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MovimientosRecord extends FirestoreRecord {
  MovimientosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userId" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "monto" field.
  double? _monto;
  double get monto => _monto ?? 0.0;
  bool hasMonto() => _monto != null;

  void _initializeFields() {
    _userId = snapshotData['userId'] as DocumentReference?;
    _nombre = snapshotData['nombre'] as String?;
    _monto = castToType<double>(snapshotData['monto']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('movimientos');

  static Stream<MovimientosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MovimientosRecord.fromSnapshot(s));

  static Future<MovimientosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MovimientosRecord.fromSnapshot(s));

  static MovimientosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MovimientosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MovimientosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MovimientosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MovimientosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MovimientosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMovimientosRecordData({
  DocumentReference? userId,
  String? nombre,
  double? monto,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userId': userId,
      'nombre': nombre,
      'monto': monto,
    }.withoutNulls,
  );

  return firestoreData;
}

class MovimientosRecordDocumentEquality implements Equality<MovimientosRecord> {
  const MovimientosRecordDocumentEquality();

  @override
  bool equals(MovimientosRecord? e1, MovimientosRecord? e2) {
    return e1?.userId == e2?.userId &&
        e1?.nombre == e2?.nombre &&
        e1?.monto == e2?.monto;
  }

  @override
  int hash(MovimientosRecord? e) =>
      const ListEquality().hash([e?.userId, e?.nombre, e?.monto]);

  @override
  bool isValidKey(Object? o) => o is MovimientosRecord;
}
