class ProductModel {
  final String image;
  final String name;
  final double priceAfterDiscount;
  final double priceBeforeDiscount;
  final double rating;
  final int ratingNumber;

  const ProductModel({
    required this.image,
    required this.name,
    required this.priceAfterDiscount,
    required this.priceBeforeDiscount,
    required this.rating,
    required this.ratingNumber,
  });
}
