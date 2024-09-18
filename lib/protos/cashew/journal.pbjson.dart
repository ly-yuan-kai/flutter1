//
//  Generated code. Do not modify.
//  source: cashew/journal.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

import '../google/protobuf/timestamp.pbjson.dart' as $0;
import '../walnut/corp.pbjson.dart' as $3;
import '../walnut/date.pbjson.dart' as $4;
import '../walnut/maintenance.pbjson.dart' as $2;
import '../walnut/user.pbjson.dart' as $1;
import 'account.pbjson.dart' as $5;

@$core.Deprecated('Use journalDescriptor instead')
const Journal$json = {
  '1': 'Journal',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'id', '17': true},
    {'1': 'corp', '3': 2, '4': 1, '5': 11, '6': '.walnut.corp.Corp', '9': 1, '10': 'corp', '17': true},
    {'1': 'date', '3': 3, '4': 1, '5': 11, '6': '.walnut.date.Date', '9': 2, '10': 'date', '17': true},
    {'1': 'seqno', '3': 4, '4': 1, '5': 9, '9': 3, '10': 'seqno', '17': true},
    {'1': 'entries', '3': 5, '4': 3, '5': 11, '6': '.cashew.journal.JournalEntry', '10': 'entries'},
    {'1': 'maintenance', '3': 6, '4': 1, '5': 11, '6': '.walnut.maintenance.Maintenance', '10': 'maintenance'},
  ],
  '8': [
    {'1': '_id'},
    {'1': '_corp'},
    {'1': '_date'},
    {'1': '_seqno'},
  ],
};

/// Descriptor for `Journal`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List journalDescriptor = $convert.base64Decode(
    'CgdKb3VybmFsEhMKAmlkGAEgASgJSABSAmlkiAEBEioKBGNvcnAYAiABKAsyES53YWxudXQuY2'
    '9ycC5Db3JwSAFSBGNvcnCIAQESKgoEZGF0ZRgDIAEoCzIRLndhbG51dC5kYXRlLkRhdGVIAlIE'
    'ZGF0ZYgBARIZCgVzZXFubxgEIAEoCUgDUgVzZXFub4gBARI2CgdlbnRyaWVzGAUgAygLMhwuY2'
    'FzaGV3LmpvdXJuYWwuSm91cm5hbEVudHJ5UgdlbnRyaWVzEkEKC21haW50ZW5hbmNlGAYgASgL'
    'Mh8ud2FsbnV0Lm1haW50ZW5hbmNlLk1haW50ZW5hbmNlUgttYWludGVuYW5jZUIFCgNfaWRCBw'
    'oFX2NvcnBCBwoFX2RhdGVCCAoGX3NlcW5v');

@$core.Deprecated('Use journalEntryDescriptor instead')
const JournalEntry$json = {
  '1': 'JournalEntry',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'id', '17': true},
    {'1': 'seqno', '3': 2, '4': 1, '5': 9, '9': 1, '10': 'seqno', '17': true},
    {'1': 'account', '3': 3, '4': 1, '5': 11, '6': '.cashew.account.Account', '9': 2, '10': 'account', '17': true},
    {'1': 'debit', '3': 4, '4': 1, '5': 3, '9': 3, '10': 'debit', '17': true},
    {'1': 'credit', '3': 5, '4': 1, '5': 3, '9': 4, '10': 'credit', '17': true},
  ],
  '8': [
    {'1': '_id'},
    {'1': '_seqno'},
    {'1': '_account'},
    {'1': '_debit'},
    {'1': '_credit'},
  ],
};

/// Descriptor for `JournalEntry`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List journalEntryDescriptor = $convert.base64Decode(
    'CgxKb3VybmFsRW50cnkSEwoCaWQYASABKAlIAFICaWSIAQESGQoFc2Vxbm8YAiABKAlIAVIFc2'
    'Vxbm+IAQESNgoHYWNjb3VudBgDIAEoCzIXLmNhc2hldy5hY2NvdW50LkFjY291bnRIAlIHYWNj'
    'b3VudIgBARIZCgVkZWJpdBgEIAEoA0gDUgVkZWJpdIgBARIbCgZjcmVkaXQYBSABKANIBFIGY3'
    'JlZGl0iAEBQgUKA19pZEIICgZfc2Vxbm9CCgoIX2FjY291bnRCCAoGX2RlYml0QgkKB19jcmVk'
    'aXQ=');

