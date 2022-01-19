class Tabaco{
  double? price;
  double? quantity;

  Tabaco({this.price, this.quantity});

  void setPrice(double v){
    price = v;
    print('これはTabaco${price}');
  }

  void setQuantity(double v){
    quantity = v;
  }

}