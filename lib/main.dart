import 'dart:async';

import 'package:flutter/material.dart';
import 'package:posttest5_1915016019_intankomalasari/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'posttest5_1915016019_intankomalasari',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        fontFamily: 'Georgia',
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Coffee Shop"),
        backgroundColor: Color.fromARGB(255, 254, 197, 117),
      ),
      backgroundColor: Color.fromARGB(255, 245, 193, 119),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 192,
                height: 243,
                margin: EdgeInsets.only(top: 61),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/image 2.png"),
                  ),
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.resolveWith((states) {
                    return const EdgeInsets.symmetric(
                        horizontal: 18, vertical: 8);
                  }),
                  backgroundColor: MaterialStateColor.resolveWith((states) {
                    return const Color.fromARGB(255, 254, 89, 29);
                  }),
                  shape: MaterialStateProperty.resolveWith((states) {
                    return StadiumBorder();
                  }),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) {
                        return SecondPage();
                      },
                    ),
                  );
                },
                child: Text(
                  'Varian Coffee',
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizeContainer(isActive: true, size: "☕"),
                  SizeContainer(size: "❤️"),
                  SizeContainer(isActive: true, size: "☕"),
                ],
              ),
              SizedBox(
                height: 70,
              ),
              new Text(
                "@1915016019_Intan Komalasari",
                style: TextStyle(
                    color: Color.fromARGB(255, 62, 55, 54),
                    fontSize: 12.0,
                    fontWeight: FontWeight.normal),
              ),
            ],
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 242, 180, 94),
              ),
              child: Text("Menu"),
            ),
            ListTile(
              leading: Icon(Icons.nat),
              title: Text("Varian"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) {
                      return SecondPage();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SizeContainer extends StatelessWidget {
  const SizeContainer({Key? key, this.isActive = false, required this.size})
      : super(key: key);

  final bool isActive;
  final String size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 85,
      height: 60,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color:
            isActive ? Color.fromARGB(255, 188, 105, 11) : Colors.transparent,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          width: 1,
          color: Color.fromARGB(255, 188, 105, 11),
        ),
      ),
      child: Text(
        size,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: isActive ? Colors.white : Color.fromARGB(255, 188, 105, 11),
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 45,
      margin: EdgeInsets.only(top: 50),
      alignment: Alignment.center,
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: Color(0xffF18265)),
        onPressed: () {},
        child: Text(
          "Pesan Sekarang",
          style: TextStyle(
            color: Color(0xffffffff),
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  static final List<Widget> tabBar = [
    Tab(text: "Hot Coffee"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Product",
          style: TextStyle(
            fontSize: 18,
            color: Color.fromARGB(255, 244, 243, 240),
          ),
        ),
        actions: [
          Icon(Icons.favorite),
          Icon(Icons.more_vert),
        ],
        backgroundColor: MaterialStateColor.resolveWith((states) {
          return Color.fromARGB(255, 255, 129, 83);
        }),
      ),
      backgroundColor: Color.fromARGB(255, 236, 111, 65),
      body: GridView.count(
        //widget yang akan ditampilkan dalam 1 baris adalah 2
        crossAxisCount: 2,

        children: [
          //card ditampilkan disini
          CustomCard(
            title: "Latte",
            image:
                "https://rencanamu.id/assets/file_uploaded/editor/1551185749-gettyimage.jpg",
          ),

          CustomCard(
              title: "Espreso",
              image:
                  "https://rencanamu.id/assets/file_uploaded/editor/1551185691-set-fusion.jpg"),

          CustomCard(
              title: "Americano",
              image:
                  "https://rencanamu.id/assets/file_uploaded/editor/1551185846-americano-.jpg"),
          CustomCard(
              title: "Macchiato",
              image:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtDIj2Xy_iLdE9ips26VPPhJUgbFi9zlixgX_PDsIWTvjvJgQRrxUTLK3oMeJo698CshA&usqp=CAU"),
        ],
      ),
    );
  }
}

//membuat customcard yang bisa kita panggil setiap kali dibutuhkan
class CustomCard extends StatelessWidget {
  //ini adalah konstruktor, saat class dipanggil parameter konstruktor wajib diisi
  //parameter ini akan mengisi title dan gambar pada setiap card
  CustomCard({required this.title, required this.image});

  String title;
  String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Card(
        //menambahkan bayangan
        elevation: 5,

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                        image,
                      ),
                      fit: BoxFit.cover)),
            ),
            ListTile(
              title: Text(
                "Detail Produk",
                style: TextStyle(
                  fontSize: 12,
                  color: Color.fromARGB(255, 237, 236, 234),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) {
                      return FourPage();
                    },
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(title),
            )
          ],
        ),
      ),
    );
  }
}

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

