class DemoModel{
  String? productImage;
  String? productName;
  int quantity;

  DemoModel(this.productImage,this.productName,this.quantity);
}

List<DemoModel> demoModel = [
  DemoModel("assets/images/first_image.jpg","First Image",1),
  DemoModel("assets/images/second_image.jpeg","Second Image",2),
];
