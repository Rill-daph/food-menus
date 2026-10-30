import 'package:flutter/material.dart';

void main() {
  runApp(Tes());
}

class Tes extends StatelessWidget {
  final List<String> menu = ["Soto", "Rawon"];
  final List<int> harga = [10000, 15000];
  final List<String> gambar = ["asset/Soto.jpg", "asset/Rawon.jpg"];
  final List<int> porsi = [10, 9];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.restaurant_menu, color: Colors.white),
          title: const Text(
            "Menu Makanan",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: const Color(0xff9b603e),
        ),
        body: SizedBox.expand(
          child: DecoratedBox(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("asset/2275061.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  // SizedBox untuk memberi jarak dari AppBar ke bawah
                  SizedBox(height: 25),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Table(
                      columnWidths: const {
                        0: FlexColumnWidth(1.0),
                        1: FlexColumnWidth(2.5),
                        2: FlexColumnWidth(1.8),
                        3: FlexColumnWidth(2.0),
                        4: FlexColumnWidth(1.5),
                      },
                      defaultVerticalAlignment:
                          TableCellVerticalAlignment.middle,
                      border: TableBorder.all(
                        width: 2,
                        color: Color(0xffc9c9c9),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      children: [
                        // Header
                        TableRow(
                          decoration:
                              const BoxDecoration(color: Color(0xff9b603e)),
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Center(
                                child: Text(
                                  'No',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Center(
                                child: Text(
                                  'Gambar',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Center(
                                child: Text(
                                  'Menu',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Center(
                                child: Text(
                                  'Harga',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Center(
                                child: Text(
                                  'Porsi',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        for (int i = 0; i < menu.length; i++)
                          TableRow(
                            decoration: BoxDecoration(
                              color: const Color(0xffeeeeee),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            children: [
                              Center(child: Text("${i + 1}")),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Center(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      gambar[i],
                                      width: 120,
                                      height: 80,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Center(child: Text(menu[i])),
                              Center(child: Text("Rp ${harga[i]}")),
                              Center(
                                child: Text(
                                  "${porsi[i]}",
                                ),
                              ),
                            ],
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
