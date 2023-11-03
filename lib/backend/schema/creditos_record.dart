import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CreditosRecord extends FirestoreRecord {
  CreditosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "categoria" field.
  String? _categoria;
  String get categoria => _categoria ?? '';
  bool hasCategoria() => _categoria != null;

  // "mesIngreso" field.
  String? _mesIngreso;
  String get mesIngreso => _mesIngreso ?? '';
  bool hasMesIngreso() => _mesIngreso != null;

  // "nombreGasto" field.
  String? _nombreGasto;
  String get nombreGasto => _nombreGasto ?? '';
  bool hasNombreGasto() => _nombreGasto != null;

  // "monto" field.
  double? _monto;
  double get monto => _monto ?? 0.0;
  bool hasMonto() => _monto != null;

  // "numCuotas" field.
  int? _numCuotas;
  int get numCuotas => _numCuotas ?? 0;
  bool hasNumCuotas() => _numCuotas != null;

  // "cuotasRealizadas" field.
  int? _cuotasRealizadas;
  int get cuotasRealizadas => _cuotasRealizadas ?? 0;
  bool hasCuotasRealizadas() => _cuotasRealizadas != null;

  // "userId" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  void _initializeFields() {
    _categoria = snapshotData['categoria'] as String?;
    _mesIngreso = snapshotData['mesIngreso'] as String?;
    _nombreGasto = snapshotData['nombreGasto'] as String?;
    _monto = castToType<double>(snapshotData['monto']);
    _numCuotas = castToType<int>(snapshotData['numCuotas']);
    _cuotasRealizadas = castToType<int>(snapshotData['cuotasRealizadas']);
    _userId = snapshotData['userId'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('creditos');

  static Stream<CreditosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CreditosRecord.fromSnapshot(s));

  static Future<CreditosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CreditosRecord.fromSnapshot(s));

  static CreditosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CreditosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CreditosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CreditosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CreditosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CreditosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCreditosRecordData({
  String? categoria,
  String? mesIngreso,
  String? nombreGasto,
  double? monto,
  int? numCuotas,
  int? cuotasRealizadas,
  DocumentReference? userId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'categoria': categoria,
      'mesIngreso': mesIngreso,
      'nombreGasto': nombreGasto,
      'monto': monto,
      'numCuotas': numCuotas,
      'cuotasRealizadas': cuotasRealizadas,
      'userId': userId,
    }.withoutNulls,
  );

  return firestoreData;
}

class CreditosRecordDocumentEquality implements Equality<CreditosRecord> {
  const CreditosRecordDocumentEquality();

  @override
  bool equals(CreditosRecord? e1, CreditosRecord? e2) {
    return e1?.categoria == e2?.categoria &&
        e1?.mesIngreso == e2?.mesIngreso &&
        e1?.nombreGasto == e2?.nombreGasto &&
        e1?.monto == e2?.monto &&
        e1?.numCuotas == e2?.numCuotas &&
        e1?.cuotasRealizadas == e2?.cuotasRealizadas &&
        e1?.userId == e2?.userId;
  }

  @override
  int hash(CreditosRecord? e) => const ListEquality().hash([
        e?.categoria,
        e?.mesIngreso,
        e?.nombreGasto,
        e?.monto,
        e?.numCuotas,
        e?.cuotasRealizadas,
        e?.userId
      ]);

  @override
  bool isValidKey(Object? o) => o is CreditosRecord;
}
