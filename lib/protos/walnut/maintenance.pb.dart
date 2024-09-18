//
//  Generated code. Do not modify.
//  source: walnut/maintenance.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../google/protobuf/timestamp.pb.dart' as $0;
import 'user.pb.dart' as $1;

/// Maintenance information for a record.
class Maintenance extends $pb.GeneratedMessage {
  factory Maintenance({
    $0.Timestamp? createdAt,
    $1.User? createdBy,
    $0.Timestamp? modifiedAt,
    $1.User? modifiedBy,
  }) {
    final $result = create();
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    if (createdBy != null) {
      $result.createdBy = createdBy;
    }
    if (modifiedAt != null) {
      $result.modifiedAt = modifiedAt;
    }
    if (modifiedBy != null) {
      $result.modifiedBy = modifiedBy;
    }
    return $result;
  }
  Maintenance._() : super();
  factory Maintenance.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Maintenance.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Maintenance', package: const $pb.PackageName(_omitMessageNames ? '' : 'walnut.maintenance'), createEmptyInstance: create)
    ..aOM<$0.Timestamp>(1, _omitFieldNames ? '' : 'createdAt', subBuilder: $0.Timestamp.create)
    ..aOM<$1.User>(2, _omitFieldNames ? '' : 'createdBy', subBuilder: $1.User.create)
    ..aOM<$0.Timestamp>(3, _omitFieldNames ? '' : 'modifiedAt', subBuilder: $0.Timestamp.create)
    ..aOM<$1.User>(4, _omitFieldNames ? '' : 'modifiedBy', subBuilder: $1.User.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Maintenance clone() => Maintenance()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Maintenance copyWith(void Function(Maintenance) updates) => super.copyWith((message) => updates(message as Maintenance)) as Maintenance;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Maintenance create() => Maintenance._();
  Maintenance createEmptyInstance() => create();
  static $pb.PbList<Maintenance> createRepeated() => $pb.PbList<Maintenance>();
  @$core.pragma('dart2js:noInline')
  static Maintenance getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Maintenance>(create);
  static Maintenance? _defaultInstance;

  /// Timestamp when the record was first created.
  @$pb.TagNumber(1)
  $0.Timestamp get createdAt => $_getN(0);
  @$pb.TagNumber(1)
  set createdAt($0.Timestamp v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreatedAt() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreatedAt() => clearField(1);
  @$pb.TagNumber(1)
  $0.Timestamp ensureCreatedAt() => $_ensure(0);

  /// User who created the record.
  @$pb.TagNumber(2)
  $1.User get createdBy => $_getN(1);
  @$pb.TagNumber(2)
  set createdBy($1.User v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreatedBy() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreatedBy() => clearField(2);
  @$pb.TagNumber(2)
  $1.User ensureCreatedBy() => $_ensure(1);

  /// Timestamp when the record was last modified.
  @$pb.TagNumber(3)
  $0.Timestamp get modifiedAt => $_getN(2);
  @$pb.TagNumber(3)
  set modifiedAt($0.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasModifiedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearModifiedAt() => clearField(3);
  @$pb.TagNumber(3)
  $0.Timestamp ensureModifiedAt() => $_ensure(2);

  /// User who last modified the record.
  @$pb.TagNumber(4)
  $1.User get modifiedBy => $_getN(3);
  @$pb.TagNumber(4)
  set modifiedBy($1.User v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasModifiedBy() => $_has(3);
  @$pb.TagNumber(4)
  void clearModifiedBy() => clearField(4);
  @$pb.TagNumber(4)
  $1.User ensureModifiedBy() => $_ensure(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
