import 'package:fixnum/fixnum.dart';

import '../protos/google/protobuf/timestamp.pb.dart';
import '../protos/walnut/maintenance.pb.dart';
import '../protos/walnut/user.pb.dart';
import '../protos/walnut/date.pb.dart';
import '../protos/walnut/corp.pb.dart';
import '../protos/cashew/account.pb.dart';
import '../protos/cashew/journal.pb.dart';

Journal createMockJournal() {

  User mockUser = User()
  ..id = '1'
  ..username = 'lymis'
  ..firstName = '王'
  ..lastName = '小明';

  Maintenance mockMaintenance = Maintenance()
  ..createdAt = Timestamp(seconds:Int64(100000))
  ..createdBy = mockUser;

  Corp mockCorp = Corp()
  ..id = '1'
  ..fullName = '連億國際'
  ..shortName = '連億'
  ..address = '桃園市桃園區新埔八街31號2樓';

  Date date = Date()
  ..year = 2024
  ..month = 7
  ..day = 11;

  Account mockAccount1 = Account()
  ..id = '1'
  ..code = '1103101'
  ..title = '銀行存款-聯邦-乙存'
  ..maintenance = mockMaintenance;
  
  Account mockAccount2 = Account()
  ..id = '2'
  ..code = '2143'
  ..title = '應付帳款'
  ..maintenance = mockMaintenance;

  JournalEntry mockEntry1 = JournalEntry()
  ..id = '1'
  ..seqno = '241107001'
  ..account = mockAccount1
  ..debit = Int64(1000);

  JournalEntry mockEntry2 = JournalEntry()
  ..id = '2'
  ..seqno = '241107001'
  ..account = mockAccount2
  ..credit = Int64(1000);

  Journal mockJournal = Journal()
  ..id = "1"
  ..corp = mockCorp
  ..date = date
  ..seqno = '241107001'
  ..entries.addAll([mockEntry1, mockEntry2])
  ..maintenance = mockMaintenance;

  return mockJournal;
}