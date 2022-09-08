import 'package:flutter/material.dart';
import 'package:sedjoek_apps/theme.dart';
import 'package:syncfusion_flutter_signaturepad/signaturepad.dart';
import 'dart:ui' as ui;

class ModalAdditionalDetail extends StatefulWidget {
  const ModalAdditionalDetail({
    Key? key,
    this.selectedPipa,
    this.selectedPipaDrainese,
    this.selectedKabelListrik,
    this.selectedBrackerOutdoor,
    this.selectedDynaBolt,
  }) : super(key: key);

  @override
  State<ModalAdditionalDetail> createState() => _ModalAdditionalDetailState();

  final String? selectedPipa;
  final String? selectedPipaDrainese;
  final String? selectedKabelListrik;
  final String? selectedBrackerOutdoor;
  final String? selectedDynaBolt;
}

class _ModalAdditionalDetailState extends State<ModalAdditionalDetail> {
  final GlobalKey<SfSignaturePadState> signatureGlobalKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  void _handleClear() {
    signatureGlobalKey.currentState!.clear();
  }

  void _handleSave() async {
    final data =
        await signatureGlobalKey.currentState!.toImage(pixelRatio: 3.0);
    final bytes = await data.toByteData(format: ui.ImageByteFormat.png);
    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(),
            body: Center(
              child: Container(
                color: Colors.grey[300],
                child: Image.memory(bytes!.buffer.asUint8List()),
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final String? selectedPipa = widget.selectedPipa;
    final String? selectedPipaDrainese = widget.selectedPipaDrainese;
    final String? selectedKabelListrik = widget.selectedKabelListrik;
    final String? selectedBrackerOutdoor = widget.selectedBrackerOutdoor;
    final String? selectedDynaBolt = widget.selectedDynaBolt;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: const Text("Confirm Installation"),
      ),
      body: Stack(
        children: [
          Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * .7,
                child: SfSignaturePad(
                  minimumStrokeWidth: 4,
                  key: signatureGlobalKey,
                  backgroundColor: Colors.black.withOpacity(0.01),
                ),
              ),
              buildButton(context),
            ],
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.3,
            minChildSize: 0.1,
            maxChildSize: 0.8,
            builder: (context, controller) => ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(kDefaultCircular),
                topLeft: Radius.circular(kDefaultCircular),
              ),
              child: Container(
                color: Colors.white,
                child: ListView(
                  controller: controller,
                  children: [
                    _createDataTable(
                      selectedPipa,
                      selectedPipaDrainese,
                      selectedKabelListrik,
                      selectedBrackerOutdoor,
                      selectedDynaBolt,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildButton(BuildContext context) => Container(
        margin: const EdgeInsets.only(bottom: defaultMargin),
        color: Colors.black.withOpacity(0.01),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            buildCheck(context),
            buildClear(),
          ],
        ),
      );

  Widget buildCheck(BuildContext context) => IconButton(
        onPressed: () => _handleClear(),
        iconSize: 36,
        icon: const Icon(
          Icons.check,
          color: Colors.green,
        ),
      );

  Widget buildClear() => IconButton(
        iconSize: 36,
        onPressed: _handleClear,
        icon: Icon(
          Icons.clear,
          color: Colors.red,
        ),
      );
}

DataTable _createDataTable(
  String? selectedPipa,
  String? selectedPipaDrainase,
  String? selectedKabelListrik,
  String? selectedBracketOutdoor,
  String? selectedDynaBolt,
) {
  return DataTable(
    columns: _createColumns(),
    rows: _createRows(
      selectedPipa as String,
      selectedPipaDrainase as String,
      selectedKabelListrik as String,
      selectedDynaBolt as String,
      selectedBracketOutdoor as String,
    ),
    dividerThickness: 5,
    dataRowHeight: 80,
    showBottomBorder: true,
    headingTextStyle:
        TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
    headingRowColor:
        MaterialStateProperty.resolveWith((states) => Colors.black),
  );
}

List<DataColumn> _createColumns() {
  return [
    DataColumn(label: Text('No'), tooltip: 'Additional Material'),
    DataColumn(label: Text('Item')),
    DataColumn(label: Text('Pcs/Meter')),
    DataColumn(label: Text('Harga')),
  ];
}

final List<int> priceList = [75000, 3000, 8500, 55000, 9000];

List<DataRow> _createRows(
  String selectedPipa,
  String selectedPipaDrainase,
  String selectedKabelListrik,
  String selectedBracketOutdoor,
  String selectedDynaBolt,
) {
  return [
    DataRow(
      cells: [
        DataCell(
          Text('#100'),
        ),
        DataCell(
          Text(
            'Pipa',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        DataCell(
          Text(selectedPipa),
        ),
        DataCell(
          Text('${int.parse(selectedPipa[0]) * priceList[0]}'),
        ),
      ],
    ),
    DataRow(
      cells: [
        DataCell(
          Text('#101'),
        ),
        DataCell(
          Text(
            'Pipa Drainase',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        DataCell(
          Text(selectedPipaDrainase),
        ),
        DataCell(
          Text('${int.parse(selectedPipaDrainase[0]) * priceList[1]}'),
        ),
      ],
    ),
    DataRow(
      cells: [
        DataCell(
          Text('#102'),
        ),
        DataCell(
          Text(
            'Kabel Listrik',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        DataCell(
          Text(selectedKabelListrik),
        ),
        DataCell(
          Text('${int.parse(selectedKabelListrik[0]) * priceList[2]}'),
        ),
      ],
    ),
    DataRow(
      cells: [
        DataCell(
          Text('#103'),
        ),
        DataCell(
          Text(
            'Bracket Outdoor',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        DataCell(
          Text(selectedBracketOutdoor),
        ),
        DataCell(
          Text('${int.parse(selectedBracketOutdoor[0]) * priceList[3]}'),
        ),
      ],
    ),
    DataRow(
      cells: [
        DataCell(
          Text('#104'),
        ),
        DataCell(
          Text(
            'Dyna Bolt',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        DataCell(
          Text(selectedDynaBolt),
        ),
        DataCell(
          Text('${int.parse(selectedDynaBolt[0]) * priceList[4]}'),
        ),
      ],
    ),
  ];
}
