import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AhorrosRecord extends FirestoreRecord {
  AhorrosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombreAhorro" field.
  String? _nombreAhorro;
  String get nombreAhorro => _nombreAhorro ?? '';
  bool hasNombreAhorro() => _nombreAhorro != null;

  // "descripcionAhorro" field.
  String? _descripcionAhorro;
  String get descripcionAhorro => _descripcionAhorro ?? '';
  bool hasDescripcionAhorro() => _descripcionAhorro != null;

  // "montoAhorro" field.
  double? _montoAhorro;
  double get montoAhorro => _montoAhorro ?? 0.0;
  bool hasMontoAhorro() => _montoAhorro != null;

  // "icono" field.
  String? _icono;
  String get icono => _icono ?? '';
  bool hasIcono() => _icono != null;

  // "userId" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  void _initializeFields() {
    _nombreAhorro = snapshotData['nombreAhorro'] as String?;
    _descripcionAhorro = snapshotData['descripcionAhorro'] as String?;
    _montoAhorro = castToType<double>(snapshotData['montoAhorro']);
    _icono = snapshotData['icono'] as String?;
    _userId = snapshotData['userId'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ahorros');

  static Stream<AhorrosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AhorrosRecord.fromSnapshot(s));

  static Future<AhorrosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AhorrosRecord.fromSnapshot(s));

  static AhorrosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AhorrosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AhorrosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AhorrosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AhorrosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AhorrosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAhorrosRecordData({
  String? nombreAhorro,
  String? descripcionAhorro,
  double? montoAhorro,
  String? icono,
  DocumentReference? userId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombreAhorro': nombreAhorro,
      'descripcionAhorro': descripcionAhorro,
      'montoAhorro': montoAhorro,
      'icono': icono,
      'userId': userId,
    }.withoutNulls,
  );

  return firestoreData;
}

class AhorrosRecordDocumentEquality implements Equality<AhorrosRecord> {
  const AhorrosRecordDocumentEquality();

  @override
  bool equals(AhorrosRecord? e1, AhorrosRecord? e2) {
    return e1?.nombreAhorro == e2?.nombreAhorro &&
        e1?.descripcionAhorro == e2?.descripcionAhorro &&
        e1?.montoAhorro == e2?.montoAhorro &&
        e1?.icono == e2?.icono &&
        e1?.userId == e2?.userId;
  }

  @override
  int hash(AhorrosRecord? e) => const ListEquality().hash([
        e?.nombreAhorro,
        e?.descripcionAhorro,
        e?.montoAhorro,
        e?.icono,
        e?.userId
      ]);

  @override
  bool isValidKey(Object? o) => o is AhorrosRecord;
}
