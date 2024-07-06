import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TabBar(controller: _tabController, tabs: const [
              Tab(
                text: 'باکس زرد',
              ),
              Tab(
                text: 'باکس قرمز',
              )
            ]),
            Expanded(
              child: TabBarView(controller: _tabController, children: [
                Container(
                  color: Colors.yellow,
                ),
                Container(
                  color: Colors.red,
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
