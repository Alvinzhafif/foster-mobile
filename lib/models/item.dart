class Item {
  static List<Item> listItem = [];
  String Name;
  int Price;
  String Description;

  Item({
    required this.Name,
    required this.Price,
    required this.Description,
  });

  static void add({
    required Name,
    required Price,
    required Description,
  }) {
    listItem.add(Item(
      Name: Name,
      Price: Price,
      Description: Description,
    ));
  }
}
