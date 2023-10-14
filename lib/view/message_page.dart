import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../components/custom_bottom_nav_bar.dart';

class MessagePage extends ConsumerStatefulWidget {
  const MessagePage({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends ConsumerState<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: CustomBottomNavBar(),
        body: Center(
          child: Text('Message'),
        ),
      ),
    );
  }
}
