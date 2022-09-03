class StockModel {
  int? id;
  String? name;
  int? price;
  int? qty;

  StockModel(
      {required this.id,
      required this.name,
      required this.price,
      required this.qty});

  StockModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
    qty = json['qty'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'qty': qty,
    };
  }
}
