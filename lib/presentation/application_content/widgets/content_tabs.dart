import 'package:Sepetim/presentation/account/account_page.dart';
import 'package:Sepetim/presentation/home/item_category/overview/item_category_overview_page.dart';
import 'package:flutter/material.dart';

final List<Widget> contentTabs = [
  ItemCategoryOverviewPage(),
  const AccountPage(),
  const Center(child: Text('Settings')),
];
