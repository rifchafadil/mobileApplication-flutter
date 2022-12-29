import 'package:flutter/material.dart';

class Product {
  final String image, title, country, description;
  final int size, id;
  final Color color;
  Product({
    this.id,
    this.image,
    this.title,
    this.country,
    this.description,
    this.size,
    this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Raja Ampat",
      country: "Papua Barat",
      size: 12,
      description: dummyText,
      image: "assets/images/rajaAmpat.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Gunung Bromo",
      country: "Malang",
      size: 12,
      description: dummyText,
      image: "assets/images/bromo.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 3,
      title: "Labuan Bajo",
      country: "NTT",
      size: 12,
      description: dummyText,
      image: "assets/images/labuanBajo.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 4,
      title: "Trawangan",
      country: "Surabaya",
      size: 12,
      description: dummyText,
      image: "assets/images/pantai.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 5,
      title: "Pantai Kuta",
      country: "Bali",
      size: 12,
      description: dummyText,
      image: "assets/images/image26.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 6,
      title: "Pantai Balekambang",
      country: "Nusa Tenggara Timur",
      size: 12,
      description: dummyText,
      image: "assets/images/image28.png",
      color: Color(0xFF3D82AE)),
];

String dummyText =
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.";