enum Ukg { unknown, tall, grande, venti }

class _ThirdPageState extends State<ThirdPage> {
  int _index = 1;
  final namaDepanCtrl = TextEditingController();
  final namaBelakangCtrl = TextEditingController();
  Ukg ukg = Ukg.unknown;

  bool isLatte = false;
  bool isEspereso = false;
  bool isAmericano = false;
  bool isMachiato = false;
  String namaDepan = "", namaBelakang = '';
  List<Widget> pages = [
    Container(color: Colors.red),
    Container(color: Colors.green),
    Container(color: Colors.blue),
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    namaDepanCtrl.dispose();
    namaBelakangCtrl.dispose();
    super.dispose();
  }

  String getUkg(Ukg? value) {
    if (value == Ukg.tall) {
      return "Tall";
    } else if (value == Ukg.grande) {
      return "Grande";
    } else if (value == Ukg.venti) {
      return "Venti";
    }
    return "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pemesanan",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 244, 243, 240),
          ),
        ),
        actions: [
          Icon(Icons.favorite),
          Icon(Icons.more_vert),
        ],
        backgroundColor: Color.fromARGB(255, 255, 129, 83),
      ),
      backgroundColor: Color(0xffF18265),
      body: ListView(
        children: [
          Container(
            width: 192,
            height: 243,
            margin: EdgeInsets.only(top: 61),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/logo.png"),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Nama Pemesan $namaDepan $namaBelakang'),
              Text('Ukuran Gelas ${getUkg(ukg)} '),
              Text('Menu ${isLatte ? "Latte" : "Espereso"}'),
              const SizedBox(height: 20),
              TextField(
                maxLines: 4,
                controller: namaDepanCtrl,
                decoration: new InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(2.0)),
                  icon: Icon(Icons.people),
                  labelText: "Nama Depan",
                  hintText: 'Nama Depan',
                ),
              ),
              const SizedBox(height: 20), // Margin Bohongan
              TextFormField(
                maxLines: 2,
                controller: namaBelakangCtrl,
                decoration: new InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(2.0)),
                    icon: Icon(Icons.people),
                    hintText: 'Nama Belakang',
                    labelText: "Nama Belakang"),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: ListTile(
                      title: const Text("Tall (354 ml)"),
                      leading: Radio(
                        groupValue: ukg,
                        value: Ukg.tall,
                        onChanged: (Ukg? value) {
                          setState(() {
                            ukg = value!;
                          });
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      title: const Text("Grande (473 ml)"),
                      leading: Radio(
                        groupValue: ukg,
                        value: Ukg.grande,
                        onChanged: (Ukg? value) {
                          setState(() {
                            ukg = value!;
                          });
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      title: const Text("Venti (591 ml)"),
                      leading: Radio(
                        groupValue: ukg,
                        value: Ukg.venti,
                        onChanged: (Ukg? value) {
                          setState(() {
                            ukg = value!;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
              ListTile(
                title: const Text("Latte?"),
                leading: Checkbox(
                  value: isLatte,
                  onChanged: (bool? value) {
                    setState(() {
                      isLatte = value!;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text("Espereso?"),
                leading: Checkbox(
                  value: isEspereso,
                  onChanged: (bool? value) {
                    setState(() {
                      isEspereso = value!;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text("Americano?"),
                leading: Checkbox(
                  value: isAmericano,
                  onChanged: (bool? value) {
                    setState(() {
                      isAmericano = value!;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text("Machiato?"),
                leading: Checkbox(
                  value: isMachiato,
                  onChanged: (bool? value) {
                    setState(() {
                      isMachiato = value!;
                    });
                  },
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
          ElevatedButton(
            style: ButtonStyle(
              padding: MaterialStateProperty.resolveWith((states) {
                return const EdgeInsets.symmetric(horizontal: 18, vertical: 8);
              }),
              backgroundColor: MaterialStateColor.resolveWith((states) {
                return const Color.fromARGB(255, 254, 89, 29);
              }),
              shape: MaterialStateProperty.resolveWith((states) {
                return StadiumBorder();
              }),
            ),
            onPressed: () {
              final snackBar = SnackBar(
                content: Text('Pesanan Diproses (-Intan Komalasari)'),
                action: SnackBarAction(
                  label: 'Batal',
                  onPressed: () {
                    // Some code to undo the change.
                  },
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
              setState(() {
                namaDepan = namaDepanCtrl.text;
                namaBelakang = namaBelakangCtrl.text;
              });
            },
            child: Text(
              'Pesan !',
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}

class FourPage extends StatelessWidget {
  const FourPage({Key? key}) : super(key: key);

  static final List<Widget> tabBar = [
    Tab(text: "Hot Coffee"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Detail Product",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 244, 243, 240),
            ),
          ),
          actions: [
            Icon(Icons.favorite),
            Icon(Icons.more_vert),
          ],
          backgroundColor: Color.fromARGB(255, 255, 129, 83),
        ),
        body: ListView(children: [
          Stack(
            children: <Widget>[
              Container(
                  height: MediaQuery.of(context).size.height - 20.0,
                  width: MediaQuery.of(context).size.width,
                  color: Color(0xffF18265)),
              Positioned(
                  top: MediaQuery.of(context).size.height / 2,
                  child: Container(
                      height: MediaQuery.of(context).size.height / 2 - 20.0,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(40.0),
                              topLeft: Radius.circular(40.0)),
                          color: Colors.white))),

              //Content
              Positioned(
                  top: MediaQuery.of(context).size.height / 2 + 25.0,
                  left: 15.0,
                  child: Container(
                      height: (MediaQuery.of(context).size.height / 2) - 50.0,
                      width: MediaQuery.of(context).size.width,
                      child: ListView(children: [
                        Text(
                          'Waktu tunggu',
                          style: TextStyle(
                              fontFamily: 'nunito',
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF726B68)),
                        ),
                        SizedBox(height: 7.0),
                        Text(
                          '5 menit',
                          style: TextStyle(
                              fontFamily: 'nunito',
                              fontSize: 14.0,
                              color: Color(0xFFC6C4C4)),
                        ),
                        SizedBox(height: 10.0),
                        //This is the line
                        Padding(
                          padding: const EdgeInsets.only(right: 35.0),
                          child: Container(
                            height: 0.5,
                            color: Color(0xFFC6C4C4),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'Komposisi & Bahan',
                          style: TextStyle(
                              fontFamily: 'nunito',
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF726B68)),
                        ),
                        Text(
                          'Rahasia',
                          style: TextStyle(
                              fontFamily: 'nunito',
                              fontSize: 14.0,
                              color: Color(0xFFD4D3D2)),
                        ),
                        Container(
                            height: 10.0,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                            )),
                        //Line
                        Padding(
                          padding: const EdgeInsets.only(right: 35.0),
                          child: Container(
                            height: 0.5,
                            color: Color(0xFFC6C4C4),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'Nutrisi',
                          style: TextStyle(
                              fontFamily: 'nunito',
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF726B68)),
                        ),
                        SizedBox(height: 10.0),
                        Row(children: [
                          Text(
                            'Kalori',
                            style: TextStyle(
                                fontFamily: 'nunito',
                                fontSize: 14.0,
                                color: Color(0xFFD4D3D2)),
                          ),
                          SizedBox(width: 15.0),
                          Text(
                            '250',
                            style: TextStyle(
                                fontFamily: 'nunito',
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF716966)),
                          ),
                        ]),
                        SizedBox(height: 10.0),
                        Row(
                          children: <Widget>[
                            Text(
                              'Protein',
                              style: TextStyle(
                                  fontFamily: 'nunito',
                                  fontSize: 14.0,
                                  color: Color(0xFFD4D3D2)),
                            ),
                            SizedBox(width: 15.0),
                            Text(
                              '10g',
                              style: TextStyle(
                                  fontFamily: 'nunito',
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF716966)),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          children: <Widget>[
                            Text(
                              'Kafein',
                              style: TextStyle(
                                  fontFamily: 'nunito',
                                  fontSize: 14.0,
                                  color: Color(0xFFD4D3D2)),
                            ),
                            SizedBox(width: 15.0),
                            Text(
                              '150mg',
                              style: TextStyle(
                                  fontFamily: 'nunito',
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF716966)),
                            ),
                          ],
                        ),
                        SizedBox(height: 15.0),
                        //Line
                        Padding(
                          padding: const EdgeInsets.only(right: 35.0),
                          child: Container(
                            height: 0.5,
                            color: Color(0xFFC6C4C4),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        ElevatedButton(
                          style: ButtonStyle(
                            padding:
                                MaterialStateProperty.resolveWith((states) {
                              return const EdgeInsets.symmetric(
                                  horizontal: 18, vertical: 8);
                            }),
                            backgroundColor:
                                MaterialStateColor.resolveWith((states) {
                              return const Color.fromARGB(255, 254, 89, 29);
                            }),
                            shape: MaterialStateProperty.resolveWith((states) {
                              return StadiumBorder();
                            }),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) {
                                  return ThirdPage();
                                },
                              ),
                            );
                          },
                          child: Text(
                            'Pesan Sekarang',
                          ),
                        ),

                        SizedBox(height: 5.0)
                      ]))),

              Positioned(
                  top: MediaQuery.of(context).size.height / 10,
                  right: 95.0,
                  child: Container(
                      height: 200.0,
                      width: 200.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              topLeft: Radius.circular(10.0)),
                          image: DecorationImage(
                              image: AssetImage('assets/latte.jpg'),
                              fit: BoxFit.cover)))),
              Positioned(
                  top: 25.0,
                  left: 15.0,
                  child: Container(
                      height: 300.0,
                      width: 250.0,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //use a row with crossaxis as end
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Container(
                                  width: 150.0,
                                  child: Text('Latte',
                                      style: TextStyle(
                                          fontFamily: 'varela',
                                          fontSize: 30.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white)),
                                ),
                                SizedBox(width: 15.0),
                              ],
                            ),
                            SizedBox(height: 10.0),
                            Container(
                              width: 170.0,
                              child: Text(
                                  'Salah satu pilihan menu yang banyak dipesan di Coffee Shop adalah kopi latte. Menu ini merupakan perpaduan antara kopi espresso dan susu yang dapat dinikmati kapan saja, baik dalam keadaan dingin ataupun panas.',
                                  style: TextStyle(
                                      fontFamily: 'nunito',
                                      fontSize: 13.0,
                                      color: Colors.white)),
                            ),
                            SizedBox(height: 20.0),
                            Row(children: [
                              Container(
                                  height: 60.0,
                                  width: 60.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30.0),
                                      color: Color(0xFF473D3A)),
                                  child: Center(
                                      child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text('4.2',
                                          style: TextStyle(
                                              fontFamily: 'nunito',
                                              fontSize: 13.0,
                                              color: Colors.white)),
                                      Text('/5',
                                          style: TextStyle(
                                              fontFamily: 'nunito',
                                              fontSize: 13.0,
                                              color: Color(0xFF7C7573))),
                                    ],
                                  ))),
                              SizedBox(width: 15.0),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Stack(children: [
                                      Container(height: 35.0, width: 80.0),
                                      Positioned(
                                          left: 40.0,
                                          child: Container(
                                              height: 35.0,
                                              width: 35.0,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          17.5),
                                                  border: Border.all(
                                                      color: Color(0xFFF3B2B7),
                                                      style: BorderStyle.solid,
                                                      width: 1.0),
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/image 3.png'),
                                                      fit: BoxFit.cover)))),
                                      Positioned(
                                        left: 20.0,
                                        child: Container(
                                          height: 35.0,
                                          width: 35.0,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(17.5),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/image 1.png'),
                                                  fit: BoxFit.cover),
                                              border: Border.all(
                                                  color: Color(0xFFF3B2B7),
                                                  style: BorderStyle.solid,
                                                  width: 1.0)),
                                        ),
                                      ),
                                      Container(
                                        height: 35.0,
                                        width: 35.0,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(17.5),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/image 4.png'),
                                                fit: BoxFit.cover),
                                            border: Border.all(
                                                color: Color(0xFFF3B2B7),
                                                style: BorderStyle.solid,
                                                width: 1.0)),
                                      ),
                                    ]),
                                    SizedBox(height: 3.0),
                                    Text(
                                      '+ 27 more',
                                      style: TextStyle(
                                          fontFamily: 'nunito',
                                          fontSize: 12.0,
                                          color: Colors.white),
                                    )
                                  ])
                            ])
                          ])))
            ],
          )
        ]));
  }

  buildIngredientItem(String name, Icon iconName, Color bgColor) {
    return Padding(
        padding: EdgeInsets.only(right: 10.0),
        child: Column(children: [
          Container(
              height: 50.0,
              width: 50.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0), color: bgColor),
              child: Center(child: iconName)),
          SizedBox(height: 4.0),
          Container(
              width: 60.0,
              child: Center(
                  child: Text(name,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'nunito',
                          fontSize: 12.0,
                          color: Color(0xFFC2C0C0)))))
        ]));
  }
}