@$core.Deprecated('Use journalRequestDescriptor instead')
const JournalRequest$json = {
  '1': 'JournalRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'id', '17': true},
    {'1': 'date', '3': 2, '4': 1, '5': 11, '6': '.walnut.date.Date', '9': 1, '10': 'date', '17': true},
    {'1': 'fields', '3': 3, '4': 1, '5': 11, '6': '.cashew.journal.JournalRequest.Fields', '10': 'fields'},
  ],
  '3': [JournalRequest_JournalEntryFields$json, JournalRequest_Fields$json],
  '8': [
    {'1': '_id'},
    {'1': '_date'},
  ],
};

@$core.Deprecated('Use journalRequestDescriptor instead')
const JournalRequest_JournalEntryFields$json = {
  '1': 'JournalEntryFields',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 8, '9': 0, '10': 'id', '17': true},
    {'1': 'seqno', '3': 2, '4': 1, '5': 8, '9': 1, '10': 'seqno', '17': true},
    {'1': 'account', '3': 3, '4': 1, '5': 8, '9': 2, '10': 'account', '17': true},
    {'1': 'debit', '3': 4, '4': 1, '5': 8, '9': 3, '10': 'debit', '17': true},
    {'1': 'credit', '3': 5, '4': 1, '5': 8, '9': 4, '10': 'credit', '17': true},
  ],
  '8': [
    {'1': '_id'},
    {'1': '_seqno'},
    {'1': '_account'},
    {'1': '_debit'},
    {'1': '_credit'},
  ],
};

@$core.Deprecated('Use journalRequestDescriptor instead')
const JournalRequest_Fields$json = {
  '1': 'Fields',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 8, '9': 0, '10': 'id', '17': true},
    {'1': 'corp', '3': 2, '4': 1, '5': 8, '9': 1, '10': 'corp', '17': true},
    {'1': 'seqno', '3': 3, '4': 1, '5': 8, '9': 2, '10': 'seqno', '17': true},
    {'1': 'account', '3': 4, '4': 1, '5': 8, '9': 3, '10': 'account', '17': true},
    {'1': 'entries', '3': 5, '4': 1, '5': 8, '9': 4, '10': 'entries', '17': true},
    {'1': 'maintenance', '3': 6, '4': 1, '5': 8, '9': 5, '10': 'maintenance', '17': true},
    {'1': 'entry_fields', '3': 7, '4': 1, '5': 11, '6': '.cashew.journal.JournalRequest.JournalEntryFields', '10': 'entryFields'},
  ],
  '8': [
    {'1': '_id'},
    {'1': '_corp'},
    {'1': '_seqno'},
    {'1': '_account'},
    {'1': '_entries'},
    {'1': '_maintenance'},
  ],
};

/// Descriptor for `JournalRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List journalRequestDescriptor = $convert.base64Decode(
    'Cg5Kb3VybmFsUmVxdWVzdBITCgJpZBgBIAEoCUgAUgJpZIgBARIqCgRkYXRlGAIgASgLMhEud2'
    'FsbnV0LmRhdGUuRGF0ZUgBUgRkYXRliAEBEj0KBmZpZWxkcxgDIAEoCzIlLmNhc2hldy5qb3Vy'
    'bmFsLkpvdXJuYWxSZXF1ZXN0LkZpZWxkc1IGZmllbGRzGs0BChJKb3VybmFsRW50cnlGaWVsZH'
    'MSEwoCaWQYASABKAhIAFICaWSIAQESGQoFc2Vxbm8YAiABKAhIAVIFc2Vxbm+IAQESHQoHYWNj'
    'b3VudBgDIAEoCEgCUgdhY2NvdW50iAEBEhkKBWRlYml0GAQgASgISANSBWRlYml0iAEBEhsKBm'
    'NyZWRpdBgFIAEoCEgEUgZjcmVkaXSIAQFCBQoDX2lkQggKBl9zZXFub0IKCghfYWNjb3VudEII'
    'CgZfZGViaXRCCQoHX2NyZWRpdBrOAgoGRmllbGRzEhMKAmlkGAEgASgISABSAmlkiAEBEhcKBG'
    'NvcnAYAiABKAhIAVIEY29ycIgBARIZCgVzZXFubxgDIAEoCEgCUgVzZXFub4gBARIdCgdhY2Nv'
    'dW50GAQgASgISANSB2FjY291bnSIAQESHQoHZW50cmllcxgFIAEoCEgEUgdlbnRyaWVziAEBEi'
    'UKC21haW50ZW5hbmNlGAYgASgISAVSC21haW50ZW5hbmNliAEBElQKDGVudHJ5X2ZpZWxkcxgH'
    'IAEoCzIxLmNhc2hldy5qb3VybmFsLkpvdXJuYWxSZXF1ZXN0LkpvdXJuYWxFbnRyeUZpZWxkc1'
    'ILZW50cnlGaWVsZHNCBQoDX2lkQgcKBV9jb3JwQggKBl9zZXFub0IKCghfYWNjb3VudEIKCghf'
    'ZW50cmllc0IOCgxfbWFpbnRlbmFuY2VCBQoDX2lkQgcKBV9kYXRl');

