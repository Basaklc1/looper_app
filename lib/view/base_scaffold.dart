import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:looper_app/components/custom_bottom_nav_bar.dart';
import 'package:looper_app/riverpod/base_scaffold_riverpod.dart';

final baseScaffoldRiverpod =
    ChangeNotifierProvider((ref) => BaseScaffoldRiverpod());

class BaseScaffold extends ConsumerStatefulWidget {
  const BaseScaffold({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _BaseScaffoldState();
}

class _BaseScaffoldState extends ConsumerState<BaseScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
