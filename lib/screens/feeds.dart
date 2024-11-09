import 'package:flutter/material.dart';
import 'package:shopping_app/widget/feed_products.dart';

class FeedsScreen extends StatelessWidget {
  const FeedsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: FeedProducts(),
      ),
    );
  }
}
