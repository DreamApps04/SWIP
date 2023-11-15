import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TestRecord extends FirestoreRecord {
  TestRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "year" field.
  String? _year;
  String get year => _year ?? '';
  bool hasYear() => _year != null;

  // "income" field.
  double? _income;
  double get income => _income ?? 0.0;
  bool hasIncome() => _income != null;

  // "expense" field.
  double? _expense;
  double get expense => _expense ?? 0.0;
  bool hasExpense() => _expense != null;

  void _initializeFields() {
    _year = snapshotData['year'] as String?;
    _income = castToType<double>(snapshotData['income']);
    _expense = castToType<double>(snapshotData['expense']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('test');

  static Stream<TestRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TestRecord.fromSnapshot(s));

  static Future<TestRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TestRecord.fromSnapshot(s));

  static TestRecord fromSnapshot(DocumentSnapshot snapshot) => TestRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TestRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TestRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TestRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TestRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTestRecordData({
  String? year,
  double? income,
  double? expense,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'year': year,
      'income': income,
      'expense': expense,
    }.withoutNulls,
  );

  return firestoreData;
}

class TestRecordDocumentEquality implements Equality<TestRecord> {
  const TestRecordDocumentEquality();

  @override
  bool equals(TestRecord? e1, TestRecord? e2) {
    return e1?.year == e2?.year &&
        e1?.income == e2?.income &&
        e1?.expense == e2?.expense;
  }

  @override
  int hash(TestRecord? e) =>
      const ListEquality().hash([e?.year, e?.income, e?.expense]);

  @override
  bool isValidKey(Object? o) => o is TestRecord;
}
