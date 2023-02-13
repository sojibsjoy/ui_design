import 'package:flutter/material.dart';
import 'package:ui_design/ui/screens/products/product_item.dart';
import 'package:ui_design/ui/widgets/helper.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  final List<String> _menuBtns = const [
    'Pruduct List',
    'Trending',
    'New Arrival',
    'Upcoming',
  ];

  int _selectedBtnIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            children: [
              // appbar
              SizedBox(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(Icons.menu),
                    Text(
                      'Products',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // Icon(Icons.menu),
                    SizedBox(width: 30),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              // menu btn list
              SizedBox(
                height: 30,
                child: ListView.builder(
                  itemCount: _menuBtns.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.only(
                        right: index == _menuBtns.length - 1 ? 0 : 10,
                      ),
                      child: InkWell(
                        onTap: () => setState(() {
                          print(_menuBtns[index]);
                          _selectedBtnIndex = index;
                          print(_selectedBtnIndex);
                        }),
                        child: Text(
                          _menuBtns[index],
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: index == _selectedBtnIndex
                                ? Colors.blue
                                : Colors.grey,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 10),
              // search bar & filter
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // search field
                  SizedBox(
                    width: 304,
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        // enabled: false,
                        filled: true,
                        fillColor: Colors.grey.shade200,
                        prefixIcon: const Icon(Icons.search),
                        contentPadding: const EdgeInsets.only(left: 20),
                        hintText: 'Search what you want...',
                        hintStyle: TextStyle(
                          color: Colors.grey.shade500,
                        ),
                        enabledBorder: brdrDesign(),
                        focusedBorder: brdrDesign(),
                        disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey.shade400,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // filter icon
                  Container(
                    width: 60,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: const Center(
                      child: Icon(Icons.menu_open),
                    ),
                  ),
                ],
              ),
              addH(10),
              // product list
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return ProductItem();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  OutlineInputBorder brdrDesign() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(color: Colors.grey.shade300),
    );
  }
}
