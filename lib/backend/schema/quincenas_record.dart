import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QuincenasRecord extends FirestoreRecord {
  QuincenasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombreGasto" field.
  String? _nombreGasto;
  String get nombreGasto => _nombreGasto ?? '';
  bool hasNombreGasto() => _nombreGasto != null;

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

  // "numQuincena" field.
  String? _numQuincena;
  String get numQuincena => _numQuincena ?? '';
  bool hasNumQuincena() => _numQuincena != null;

  // "userId" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  void _initializeFields() {
    _nombreGasto = snapshotData['nombreGasto'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _monto = castToType<double>(snapshotData['monto']);
    _mesIngreso = snapshotData['mesIngreso'] as String?;
    _numQuincena = snapshotData['numQuincena'] as String?;
    _userId = snapshotData['userId'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('quincenas');

  static Stream<QuincenasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => QuincenasRecord.fromSnapshot(s));

  static Future<QuincenasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => QuincenasRecord.fromSnapshot(s));

  static QuincenasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      QuincenasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static QuincenasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      QuincenasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'QuincenasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is QuincenasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createQuincenasRecordData({
  String? nombreGasto,
  String? descripcion,
  double? monto,
  String? mesIngreso,
  String? numQuincena,
  DocumentReference? userId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombreGasto': nombreGasto,
      'descripcion': descripcion,
      'monto': monto,
      'mesIngreso': mesIngreso,
      'numQuincena': numQuincena,
      'userId': userId,
    }.withoutNulls,
  );

  return firestoreData;
}

class QuincenasRecordDocumentEquality implements Equality<QuincenasRecord> {
  const QuincenasRecordDocumentEquality();

  @override
  bool equals(QuincenasRecord? e1, QuincenasRecord? e2) {
    return e1?.nombreGasto == e2?.nombreGasto &&
        e1?.descripcion == e2?.descripcion &&
        e1?.monto == e2?.monto &&
        e1?.mesIngreso == e2?.mesIngreso &&
        e1?.numQuincena == e2?.numQuincena &&
        e1?.userId == e2?.userId;
  }

  @override
  int hash(QuincenasRecord? e) => const ListEquality().hash([
        e?.nombreGasto,
        e?.descripcion,
        e?.monto,
        e?.mesIngreso,
        e?.numQuincena,
        e?.userId
      ]);

  @override
  bool isValidKey(Object? o) => o is QuincenasRecord;
}
