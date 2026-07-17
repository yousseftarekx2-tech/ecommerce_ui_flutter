import 'package:ecommerce_ui_flutter/features/home/presentation/widgets/product_model.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  final ProductModel data;
  final int itemIndex;

  const DetailsScreen({super.key, required this.data, required this.itemIndex});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int selectedColorIndex = 0;
  bool isDescriptionExpanded = false;
  bool isSizeExpanded = false;
  bool isFavorite = false;

  final List<Map<String, dynamic>> detailImages = const [
    {"image": "assets/images/Image 1.png"},
    {"image": "assets/images/Type=2 (1).png"},
    {"image": "assets/images/Type=4.png"},
    {"image": "assets/images/Product Image.png"},
  ];

  @override
  Widget build(BuildContext context) {
    // حساب مسافة الأمان السفلية للجهاز عشان نرفع البار عن زرار التليفون بالظبط
    final double bottomPadding = MediaQuery.of(context).padding.bottom;

    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      body: Stack(
        children: [
          ListView(
            // زودنا الـ padding السفلي هنا عشان يعمل حساب الارتفاع الجديد للبار
            padding: EdgeInsets.only(bottom: 75 + bottomPadding), 
            children: [
              Container(
                color: const Color(0xFFF9F9F9),
                margin: const EdgeInsets.all(30),
                width: 300,
                child: Image.asset(
                  detailImages[widget.itemIndex]["image"],
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${widget.data.name}", style: const TextStyle(fontSize: 15)),
                    const SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "\$${widget.data.priceAfterDiscount}",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 30,
                          ),
                        ),
                        const SizedBox(width: 7),
                        Text(
                          "\$${widget.data.priceBeforeDiscount}",
                          style: const TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                        const SizedBox(width: 7),
                        Image.asset("assets/icons/Disc.png"),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(Icons.star, color: Colors.amber, size: 14),
                        const SizedBox(width: 2),
                        Text(
                          widget.data.rating.toString(),
                          style: const TextStyle(fontSize: 15, color: Colors.black),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          "(${widget.data.ratingNumber.toString()})",
                          style: const TextStyle(fontSize: 14, color: Colors.black),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 6),
                      child: const Text(
                        "A minimalist chair with a reversible back cushion provides soft support for your back and has two sides to wear.",
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Divider(
                      color: Colors.grey,
                      thickness: 1,
                      indent: 0,
                      endIndent: 0,
                    ),
                    const SizedBox(height: 13),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6),
                      child: Text(
                        "Colors",
                        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: GridView.count(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        crossAxisCount: 2,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 12,
                        childAspectRatio: 2.8,
                        children: List.generate(4, (index) {
                          final List<Map<String, dynamic>> colorData = [
                            {"name": "Harvest Gold", "color": const Color(0xFFDA9100)},
                            {"name": "Eerie Black", "color": const Color(0xFF1B1B1B)},
                            {"name": "Flame", "color": const Color(0xFFE25822)},
                            {"name": "Pakistan Green", "color": const Color(0xFF006600)},
                          ];

                          final isSelected = selectedColorIndex == index;

                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedColorIndex = index;
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: isSelected
                                      ? const Color(0xFF006600)
                                      : Colors.grey.shade300,
                                  width: isSelected ? 2 : 1,
                                ),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: colorData[index]["color"],
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    child: Text(
                                      colorData[index]["name"],
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: isSelected
                                            ? FontWeight.bold
                                            : FontWeight.normal,
                                        color: Colors.black87,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Divider(
                      color: Colors.grey,
                      thickness: 1,
                      indent: 0,
                      endIndent: 0,
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isDescriptionExpanded = !isDescriptionExpanded;
                          });
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 250),
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Product Description",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Icon(
                                    isDescriptionExpanded
                                        ? Icons.keyboard_arrow_up
                                        : Icons.keyboard_arrow_down,
                                    color: Colors.black,
                                    size: 27,
                                  ),
                                ],
                              ),
                              if (isDescriptionExpanded) ...[
                                const SizedBox(height: 12),
                                const Text(
                                  "Choose a stylish dark color or brighten up your home with colorful sarongs. The EKERÖ armchair has a sleek and modern look with two sides that meet at the back – and a waist support for added comfort!",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black87,
                                    height: 1.4,
                                  ),
                                ),
                              ],
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Divider(
                      color: Colors.grey,
                      thickness: 1,
                      indent: 0,
                      endIndent: 0,
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isSizeExpanded = !isSizeExpanded;
                          });
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 250),
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Size",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Icon(
                                    isSizeExpanded
                                        ? Icons.keyboard_arrow_up
                                        : Icons.keyboard_arrow_down,
                                    color: Colors.black,
                                    size: 27,
                                  ),
                                ],
                              ),
                              if (isSizeExpanded) ...[
                                const SizedBox(height: 12),
                                Column(
                                  children: [
                                    _buildSizeRow("Width:", "70 cm"),
                                    const Divider(color: Colors.grey, thickness: 0.5),
                                    _buildSizeRow("Depth:", "73 cm"),
                                    const Divider(color: Colors.grey, thickness: 0.5),
                                    _buildSizeRow("Height:", "75 cm"),
                                    const Divider(color: Colors.grey, thickness: 0.5),
                                    _buildSizeRow("Seat Width:", "57 cm"),
                                    const Divider(color: Colors.grey, thickness: 0.5),
                                    _buildSizeRow("Seat Depth:", "46 cm"),
                                    const Divider(color: Colors.grey, thickness: 0.5),
                                    _buildSizeRow("Seat Height:", "43 cm"),
                                  ],
                                ),
                              ],
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Divider(
                      color: Colors.grey,
                      thickness: 1,
                      indent: 0,
                      endIndent: 0,
                    ),
                  ],
                ),
              ),
            ],
          ),
          // الـ Bottom Bar المرفوع بدقة عن أزرار النظام
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.only(
                left: 16,
                right: 16,
                top: 8,
                bottom: bottomPadding > 0 ? bottomPadding : 10, // لو الجهاز بدون حواف يترك مسافة 10، ولو بحواف ديناميكية يرتفع بمقدارها
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.04),
                    blurRadius: 6,
                    offset: const Offset(0, -2),
                  ),
                ],
              ),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isFavorite = !isFavorite;
                      });
                    },
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: isFavorite ? const Color(0xFF006600) : Colors.grey.shade300,
                          width: 1.2,
                        ),
                      ),
                      child: Icon(
                        isFavorite ? Icons.favorite : Icons.favorite_border,
                        color: isFavorite ? const Color(0xFF006600) : Colors.grey,
                        size: 20,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF006600),
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        elevation: 0,
                      ),
                      child: const Text(
                        "Add to cart",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSizeRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
                fontSize: 15, color: Colors.grey, fontWeight: FontWeight.w500),
          ),
          Text(
            value,
            style: const TextStyle(
                fontSize: 15, color: Colors.black87, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}