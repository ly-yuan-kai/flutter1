import 'package:flutter/material.dart';
import '../wigets/data_grid.dart';
import '../wigets/date_picker.dart';
import '../wigets/dropdown_search.dart';

class JournalMenuBarView extends StatelessWidget {

  Widget _tool_button(String text, IconData icon) {
    return InkWell(
      borderRadius: BorderRadius.circular(5),
      onTap: () {
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon),
          Text(text),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Wrap(
        spacing: 10,
        children: [
          _tool_button('第一筆', Icons.keyboard_double_arrow_left_rounded),
          _tool_button('上一筆', Icons.keyboard_arrow_left),
          _tool_button('下一筆', Icons.keyboard_arrow_right),
          _tool_button('最終筆', Icons.keyboard_double_arrow_right_rounded),
          _tool_button('新增', Icons.add),
          _tool_button('修改', Icons.create_outlined),
          _tool_button('刪除', Icons.delete_outline),
          _tool_button('放棄', Icons.subdirectory_arrow_left_outlined),
          _tool_button('儲存', Icons.save_alt),
          _tool_button('分錄新增', Icons.playlist_add_outlined),
          _tool_button('分錄刪除', Icons.delete_sweep_outlined),
          _tool_button('出納', Icons.assignment_outlined),
          _tool_button('沖帳', Icons.border_color_outlined),
          _tool_button('發票', Icons.report_gmailerrorred),
          _tool_button('列印', Icons.print_outlined),
          _tool_button('複製', Icons.copy),
          _tool_button('更改日期', Icons.calendar_month_outlined),
          _tool_button('修改摘要', Icons.create_rounded),
          _tool_button('簽核', Icons.assignment_turned_in_outlined),
          _tool_button('反簽核', Icons.assignment_return_outlined),
          _tool_button('反簽核(all)', Icons.assignment_return),
          _tool_button('傳票解鎖', Icons.lock_open),
          _tool_button('反過帳', Icons.assignment_returned_outlined),
          _tool_button('傳票搜尋', Icons.search_outlined),
          

        ],
      ),
    );
    
  }

}

class JournalHeaderView extends StatefulWidget {

  @override
  _JournalHeaderViewState createState() => _JournalHeaderViewState();
}

class _JournalHeaderViewState extends State<JournalHeaderView> {

  Widget CorpWidget() {
    return const Row(
      children: [
        SizedBox(
          width: 100,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: '公司'
            ),
          ),
        ),
        SizedBox(width: 10,),
        DropdownSearch()
      ],
    );
  }

  Widget DeptWidget() {
    return const Row(
      children: [
        SizedBox(
          width: 100,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: '部門'
            ),
          ),
        ),
        SizedBox(width: 10,),
        SizedBox(
          width: 150,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: '部門名稱'
            ),
          ),
        ),
      ],
    );
  }

  Widget TypeWidget() {
    return const Row(
      children: [
        Text('分類'),
        SizedBox(width: 10,),
        DropdownSearch()
      ],
    );
  }

  Widget SumflgWidget() {
    return const Row(
      children: [
        Text('過帳'),
        SizedBox(width: 10,),
      ],
    );
  }

  Widget SdateWidet() {
    return DatePicker();
  }

  Widget SernoWidet() {
    return SizedBox(
      width: 150,
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: '傳票編號'
        ),
      )
    );
  }

  Widget PrdtWidet() {
    return const Row(
      children: [
        SizedBox(
          width: 100,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: '對象'
            ),
          ),
        ),
        SizedBox(width: 10,),
        SizedBox(
          width: 150,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: '對象名稱'
            ),
          ),
        ),
      ],
    );
  }

  Widget CurrcodeWidet() {
    return SizedBox(
      width: 100,
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: '幣別'
        ),
      ),
    );
  }

  Widget CurrateWidet() {
    return SizedBox(
      width: 100,
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: '匯率'
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(
        children: [
          Row(children: [
            CorpWidget(),
            SizedBox(width: 50,),
            DeptWidget(),
            SizedBox(width: 50,),
            TypeWidget(),
            SizedBox(width: 50,),
            SumflgWidget()
          ]),
          SizedBox(height: 10,),
          Row(children: [
            SdateWidet(),
            SizedBox(width: 50,),
            SernoWidet(),
            SizedBox(width: 50,),
            PrdtWidet(),
            SizedBox(width: 50,),
            CurrcodeWidet(),
            SizedBox(width: 50,),
            CurrateWidet()
          ])
        ],
      ),
    );
  }

}

class JournalDetail extends StatefulWidget {

  @override
  _JournalDetailState createState() => _JournalDetailState();
}

class _JournalDetailState extends State<JournalDetail> {

  final List<String> sign_list = [
    '董事長', '總經理', '副總經理', 
    '財務經理', '記帳', '出納1', 
    '出納2', '出納3'];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...sign_list.map((level) => Container(
        width: 80,
        height: 100,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 1
          )
        ),
        child: Column(
          children: [
            Center(child: Text(level),),
            Divider(),
            Center(child: Text(''),),
          ],
        )
      )).toList(), 
        SizedBox(width: 10,),
        Column(
          children: [
            SizedBox(
              width: 100,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '借方分錄'
                ),
              )
            ),
            SizedBox(height: 10,),
            SizedBox(
              width: 100,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '貸方分錄'
                ),
              )
            ),
          ],
        ),
        SizedBox(width: 10,),
        Column(
          children: [
            SizedBox(
              width: 100,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '借方總額'
                ),
              )
            ),
            SizedBox(height: 10,),
            SizedBox(
              width: 100,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '貸方總額'
                ),
              )
            ),
          ],
        ),
        SizedBox(width: 10,),
        Column(
          children: [
            SizedBox(
              width: 100,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '外幣借方總額'
                ),
              )
            ),
            SizedBox(height: 10,),
            SizedBox(
              width: 100,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '外幣貸方總額'
                ),
              )
            ),
          ],
        ),
        SizedBox(width: 10,),
        Column(
          children: [
            SizedBox(
              width: 100,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '建立人'
                ),
              )
            ),
            SizedBox(height: 10,),
            SizedBox(
              width: 100,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '修改人'
                ),
              )
            ),
          ],
        ),
        SizedBox(width: 10,),
        Column(
          children: [
            SizedBox(
              width: 100,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '傳票修改中'
                ),
              )
            ),
            SizedBox(height: 10,),
            SizedBox(
              width: 100,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '拋轉註記'
                ),
              )
            ),
          ],
        ),
      ]
    );
  }
}



class JournalView extends StatefulWidget {

  @override
  _JournalViewState createState() => _JournalViewState();
}

class _JournalViewState extends State<JournalView> {

  final valueListenable = ValueNotifier<String?>(null);
  final TextEditingController textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex:1 ,
          child: Center(
            child: DropdownSearch()
          ),
        ),

        const VerticalDivider(width: 0,),

        Expanded(
          flex: 9,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // 讓 Column 內部子部件靠左對齊
            children: [
              Expanded(
                flex: 1,
                child: JournalMenuBarView(),
              ),
              Expanded(
                flex: 2,
                child: JournalHeaderView(),
              ),
              Expanded(
                flex: 6,
                child: DataGridExample(),
              ),
              Expanded(
                flex: 2,
                child: JournalDetail()
              )
            ],
          )
        )
      ]

    );
    
  }
}