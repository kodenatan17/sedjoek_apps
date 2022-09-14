class Stock {
  Stock({
    required this.name,
    required this.brand,
    required this.urlImage,
    required this.description,
    required this.category,
    required this.daya,
    required this.price,
    required this.freeInstallation,
    required this.freeTreatment,
  });

  String name;
  String brand;
  String urlImage;
  String description;
  String category;
  String daya;
  String price;
  String freeInstallation;
  String freeTreatment;
}

final stocksData = [
  Stock(
    name: "SHARP A456UR",
    brand: "Sharp",
    urlImage: "assets/images/ac-sharp.png",
    description:
        "Meet the highest-performing inboard waterski boat ever created",
    category: "Capacity 0.5 PK",
    price: "Rp. 235.000",
    daya: "395 Watt",
    freeInstallation: "Free Installation",
    freeTreatment: "Free Treatment",
  ),
  Stock(
    name: "Panasonic A456UR",
    brand: "Panasonic",
    urlImage: "assets/images/ac-panasonic.png",
    description:
        "Meet the highest-performing inboard waterski boat ever created",
    category: "Capacity 0.5 PK",
    price: "Rp. 235.000",
    daya: "395 Watt",
    freeInstallation: "Free Installation",
    freeTreatment: "Free Treatment",
  ),
  Stock(
    name: "LG A456UR",
    brand: "LG",
    urlImage: "assets/images/ac-lg.png",
    description:
        "Meet the highest-performing inboard waterski boat ever created",
    category: "Capacity 0.5 PK",
    price: "Rp. 235.000",
    daya: "395 Watt",
    freeInstallation: "Free Installation",
    freeTreatment: "Free Treatment",
  ),
  Stock(
    name: "GREE A456UR",
    brand: "Gree",
    urlImage: "assets/images/ac-gree.png",
    description:
        "Meet the highest-performing inboard waterski boat ever created",
    category: "Capacity 0.5 PK",
    price: "Rp. 235.000",
    daya: "395 Watt",
    freeInstallation: "Free Installation",
    freeTreatment: "Free Treatment",
  ),
];