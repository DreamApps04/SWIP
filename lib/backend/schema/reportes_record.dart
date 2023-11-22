import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReportesRecord extends FirestoreRecord {
  ReportesRecord._(
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
      FirebaseFirestore.instance.collection('reportes');

  static Stream<ReportesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReportesRecord.fromSnapshot(s));

  static Future<ReportesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReportesRecord.fromSnapshot(s));

  static ReportesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReportesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReportesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReportesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReportesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReportesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReportesRecordData({
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

class ReportesRecordDocumentEquality implements Equality<ReportesRecord> {
  const ReportesRecordDocumentEquality();

  @override
  bool equals(ReportesRecord? e1, ReportesRecord? e2) {
    return e1?.userId == e2?.userId &&
        e1?.nombre == e2?.nombre &&
        e1?.monto == e2?.monto;
  }

  @override
  int hash(ReportesRecord? e) =>
      const ListEquality().hash([e?.userId, e?.nombre, e?.monto]);

  @override
  bool isValidKey(Object? o) => o is ReportesRecord;
}
