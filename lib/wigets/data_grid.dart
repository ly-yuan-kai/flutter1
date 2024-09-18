import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class DataGridExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SfDataGrid(
      source: EmployeeDataSource(),
      columns: <GridColumn>[
        GridColumn(columnName: 'name', label: Text('姓名')),
        GridColumn(columnName: 'age', label: Text('年齡')),
        GridColumn(columnName: 'position', label: Text('職位')),
      ],
    );
  }
}

class EmployeeDataSource extends DataGridSource {
  List<DataGridRow> _employees = [];

  EmployeeDataSource() {
    _employees = [
      DataGridRow(cells: [
        DataGridCell<String>(columnName: 'name', value: 'Alice'),
        DataGridCell<int>(columnName: 'age', value: 25),
        DataGridCell<String>(columnName: 'position', value: 'Engineer'),
      ]),
      DataGridRow(cells: [
        DataGridCell<String>(columnName: 'name', value: 'Bob'),
        DataGridCell<int>(columnName: 'age', value: 30),
        DataGridCell<String>(columnName: 'position', value: 'Designer'),
      ]),
    ];
  }

  @override
  List<DataGridRow> get rows => _employees;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
      cells: row.getCells().map<Widget>((dataGridCell) {
        return Container(
          padding: EdgeInsets.all(8.0),
          alignment: Alignment.center,
          child: Text(dataGridCell.value.toString()),
        );
      }).toList(),
    );
  }
}
