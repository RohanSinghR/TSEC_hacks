import 'package:flutter/material.dart';

class NFT extends StatefulWidget {
  @override
  State<NFT> createState() => _NFTState();
}

class _NFTState extends State<NFT> {
  int currentIndex = 0;

  void handleBottomIndexChange(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            toolbarHeight: 160,
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "EXPLORE YOUR \n\tNFT\'s",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
              ),
            ),
            bottom: TabBar(tabs: [
              Tab(
                text: 'Recent',
              ),
              Tab(
                text: 'Trending',
              ),
              Tab(
                text: 'Top',
              ),
            ]),
          ),
          body: TabBarView(children: [RecentTab(), Trending(), Top()]),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: 0,
            onTap: (value) {},
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey[300],
            backgroundColor: Colors.transparent,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.notifications), label: 'notifications'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.favorite_rounded,
                    color: Colors.redAccent[700],
                  ),
                  label: 'favourite'),
            ],
          ),
        ));
  }
}

class RecentTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Image.asset(
              'assets/images/nft1.jpg',
              scale: 2,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 20),
          ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Image.asset(
              'assets/images/nft2.jpg',
              scale: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}

class Trending extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Image.asset(
              'assets/images/nft3.jpg',
              scale: 1.5,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 20),
          ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Image.asset(
              'assets/images/nft4.jpeg',
              scale: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}

class Top extends StatefulWidget {
  @override
  State<Top> createState() => _TopState();
}

class _TopState extends State<Top> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: GestureDetector(
              onDoubleTap: () {
                setState(() {});
              },
              child: Image.asset(
                'assets/images/nft5.jpeg',
                scale: 1.3,
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 20),
          ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Image.asset(
              'assets/images/nft6.png',
              scale: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
