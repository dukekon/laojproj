import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:laojproj/pages/home/widgets/category_list_widget.dart';
import 'package:laojproj/widgets/bottom_nav_bar.dart';
import 'package:laojproj/widgets/placeholder_widget.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key, required this.title});

  final String title;

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  late double _height;
  @override
  void initState() {
    super.initState();
    _height = 0;
  }

  void _onTapAdd() {
    setState(() {
      _height = 750;
    });
  }

  @override
  Widget build(BuildContext context) {
    print(_height);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
        title: Text(widget.title),
        elevation: 0,
      ),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const PlaceholderWidget(height: 200),
              const Expanded(
                flex: 1,
                child: CategoryListWidget(),
              ),
              BottomNavBar(onTapAdd: _onTapAdd),
            ],
          ),
          // AnimatedOpacity(
          //   duration: const Duration(milliseconds: 100),
          //   opacity: 0.9,
          //   child: Container(
          //     decoration: const BoxDecoration(
          //       color: Colors.black,
          //     ),
          //   ),
          // ),
          // AnimatedContainer(
          //   duration: const Duration(milliseconds: 200),
          //   height: 750,
          //   color: Colors.white,
          //   child: Column(
          //     children: [Container()],
          //   ),
          // )
        ],
      ),
    );
  }
}
