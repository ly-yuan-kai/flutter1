//
//  Generated code. Do not modify.
//  source: cashew/journal.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../walnut/corp.pb.dart' as $3;
import '../walnut/date.pb.dart' as $4;
import '../walnut/maintenance.pb.dart' as $2;
import 'account.pb.dart' as $5;

/// A journal is a accounting transaction record that bookkeeps the
/// transactions of the enterprise.
class Journal extends $pb.GeneratedMessage {
  factory Journal({
    $core.String? id,
    $3.Corp? corp,
    $4.Date? date,
    $core.String? seqno,
    $core.Iterable<JournalEntry>? entries,
    $2.Maintenance? maintenance,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (corp != null) {
      $result.corp = corp;
    }
    if (date != null) {
      $result.date = date;
    }
    if (seqno != null) {
      $result.seqno = seqno;
    }
    if (entries != null) {
      $result.entries.addAll(entries);
    }
    if (maintenance != null) {
      $result.maintenance = maintenance;
    }
    return $result;
  }
  Journal._() : super();
  factory Journal.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Journal.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Journal', package: const $pb.PackageName(_omitMessageNames ? '' : 'cashew.journal'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOM<$3.Corp>(2, _omitFieldNames ? '' : 'corp', subBuilder: $3.Corp.create)
    ..aOM<$4.Date>(3, _omitFieldNames ? '' : 'date', subBuilder: $4.Date.create)
    ..aOS(4, _omitFieldNames ? '' : 'seqno')
    ..pc<JournalEntry>(5, _omitFieldNames ? '' : 'entries', $pb.PbFieldType.PM, subBuilder: JournalEntry.create)
    ..aOM<$2.Maintenance>(6, _omitFieldNames ? '' : 'maintenance', subBuilder: $2.Maintenance.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Journal clone() => Journal()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Journal copyWith(void Function(Journal) updates) => super.copyWith((message) => updates(message as Journal)) as Journal;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Journal create() => Journal._();
  Journal createEmptyInstance() => create();
  static $pb.PbList<Journal> createRepeated() => $pb.PbList<Journal>();
  @$core.pragma('dart2js:noInline')
  static Journal getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Journal>(create);
  static Journal? _defaultInstance;

  /// id is the unique identifier of the journal, this is automatically
  /// set by the system when the journal is first created. The id does
  /// not change once it is set.
  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  /// corp is the corporation that the journal belongs to. This field
  /// could be input by the user but generally is automatically populated
  /// based on the interface in the UI.
  @$pb.TagNumber(2)
  $3.Corp get corp => $_getN(1);
  @$pb.TagNumber(2)
  set corp($3.Corp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCorp() => $_has(1);
  @$pb.TagNumber(2)
  void clearCorp() => clearField(2);
  @$pb.TagNumber(2)
  $3.Corp ensureCorp() => $_ensure(1);

  /// This is the date of the transaction.
  @$pb.TagNumber(3)
  $4.Date get date => $_getN(2);
  @$pb.TagNumber(3)
  set date($4.Date v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasDate() => $_has(2);
  @$pb.TagNumber(3)
  void clearDate() => clearField(3);
  @$pb.TagNumber(3)
  $4.Date ensureDate() => $_ensure(2);

  /// the sequence number of the journal. This is automatically set by
  /// UI system.
  @$pb.TagNumber(4)
  $core.String get seqno => $_getSZ(3);
  @$pb.TagNumber(4)
  set seqno($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSeqno() => $_has(3);
  @$pb.TagNumber(4)
  void clearSeqno() => clearField(4);

  /// entries is the list of journal entries that make up the journal.
  /// There should be at least two entries in the journal, one for the
  /// debit and one for the credit.
  @$pb.TagNumber(5)
  $core.List<JournalEntry> get entries => $_getList(4);

  /// the maintenance information for the journal.
  @$pb.TagNumber(6)
  $2.Maintenance get maintenance => $_getN(5);
  @$pb.TagNumber(6)
  set maintenance($2.Maintenance v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasMaintenance() => $_has(5);
  @$pb.TagNumber(6)
  void clearMaintenance() => clearField(6);
  @$pb.TagNumber(6)
  $2.Maintenance ensureMaintenance() => $_ensure(5);
}

/// Journal entry stores the actual transaction information of the journal.
class JournalEntry extends $pb.GeneratedMessage {
  factory JournalEntry({
    $core.String? id,
    $core.String? seqno,
    $5.Account? account,
    $fixnum.Int64? debit,
    $fixnum.Int64? credit,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (seqno != null) {
      $result.seqno = seqno;
    }
    if (account != null) {
      $result.account = account;
    }
    if (debit != null) {
      $result.debit = debit;
    }
    if (credit != null) {
      $result.credit = credit;
    }
    return $result;
  }
  JournalEntry._() : super();
  factory JournalEntry.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory JournalEntry.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'JournalEntry', package: const $pb.PackageName(_omitMessageNames ? '' : 'cashew.journal'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'seqno')
    ..aOM<$5.Account>(3, _omitFieldNames ? '' : 'account', subBuilder: $5.Account.create)
    ..aInt64(4, _omitFieldNames ? '' : 'debit')
    ..aInt64(5, _omitFieldNames ? '' : 'credit')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  JournalEntry clone() => JournalEntry()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  JournalEntry copyWith(void Function(JournalEntry) updates) => super.copyWith((message) => updates(message as JournalEntry)) as JournalEntry;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static JournalEntry create() => JournalEntry._();
  JournalEntry createEmptyInstance() => create();
  static $pb.PbList<JournalEntry> createRepeated() => $pb.PbList<JournalEntry>();
  @$core.pragma('dart2js:noInline')
  static JournalEntry getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<JournalEntry>(create);
  static JournalEntry? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get seqno => $_getSZ(1);
  @$pb.TagNumber(2)
  set seqno($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSeqno() => $_has(1);
  @$pb.TagNumber(2)
  void clearSeqno() => clearField(2);

  @$pb.TagNumber(3)
  $5.Account get account => $_getN(2);
  @$pb.TagNumber(3)
  set account($5.Account v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccount() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccount() => clearField(3);
  @$pb.TagNumber(3)
  $5.Account ensureAccount() => $_ensure(2);

  @$pb.TagNumber(4)
  $fixnum.Int64 get debit => $_getI64(3);
  @$pb.TagNumber(4)
  set debit($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDebit() => $_has(3);
  @$pb.TagNumber(4)
  void clearDebit() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get credit => $_getI64(4);
  @$pb.TagNumber(5)
  set credit($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCredit() => $_has(4);
  @$pb.TagNumber(5)
  void clearCredit() => clearField(5);
}

class JournalRequest_JournalEntryFields extends $pb.GeneratedMessage {
  factory JournalRequest_JournalEntryFields({
    $core.bool? id,
    $core.bool? seqno,
    $core.bool? account,
    $core.bool? debit,
    $core.bool? credit,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (seqno != null) {
      $result.seqno = seqno;
    }
    if (account != null) {
      $result.account = account;
    }
    if (debit != null) {
      $result.debit = debit;
    }
    if (credit != null) {
      $result.credit = credit;
    }
    return $result;
  }
  JournalRequest_JournalEntryFields._() : super();
  factory JournalRequest_JournalEntryFields.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory JournalRequest_JournalEntryFields.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'JournalRequest.JournalEntryFields', package: const $pb.PackageName(_omitMessageNames ? '' : 'cashew.journal'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'id')
    ..aOB(2, _omitFieldNames ? '' : 'seqno')
    ..aOB(3, _omitFieldNames ? '' : 'account')
    ..aOB(4, _omitFieldNames ? '' : 'debit')
    ..aOB(5, _omitFieldNames ? '' : 'credit')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  JournalRequest_JournalEntryFields clone() => JournalRequest_JournalEntryFields()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  JournalRequest_JournalEntryFields copyWith(void Function(JournalRequest_JournalEntryFields) updates) => super.copyWith((message) => updates(message as JournalRequest_JournalEntryFields)) as JournalRequest_JournalEntryFields;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static JournalRequest_JournalEntryFields create() => JournalRequest_JournalEntryFields._();
  JournalRequest_JournalEntryFields createEmptyInstance() => create();
  static $pb.PbList<JournalRequest_JournalEntryFields> createRepeated() => $pb.PbList<JournalRequest_JournalEntryFields>();
  @$core.pragma('dart2js:noInline')
  static JournalRequest_JournalEntryFields getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<JournalRequest_JournalEntryFields>(create);
  static JournalRequest_JournalEntryFields? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get id => $_getBF(0);
  @$pb.TagNumber(1)
  set id($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get seqno => $_getBF(1);
  @$pb.TagNumber(2)
  set seqno($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSeqno() => $_has(1);
  @$pb.TagNumber(2)
  void clearSeqno() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get account => $_getBF(2);
  @$pb.TagNumber(3)
  set account($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccount() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccount() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get debit => $_getBF(3);
  @$pb.TagNumber(4)
  set debit($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDebit() => $_has(3);
  @$pb.TagNumber(4)
  void clearDebit() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get credit => $_getBF(4);
  @$pb.TagNumber(5)
  set credit($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCredit() => $_has(4);
  @$pb.TagNumber(5)
  void clearCredit() => clearField(5);
}

/// Fields to be returned.
class JournalRequest_Fields extends $pb.GeneratedMessage {
  factory JournalRequest_Fields({
    $core.bool? id,
    $core.bool? corp,
    $core.bool? seqno,
    $core.bool? account,
    $core.bool? entries,
    $core.bool? maintenance,
    JournalRequest_JournalEntryFields? entryFields,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (corp != null) {
      $result.corp = corp;
    }
    if (seqno != null) {
      $result.seqno = seqno;
    }
    if (account != null) {
      $result.account = account;
    }
    if (entries != null) {
      $result.entries = entries;
    }
    if (maintenance != null) {
      $result.maintenance = maintenance;
    }
    if (entryFields != null) {
      $result.entryFields = entryFields;
    }
    return $result;
  }
  JournalRequest_Fields._() : super();
  factory JournalRequest_Fields.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory JournalRequest_Fields.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'JournalRequest.Fields', package: const $pb.PackageName(_omitMessageNames ? '' : 'cashew.journal'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'id')
    ..aOB(2, _omitFieldNames ? '' : 'corp')
    ..aOB(3, _omitFieldNames ? '' : 'seqno')
    ..aOB(4, _omitFieldNames ? '' : 'account')
    ..aOB(5, _omitFieldNames ? '' : 'entries')
    ..aOB(6, _omitFieldNames ? '' : 'maintenance')
    ..aOM<JournalRequest_JournalEntryFields>(7, _omitFieldNames ? '' : 'entryFields', subBuilder: JournalRequest_JournalEntryFields.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  JournalRequest_Fields clone() => JournalRequest_Fields()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  JournalRequest_Fields copyWith(void Function(JournalRequest_Fields) updates) => super.copyWith((message) => updates(message as JournalRequest_Fields)) as JournalRequest_Fields;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static JournalRequest_Fields create() => JournalRequest_Fields._();
  JournalRequest_Fields createEmptyInstance() => create();
  static $pb.PbList<JournalRequest_Fields> createRepeated() => $pb.PbList<JournalRequest_Fields>();
  @$core.pragma('dart2js:noInline')
  static JournalRequest_Fields getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<JournalRequest_Fields>(create);
  static JournalRequest_Fields? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get id => $_getBF(0);
  @$pb.TagNumber(1)
  set id($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get corp => $_getBF(1);
  @$pb.TagNumber(2)
  set corp($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCorp() => $_has(1);
  @$pb.TagNumber(2)
  void clearCorp() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get seqno => $_getBF(2);
  @$pb.TagNumber(3)
  set seqno($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSeqno() => $_has(2);
  @$pb.TagNumber(3)
  void clearSeqno() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get account => $_getBF(3);
  @$pb.TagNumber(4)
  set account($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAccount() => $_has(3);
  @$pb.TagNumber(4)
  void clearAccount() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get entries => $_getBF(4);
  @$pb.TagNumber(5)
  set entries($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasEntries() => $_has(4);
  @$pb.TagNumber(5)
  void clearEntries() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get maintenance => $_getBF(5);
  @$pb.TagNumber(6)
  set maintenance($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasMaintenance() => $_has(5);
  @$pb.TagNumber(6)
  void clearMaintenance() => clearField(6);

  @$pb.TagNumber(7)
  JournalRequest_JournalEntryFields get entryFields => $_getN(6);
  @$pb.TagNumber(7)
  set entryFields(JournalRequest_JournalEntryFields v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasEntryFields() => $_has(6);
  @$pb.TagNumber(7)
  void clearEntryFields() => clearField(7);
  @$pb.TagNumber(7)
  JournalRequest_JournalEntryFields ensureEntryFields() => $_ensure(6);
}

class JournalRequest extends $pb.GeneratedMessage {
  factory JournalRequest({
    $core.String? id,
    $4.Date? date,
    JournalRequest_Fields? fields,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (date != null) {
      $result.date = date;
    }
    if (fields != null) {
      $result.fields = fields;
    }
    return $result;
  }
  JournalRequest._() : super();
  factory JournalRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory JournalRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'JournalRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'cashew.journal'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOM<$4.Date>(2, _omitFieldNames ? '' : 'date', subBuilder: $4.Date.create)
    ..aOM<JournalRequest_Fields>(3, _omitFieldNames ? '' : 'fields', subBuilder: JournalRequest_Fields.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  JournalRequest clone() => JournalRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  JournalRequest copyWith(void Function(JournalRequest) updates) => super.copyWith((message) => updates(message as JournalRequest)) as JournalRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static JournalRequest create() => JournalRequest._();
  JournalRequest createEmptyInstance() => create();
  static $pb.PbList<JournalRequest> createRepeated() => $pb.PbList<JournalRequest>();
  @$core.pragma('dart2js:noInline')
  static JournalRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<JournalRequest>(create);
  static JournalRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $4.Date get date => $_getN(1);
  @$pb.TagNumber(2)
  set date($4.Date v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDate() => $_has(1);
  @$pb.TagNumber(2)
  void clearDate() => clearField(2);
  @$pb.TagNumber(2)
  $4.Date ensureDate() => $_ensure(1);

  @$pb.TagNumber(3)
  JournalRequest_Fields get fields => $_getN(2);
  @$pb.TagNumber(3)
  set fields(JournalRequest_Fields v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasFields() => $_has(2);
  @$pb.TagNumber(3)
  void clearFields() => clearField(3);
  @$pb.TagNumber(3)
  JournalRequest_Fields ensureFields() => $_ensure(2);
}

class JournalReply extends $pb.GeneratedMessage {
  factory JournalReply({
    $core.Iterable<Journal>? journal,
    $core.int? count,
    $core.Map<$core.String, $core.String>? message,
  }) {
    final $result = create();
    if (journal != null) {
      $result.journal.addAll(journal);
    }
    if (count != null) {
      $result.count = count;
    }
    if (message != null) {
      $result.message.addAll(message);
    }
    return $result;
  }
  JournalReply._() : super();
  factory JournalReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory JournalReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'JournalReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'cashew.journal'), createEmptyInstance: create)
    ..pc<Journal>(1, _omitFieldNames ? '' : 'journal', $pb.PbFieldType.PM, subBuilder: Journal.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'count', $pb.PbFieldType.O3)
    ..m<$core.String, $core.String>(3, _omitFieldNames ? '' : 'message', entryClassName: 'JournalReply.MessageEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('cashew.journal'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  JournalReply clone() => JournalReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  JournalReply copyWith(void Function(JournalReply) updates) => super.copyWith((message) => updates(message as JournalReply)) as JournalReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static JournalReply create() => JournalReply._();
  JournalReply createEmptyInstance() => create();
  static $pb.PbList<JournalReply> createRepeated() => $pb.PbList<JournalReply>();
  @$core.pragma('dart2js:noInline')
  static JournalReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<JournalReply>(create);
  static JournalReply? _defaultInstance;

  /// Payload of the reply.
  @$pb.TagNumber(1)
  $core.List<Journal> get journal => $_getList(0);

  /// The number of records in the reply.
  @$pb.TagNumber(2)
  $core.int get count => $_getIZ(1);
  @$pb.TagNumber(2)
  set count($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCount() => clearField(2);

  /// Addtional message of the reply.
  @$pb.TagNumber(3)
  $core.Map<$core.String, $core.String> get message => $_getMap(2);
}

class JournalRecordApi {
  $pb.RpcClient _client;
  JournalRecordApi(this._client);

  $async.Future<JournalReply> getOne($pb.ClientContext? ctx, JournalRequest request) =>
    _client.invoke<JournalReply>(ctx, 'JournalRecord', 'GetOne', request, JournalReply())
  ;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
