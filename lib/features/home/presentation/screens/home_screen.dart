import 'package:ecommerce_ui_flutter/features/auth/presentation/screens/register_screen.dart';
import 'package:ecommerce_ui_flutter/features/home/presentation/screens/Details_screen.dart';
import 'package:ecommerce_ui_flutter/features/home/presentation/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_ui_flutter/features/home/presentation/widgets/product_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final List<ProductModel> specialOffers = const [
    ProductModel(
      image: "assets/images/Image.png",
      name: "EKERO",
      priceAfterDiscount: 238.00,
      priceBeforeDiscount: 512.58,
      rating: 4.8,
      ratingNumber: 256,
    ),
    ProductModel(
      image: "assets/images/Image (1).png",
      name: "STANDMON",
      priceAfterDiscount: 45.12,
      priceBeforeDiscount: 99.8,
      rating: 4.5,
      ratingNumber: 128,
    ),
    ProductModel(
      image: "assets/images/Image (2).png",
      name: "PLATTLANS",
      priceAfterDiscount: 274.13,
      priceBeforeDiscount: 586.74,
      rating: 4.7,
      ratingNumber: 300,
    ),
    ProductModel(
      image: "assets/images/Image (3).png",
      name: "MALM",
      priceAfterDiscount: 52.16,
      priceBeforeDiscount: 109.74,
      rating: 4.5,
      ratingNumber: 159,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: const Color.fromARGB(255, 33, 79, 34),
        unselectedItemColor: Colors.grey,
        iconSize: 20,
        items: const [
          BottomNavigationBarItem(  
            icon: Icon(Icons.home_outlined, size: 28),
            label: "Home",
            activeIcon: Icon(Icons.home_outlined, size: 35),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined, size: 28),
            label: 'Shopping',
            activeIcon: Icon(Icons.shopping_bag_outlined, size: 35),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, size: 28),
            label: 'Profile',
            activeIcon: Icon(Icons.person, size: 35),
          ),
        ],
      ),
      backgroundColor: const Color(0xFFF9F9F9),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 16),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 44,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: "Search Candles",
                          hintStyle: TextStyle(color: Colors.grey),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Color(0xFF1A1A1A),
                          ),
                          suffixIcon: Icon(Icons.camera_alt_outlined),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  const Icon(Icons.notifications_outlined),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.location_on_outlined, size: 20),
                  SizedBox(width: 5),
                  Text("Deliver to "),
                  Text(
                    "3517 W.Gray St. Utica, Pennsyl...",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(Icons.keyboard_arrow_down),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 200,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  "assets/images/Banner.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Image.asset("assets/icons/Active=1.png")],
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Special Offers",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegisterScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      "See More",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 33, 79, 34),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 240,
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                scrollDirection: Axis.horizontal,
                itemCount: specialOffers.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                            data: specialOffers[index],
                            itemIndex: index, // بنبعت الـ index هنا
                          ),
                        ),
                      );
                    },
                    child: ProductCard(product: specialOffers[index]),
                  );
                },
              ),
            ),
            SizedBox(height: 24),
            Container(
              margin: EdgeInsets.only(left: 16),
              child: Text(
                "Shop by Categories",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 187, 235, 196),
                    ),
                    height: 100,
                    width: 163,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.outdoor_grill_outlined,
                          size: 35,
                          color: Color.fromARGB(255, 33, 79, 34),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Outdoor",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 1),
                MaterialButton(
                  onPressed: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 168, 231, 250),
                    ),
                    height: 100,
                    width: 163,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.local_laundry_service_outlined,
                          size: 35,
                          color: Color.fromARGB(222, 67, 145, 229),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Applications",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 244, 233, 153),
                    ),
                    height: 100,
                    width: 163,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chair_outlined,
                          size: 35,
                          color: const Color.fromARGB(255, 186, 167, 29),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Furniture",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 1),
                MaterialButton(
                  onPressed: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 212, 241, 251),
                    ),
                    height: 100,
                    width: 163,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chat_bubble_outline_outlined,
                          size: 35,
                          color: Color.fromARGB(222, 118, 152, 189),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "See More",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
