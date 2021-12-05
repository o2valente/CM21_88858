import 'package:flutter/material.dart';

void main() {
  runApp((const MyApp(title: 'Formula 1 Standings',)));
}


class MyApp extends StatefulWidget {
  const MyApp({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyApp> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyApp> {
  final _whiteText = TextStyle(color : Colors.white, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.
            bottom: const TabBar(
              tabs : [
                Tab(text: "Drivers"),
                Tab(text: "Constructors"),
                Tab(text: "Race results"),
              ],
            ),
            backgroundColor: Colors.red,
            title: Text(widget.title),
          ),
            body: TabBarView(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: DataTable(
                    dataRowColor: MaterialStateColor.resolveWith((states) => Colors.black),
                    columns: const [
                      DataColumn(label: Text(
                          '',
                      )),
                      DataColumn(label: Text(
                          '',
                      )),
                      DataColumn(label: Text(
                          'Name',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                      )),
                      DataColumn(label: Text(
                          'Points',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                      )),
                    ],
                    rows: [
                      DataRow(
                          cells: [
                        DataCell(Text('1', style: _whiteText)),
                        DataCell(Icon(Icons.title_outlined, color: Colors.blueAccent)),
                        DataCell(Text('Max Verstappen', style: _whiteText)),
                            DataCell(Row(
                              children:[
                                Container(
                                  width: 50,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.all(Radius.circular(20))
                                  ),
                                  child: Text('287.5', style: _whiteText, textAlign: TextAlign.center),
                                ),
                                Icon(Icons.arrow_forward_ios, color: Colors.red),
                              ],
                            ))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('2', style: _whiteText)),
                        DataCell(Icon(Icons.title_outlined, color: Colors.lightGreen)),
                        DataCell(Text('Lewis Hamilton', style: _whiteText)),
                        DataCell(Row(
                          children:[
                            Container(
                              width: 50,
                              height: 20,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Text('275.5', style: _whiteText, textAlign: TextAlign.center),
                            ),
                            Icon(Icons.arrow_forward_ios, color: Colors.red),
                          ],
                        ))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('3', style: _whiteText)),
                        DataCell(Icon(Icons.title_outlined, color: Colors.lightGreen)),
                        DataCell(Text('Valtteri Bottas', style: _whiteText)),
                        DataCell(Row(
                          children:[
                            Container(
                              width: 50,
                              height: 20,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Text('185', style: _whiteText, textAlign: TextAlign.center),
                            ),
                            Icon(Icons.arrow_forward_ios, color: Colors.red),
                          ],
                        ))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('4', style: _whiteText)),
                        DataCell(Icon(Icons.title_outlined, color: Colors.blueAccent)),
                        DataCell(Text('Sergio Perez', style: _whiteText)),
                        DataCell(Row(
                          children:[
                            Container(
                              width: 50,
                              height: 20,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Text('150', style: _whiteText, textAlign: TextAlign.center),
                            ),
                            Icon(Icons.arrow_forward_ios, color: Colors.red),
                          ],
                        ))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('5', style: _whiteText)),
                        DataCell(Icon(Icons.title_outlined, color: Colors.orange)),
                        DataCell(Text('Lando Norris', style: _whiteText)),
                        DataCell(Row(
                          children:[
                            Container(
                              width: 50,
                              height: 20,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Text('149', style: _whiteText, textAlign: TextAlign.center),
                            ),
                            Icon(Icons.arrow_forward_ios, color: Colors.red),
                          ],
                        ))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('6', style: _whiteText)),
                        DataCell(Icon(Icons.title_outlined, color: Colors.red)),
                        DataCell(Text('Charles Leclerc', style: _whiteText)),
                        DataCell(Row(
                          children:[
                            Container(
                              width: 50,
                              height: 20,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Text('128', style: _whiteText, textAlign: TextAlign.center),
                            ),
                            Icon(Icons.arrow_forward_ios, color: Colors.red),
                          ],
                        ))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('7', style: _whiteText)),
                        DataCell(Icon(Icons.title_outlined, color: Colors.red)),
                        DataCell(Text('Carlos Sainz', style: _whiteText)),
                        DataCell(Row(
                          children:[
                            Container(
                              width: 50,
                              height: 20,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Text('122.5', style: _whiteText, textAlign: TextAlign.center),
                            ),
                            Icon(Icons.arrow_forward_ios, color: Colors.red),
                          ],
                        ))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('8', style: _whiteText)),
                        DataCell(Icon(Icons.title_outlined, color: Colors.orange)),
                        DataCell(Text('Daniel Ricciardo', style: _whiteText)),
                        DataCell(Row(
                          children:[
                            Container(
                              width: 50,
                              height: 20,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Text('105', style: _whiteText, textAlign: TextAlign.center),
                            ),
                            Icon(Icons.arrow_forward_ios, color: Colors.red),
                          ],
                        ))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('9', style: _whiteText)),
                        DataCell(Icon(Icons.title_outlined, color: Colors.grey)),
                        DataCell(Text('Pierre Gasly', style: _whiteText)),
                        DataCell(Row(
                          children:[
                            Container(
                              width: 50,
                              height: 20,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Text('74', style: _whiteText, textAlign: TextAlign.center),
                            ),
                            Icon(Icons.arrow_forward_ios, color: Colors.red),
                          ],
                        ))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('10', style: _whiteText)),
                        DataCell(Icon(Icons.title_outlined, color: Colors.lightBlue)),
                        DataCell(Text('Fernado Alonso', style: _whiteText)),
                        DataCell(Row(
                          children:[
                            Container(
                              width: 50,
                              height: 20,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Text('58', style: _whiteText, textAlign: TextAlign.center),
                            ),
                            Icon(Icons.arrow_forward_ios, color: Colors.red),
                          ],
                        ))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('11', style: _whiteText)),
                        DataCell(Icon(Icons.title_outlined, color: Colors.lightBlue)),
                        DataCell(Text('Esteban Ocon', style: _whiteText)),
                        DataCell(Row(
                          children:[
                            Container(
                              width: 50,
                              height: 20,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Text('46', style: _whiteText, textAlign: TextAlign.center),
                            ),
                            Icon(Icons.arrow_forward_ios, color: Colors.red),
                          ],
                        ))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('12', style: _whiteText)),
                        DataCell(Icon(Icons.title_outlined, color: Colors.green)),
                        DataCell(Text('Sebastian Vettel', style: _whiteText)),
                        DataCell(Row(
                          children:[
                            Container(
                              width: 50,
                              height: 20,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Text('36', style: _whiteText, textAlign: TextAlign.center),
                            ),
                            Icon(Icons.arrow_forward_ios, color: Colors.red),
                          ],
                        ))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('13', style: _whiteText)),
                        DataCell(Icon(Icons.title_outlined, color: Colors.green)),
                        DataCell(Text('Lance Stroll', style: _whiteText)),
                        DataCell(Row(
                          children:[
                            Container(
                              width: 50,
                              height: 20,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Text('26', style: _whiteText, textAlign: TextAlign.center),
                            ),
                            Icon(Icons.arrow_forward_ios, color: Colors.red),
                          ],
                        ))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('14', style: _whiteText)),
                        DataCell(Icon(Icons.title_outlined, color: Colors.grey)),
                        DataCell(Text('Yuki Tsunoda', style: _whiteText)),
                        DataCell(Row(
                          children:[
                            Container(
                              width: 50,
                              height: 20,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Text('20', style: _whiteText, textAlign: TextAlign.center),
                            ),
                            Icon(Icons.arrow_forward_ios, color: Colors.red),
                          ],
                        ))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('15', style: _whiteText)),
                        DataCell(Icon(Icons.title_outlined, color: Colors.blueGrey)),
                        DataCell(Text('George Russel', style: _whiteText)),
                        DataCell(Row(
                          children:[
                            Container(
                              width: 50,
                              height: 20,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Text('16', style: _whiteText, textAlign: TextAlign.center),
                            ),
                            Icon(Icons.arrow_forward_ios, color: Colors.red),
                          ],
                        ))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('16', style: _whiteText)),
                        DataCell(Icon(Icons.title_outlined, color: Colors.blueGrey)),
                        DataCell(Text('Nicholas Latifi', style: _whiteText)),
                        DataCell(Row(
                          children:[
                            Container(
                              width: 50,
                              height: 20,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Text('7', style: _whiteText, textAlign: TextAlign.center),
                            ),
                            Icon(Icons.arrow_forward_ios, color: Colors.red),
                          ],
                        ))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('17', style: _whiteText)),
                        DataCell(Icon(Icons.title_outlined, color: Colors.redAccent)),
                        DataCell(Text('Kimi Räikkönen', style: _whiteText)),
                        DataCell(Row(
                          children:[
                            Container(
                              width: 50,
                              height: 20,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Text('6', style: _whiteText, textAlign: TextAlign.center),
                            ),
                            Icon(Icons.arrow_forward_ios, color: Colors.red),
                          ],
                        ))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('18', style: _whiteText)),
                        DataCell(Icon(Icons.title_outlined, color: Colors.redAccent)),
                        DataCell(Text('Antonio Giovinazzi', style: _whiteText)),
                        DataCell(Row(
                          children:[
                            Container(
                              width: 50,
                              height: 20,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Text('1', style: _whiteText, textAlign: TextAlign.center),
                            ),
                            Icon(Icons.arrow_forward_ios, color: Colors.red),
                          ],
                        ))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('19', style: _whiteText)),
                        DataCell(Icon(Icons.title_outlined, color: Colors.white)),
                        DataCell(Text('Mick Shumacher', style: _whiteText)),
                        DataCell(Row(
                          children:[
                            Container(
                              width: 50,
                              height: 20,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Text('0', style: _whiteText, textAlign: TextAlign.center),
                            ),
                            Icon(Icons.arrow_forward_ios, color: Colors.red),
                          ],
                        ))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('20', style: _whiteText)),
                        DataCell(Icon(Icons.title_outlined, color: Colors.blue)),
                        DataCell(Text('Robert Kubica', style: _whiteText)),
                        DataCell(Row(
                          children:[
                            Container(
                              width: 50,
                              height: 20,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Text('0', style: _whiteText, textAlign: TextAlign.center),
                            ),
                            Icon(Icons.arrow_forward_ios, color: Colors.red),
                          ],
                        ))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('21', style: _whiteText)),
                        DataCell(Icon(Icons.title_outlined, color: Colors.white)),
                        DataCell(Text('Nikita Mazepin', style: _whiteText)),
                        DataCell(Row(
                          children:[
                            Container(
                              width: 50,
                              height: 20,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Text('0', style: _whiteText, textAlign: TextAlign.center),
                            ),
                            Icon(Icons.arrow_forward_ios, color: Colors.red),
                          ],
                        ))
                      ]),
                    ],
                  ),
                ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: DataTable(
                  dataRowColor: MaterialStateColor.resolveWith((states) => Colors.black),
                  columns: const [
                    DataColumn(label: Text(
                        '',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                    )),
                    DataColumn(label: Text(
                        'Name',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                    )),
                    DataColumn(label: Text(
                        'Points',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                    )),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text('1', style: _whiteText)),
                      DataCell(Text('Mercedes', style: _whiteText)),
                      DataCell(Row(
                        children:[
                          Container(
                            width: 50,
                            height: 20,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                color: Colors.grey,
                                borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                            child: Text('460.5', style: _whiteText, textAlign: TextAlign.center),
                          ),
                          Icon(Icons.arrow_forward_ios, color: Colors.red),
                        ],
                      ))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('2', style: _whiteText)),
                      DataCell(Text('Red Bull racing', style: _whiteText)),
                      DataCell(Row(
                        children:[
                          Container(
                            width: 50,
                            height: 20,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                color: Colors.grey,
                                borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                            child: Text('437.5', style: _whiteText, textAlign: TextAlign.center),
                          ),
                          Icon(Icons.arrow_forward_ios, color: Colors.red),
                        ],
                      ))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('3', style: _whiteText)),
                      DataCell(Text('McLaren', style: _whiteText)),
                      DataCell(Row(
                        children:[
                          Container(
                            width: 50,
                            height: 20,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                color: Colors.grey,
                                borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                            child: Text('254', style: _whiteText, textAlign: TextAlign.center),
                          ),
                          Icon(Icons.arrow_forward_ios, color: Colors.red),
                        ],
                      ))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('4', style: _whiteText)),
                      DataCell(Text('Ferrari', style: _whiteText)),
                      DataCell(Row(
                        children:[
                          Container(
                            width: 50,
                            height: 20,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                color: Colors.grey,
                                borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                            child: Text('250.5', style: _whiteText, textAlign: TextAlign.center),
                          ),
                          Icon(Icons.arrow_forward_ios, color: Colors.red),
                        ],
                      ))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('5', style: _whiteText)),
                      DataCell(Text('Alpine', style: _whiteText)),
                      DataCell(Row(
                        children:[
                          Container(
                            width: 50,
                            height: 20,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                color: Colors.grey,
                                borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                            child: Text('104', style: _whiteText, textAlign: TextAlign.center),
                          ),
                          Icon(Icons.arrow_forward_ios, color: Colors.red),
                        ],
                      ))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('6', style: _whiteText)),
                      DataCell(Text('AlphaTauri', style: _whiteText)),
                      DataCell(Row(
                        children:[
                          Container(
                            width: 50,
                            height: 20,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                color: Colors.grey,
                                borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                            child: Text('94', style: _whiteText, textAlign: TextAlign.center),
                          ),
                          Icon(Icons.arrow_forward_ios, color: Colors.red),
                        ],
                      ))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('7', style: _whiteText)),
                      DataCell(Text('Aston martin', style: _whiteText)),
                      DataCell(Row(
                        children:[
                          Container(
                            width: 50,
                            height: 20,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                color: Colors.grey,
                                borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                            child: Text('62', style: _whiteText, textAlign: TextAlign.center),
                          ),
                          Icon(Icons.arrow_forward_ios, color: Colors.red),
                        ],
                      ))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('8', style: _whiteText)),
                      DataCell(Text('Williams', style: _whiteText)),
                      DataCell(Row(
                        children:[
                          Container(
                            width: 50,
                            height: 20,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                color: Colors.grey,
                                borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                            child: Text('23', style: _whiteText, textAlign: TextAlign.center),
                          ),
                          Icon(Icons.arrow_forward_ios, color: Colors.red),
                        ],
                      ))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('9', style: _whiteText)),
                      DataCell(Text('Alfa Romeo Racing', style: _whiteText)),
                      DataCell(Row(
                        children:[
                          Container(
                            width: 50,
                            height: 20,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                color: Colors.grey,
                                borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                            child: Text('7', style: _whiteText, textAlign: TextAlign.center),
                          ),
                          Icon(Icons.arrow_forward_ios, color: Colors.red),
                        ],
                      ))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('10', style: _whiteText)),
                      DataCell(Text('Haas F1 Team', style: _whiteText)),
                      DataCell(Row(
                        children:[
                          Container(
                            width: 50,
                            height: 20,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                color: Colors.grey,
                                borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                            child: Text('0', style: _whiteText, textAlign: TextAlign.center),
                          ),
                          Icon(Icons.arrow_forward_ios, color: Colors.red),
                        ],
                      ))
                    ]),
                  ],
                ),
              ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: DataTable(
                dataRowColor: MaterialStateColor.resolveWith((states) => Colors.black),
                  columns: const [
                    DataColumn(label: Text(
                        'Date',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                    )),
                    DataColumn(label: Text(
                        'Location',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                    )),
                    DataColumn(label: Text(
                        'Podium',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                    )),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text('22-24 Oct.', style: _whiteText)),
                      DataCell(Text('United States', style: _whiteText)),
                      DataCell(Text('Ver / Ham / Per', style: _whiteText)),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('08-10 Oct.', style: _whiteText)),
                      DataCell(Text('Turkey', style: _whiteText)),
                      DataCell(Text('Bot / Ver / Per', style: _whiteText)),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('24-26 Sept.', style: _whiteText)),
                      DataCell(Text('Russia', style: _whiteText)),
                      DataCell(Text('Ham / Ver / Sai', style: _whiteText)),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('10-12 Sept.', style: _whiteText)),
                      DataCell(Text('Italy', style: _whiteText)),
                      DataCell(Text('Ric / Nor / Bot', style: _whiteText)),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('03-05 Sept.', style: _whiteText)),
                      DataCell(Text('Netherlands', style: _whiteText)),
                      DataCell(Text('Ver / Ham / Bot', style: _whiteText)),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('27-29 Aug.', style: _whiteText)),
                      DataCell(Text('Belgium', style: _whiteText)),
                      DataCell(Text('Ver / Rus / Ham', style: _whiteText)),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('30-01 Jul.-Aug.', style: _whiteText)),
                      DataCell(Text('Hungary', style: _whiteText)),
                      DataCell(Text('Oco / Ham / Sai', style: _whiteText)),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('16-18 Jul.', style: _whiteText)),
                      DataCell(Text('Great Britain', style: _whiteText)),
                      DataCell(Text('Ham / Lec / Bot', style: _whiteText)),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('02-04 Jul.', style: _whiteText)),
                      DataCell(Text('Austria', style: _whiteText)),
                      DataCell(Text('Ver / Ham / Bot', style: _whiteText)),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('25-27 Jun.', style: _whiteText)),
                      DataCell(Text('Austria', style: _whiteText)),
                      DataCell(Text('Ver / Ham / Bot', style: _whiteText)),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('18-20 Jun.', style: _whiteText)),
                      DataCell(Text('France', style: _whiteText)),
                      DataCell(Text('Ver / Ham / Per', style: _whiteText)),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('04-06 Jun.', style: _whiteText)),
                      DataCell(Text('Azerbaijan', style: _whiteText)),
                      DataCell(Text('Per / Vet / Gas', style: _whiteText)),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('20-23 Monaco', style: _whiteText)),
                      DataCell(Text('Monaco', style: _whiteText)),
                      DataCell(Text('Ver / Sai / Nor', style: _whiteText)),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('07-09', style: _whiteText)),
                      DataCell(Text('Spain', style: _whiteText)),
                      DataCell(Text('Ham / Ver / Bot', style: _whiteText)),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('30-02', style: _whiteText)),
                      DataCell(Text('Portugal', style: _whiteText)),
                      DataCell(Text('Ham / Ver / Bot', style: _whiteText)),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('16-18 Apr.', style: _whiteText)),
                      DataCell(Text('Italy', style: _whiteText)),
                      DataCell(Text('Ver / Ham / Nor', style: _whiteText)),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('26-28 Mar.', style: _whiteText)),
                      DataCell(Text('Bahrain', style: _whiteText)),
                      DataCell(Text('Ham / Ver / Bot', style: _whiteText)),
                    ]),
                  ],
                ),
              ),
              ],
            ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.black,
            type: BottomNavigationBarType.fixed,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.feed_rounded, color: Colors.white),
                label: 'Latest',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.live_tv, color: Colors.white),
                label: 'Video',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.flag_outlined, color: Colors.white),
                label: 'Racing',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.emoji_events_outlined, color: Colors.red),
                label: 'Standings',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.control_point_sharp, color: Colors.white),
                label: 'More',
              ),
            ],
            currentIndex: 3,
            unselectedItemColor: Colors.white,
            selectedItemColor: Colors.red,
          ),
        ),
      ),
    );
  }

}
