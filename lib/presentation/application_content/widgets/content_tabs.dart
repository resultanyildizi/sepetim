import 'package:Sepetim/presentation/item_category/overview/item_category_overview_page.dart';
import 'package:Sepetim/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';

final List<Widget> contentTabs = [
  ItemCategoryOverviewPage(),
  Center(child: Text('Favorites')),
  Center(child: Text('Settings')),
];
