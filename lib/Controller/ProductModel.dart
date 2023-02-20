class ProductModel {
  int? ID;
  String? Title;
  double? Price;
  String? Description;
  String? Category;
  String? Image;
  Rating? rating;

  ProductModel({
    this.ID,
    this.Title,
    this.Price,
    this.Description,
    this.Category,
    this.Image,
    this.rating,
  });

  ProductModel.fromJson(Map<String, dynamic> json) {
    ID = json['id'];
    Title = json['title'];
    Price = json['price'];
    Description = json['description'];
    Category = json['category'];
    Image = json['image'];
    rating = json['rating'] != null ? Rating.fromJson(json['rating']) : null;
  }
}

class Rating {
  dynamic rate;
  int? count;

  Rating({this.rate, this.count});

  Rating.fromJson(Map<String, dynamic> json) {
    rate = json['rate'];
    count = json['count'];
  }
}
