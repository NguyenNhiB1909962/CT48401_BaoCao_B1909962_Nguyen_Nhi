import 'package:flutter/material.dart';
import '../info/introduce_screen.dart';
import 'package:provider/provider.dart';

import '../auth/auth_manager.dart';
import '../orders/orders_screen.dart';
import '../products/product_overview_screen.dart';
import '../products/user_products_screen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override 
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            title: const Text('Xin Chào!!!', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),),
            automaticallyImplyLeading: false,
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Giới Thiệu', style: TextStyle(fontWeight: FontWeight.bold),),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(IntroduceScreen.routeName);
            },
          ),
          ListTile(
            leading: const Icon(Icons.shop),
            title: const Text('Sản Phẩm', style: TextStyle(fontWeight: FontWeight.bold),),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(ProductsOverviewScreen.routeName);
            },
          ),
          ListTile(
            leading: const Icon(Icons.payment),
            title: const Text('Đơn Hàng', style: TextStyle(fontWeight: FontWeight.bold),),
            onTap: () {
              Navigator.of(context)
                .pushReplacementNamed(OrdersScreen.routeName);
            },
          ),
          ListTile(
            leading: const Icon(Icons.edit),
            title: const Text('Quản Lý Sản Phẩm', style: TextStyle(fontWeight: FontWeight.bold),),
            onTap: () {
              Navigator.of(context)
                .pushReplacementNamed(UserProductsScreen.routeName);
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Đăng Xuất', style: TextStyle(fontWeight: FontWeight.bold),),
            onTap: () {
              Navigator.of(context)
                ..pop()
                ..pushReplacementNamed('/');
              context.read<AuthManager>().logout();
            },
          ),
        ],
      ),
    );
  }
}