@$core.Deprecated('Use journalReplyDescriptor instead')
const JournalReply$json = {
  '1': 'JournalReply',
  '2': [
    {'1': 'journal', '3': 1, '4': 3, '5': 11, '6': '.cashew.journal.Journal', '10': 'journal'},
    {'1': 'count', '3': 2, '4': 1, '5': 5, '10': 'count'},
    {'1': 'message', '3': 3, '4': 3, '5': 11, '6': '.cashew.journal.JournalReply.MessageEntry', '10': 'message'},
  ],
  '3': [JournalReply_MessageEntry$json],
};

@$core.Deprecated('Use journalReplyDescriptor instead')
const JournalReply_MessageEntry$json = {
  '1': 'MessageEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `JournalReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List journalReplyDescriptor = $convert.base64Decode(
    'CgxKb3VybmFsUmVwbHkSMQoHam91cm5hbBgBIAMoCzIXLmNhc2hldy5qb3VybmFsLkpvdXJuYW'
    'xSB2pvdXJuYWwSFAoFY291bnQYAiABKAVSBWNvdW50EkMKB21lc3NhZ2UYAyADKAsyKS5jYXNo'
    'ZXcuam91cm5hbC5Kb3VybmFsUmVwbHkuTWVzc2FnZUVudHJ5UgdtZXNzYWdlGjoKDE1lc3NhZ2'
    'VFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgB');

const $core.Map<$core.String, $core.dynamic> JournalRecordServiceBase$json = {
  '1': 'JournalRecord',
  '2': [
    {'1': 'GetOne', '2': '.cashew.journal.JournalRequest', '3': '.cashew.journal.JournalReply'},
  ],
};

@$core.Deprecated('Use journalRecordServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> JournalRecordServiceBase$messageJson = {
  '.cashew.journal.JournalRequest': JournalRequest$json,
  '.walnut.date.Date': $4.Date$json,
  '.cashew.journal.JournalRequest.Fields': JournalRequest_Fields$json,
  '.cashew.journal.JournalRequest.JournalEntryFields': JournalRequest_JournalEntryFields$json,
  '.cashew.journal.JournalReply': JournalReply$json,
  '.cashew.journal.Journal': Journal$json,
  '.walnut.corp.Corp': $3.Corp$json,
  '.cashew.journal.JournalEntry': JournalEntry$json,
  '.cashew.account.Account': $5.Account$json,
  '.walnut.maintenance.Maintenance': $2.Maintenance$json,
  '.google.protobuf.Timestamp': $0.Timestamp$json,
  '.walnut.user.User': $1.User$json,
  '.walnut.user.Role': $1.Role$json,
  '.cashew.journal.JournalReply.MessageEntry': JournalReply_MessageEntry$json,
};

/// Descriptor for `JournalRecord`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List journalRecordServiceDescriptor = $convert.base64Decode(
    'Cg1Kb3VybmFsUmVjb3JkEkYKBkdldE9uZRIeLmNhc2hldy5qb3VybmFsLkpvdXJuYWxSZXF1ZX'
    'N0GhwuY2FzaGV3LmpvdXJuYWwuSm91cm5hbFJlcGx5');

