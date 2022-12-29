import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterstackeditemlist/screen/flashscreen.dart';
import 'package:flutterstackeditemlist/screen/home/home.dart';
import 'package:flutterstackeditemlist/main.dart';

class EditProfileUI extends StatelessWidget {
  final TextEditingController namaController = TextEditingController();
  final TextEditingController alamatController = TextEditingController();
  final TextEditingController teleponController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference user = firestore.collection('user');

    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 43, 87, 246),
          // title: Text('Pemesanan Tiket Wisata'),
        ),
        backgroundColor: Colors.brown[50],
        body: Stack(
          children: <Widget>[
            Container(
              height: 350,
              width: 800,
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 43, 87, 246),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(70),
                      bottomRight: Radius.circular(70),
                    )),
              ),
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(80, 75, 0, 0),
                  child: Text(
                    "Pemesanan Tiket \nDestinasi Wisata",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(60, 200, 0, 0),
              child: Container(
                height: 400,
                width: 300,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      children: <Widget>[
                        TextField(
                          controller: namaController,
                          decoration: InputDecoration(
                            labelText: "Nama Lengkap",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                                color: Colors.brown,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        TextField(
                          controller: alamatController,
                          decoration: InputDecoration(
                            labelText: "Alamat",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                                color: Colors.brown,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        TextField(
                          controller: teleponController,
                          decoration: InputDecoration(
                            labelText: "Telepon",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                                color: Colors.brown,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Color.fromARGB(255, 45, 99, 248))),
                            child: Text(
                              "Pesan",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onPressed: () {
                              //// ADD DATA HERE
                              user.add({
                                'nama': namaController.text,
                                'alamat': alamatController.text,
                                'telepon': teleponController.text,
                              });

                              namaController.text = '';
                              alamatController.text = '';
                              teleponController.text = '';
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
