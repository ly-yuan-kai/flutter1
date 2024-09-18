//
//  Generated code. Do not modify.
//  source: walnut/maintenance.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use maintenanceDescriptor instead')
const Maintenance$json = {
  '1': 'Maintenance',
  '2': [
    {'1': 'created_at', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    {'1': 'created_by', '3': 2, '4': 1, '5': 11, '6': '.walnut.user.User', '10': 'createdBy'},
    {'1': 'modified_at', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'modifiedAt'},
    {'1': 'modified_by', '3': 4, '4': 1, '5': 11, '6': '.walnut.user.User', '10': 'modifiedBy'},
  ],
};

/// Descriptor for `Maintenance`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List maintenanceDescriptor = $convert.base64Decode(
    'CgtNYWludGVuYW5jZRI5CgpjcmVhdGVkX2F0GAEgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbW'
    'VzdGFtcFIJY3JlYXRlZEF0EjAKCmNyZWF0ZWRfYnkYAiABKAsyES53YWxudXQudXNlci5Vc2Vy'
    'UgljcmVhdGVkQnkSOwoLbW9kaWZpZWRfYXQYAyABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZX'
    'N0YW1wUgptb2RpZmllZEF0EjIKC21vZGlmaWVkX2J5GAQgASgLMhEud2FsbnV0LnVzZXIuVXNl'
    'clIKbW9kaWZpZWRCeQ==');

