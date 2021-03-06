import 'package:flutter/material.dart';

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  final List<String> images = [
    'https://images.unsplash.com/photo-1626123080782-10b336a160b4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1366&q=80',
    'https://images.unsplash.com/photo-1625913952228-8d3fcc4ff5ac?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=753&q=80',
    'https://images.unsplash.com/photo-1626128380912-536d8fdbe829?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80',
    'https://images.unsplash.com/photo-1471897488648-5eae4ac6686b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=334&q=80',
    'https://images.unsplash.com/photo-1626009374570-11e2952306b3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=333&q=80',
    'https://images.unsplash.com/photo-1626089697398-506b73fccd0a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=80',
    'https://images.unsplash.com/photo-1626049789315-2d5f1b656454?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=357&q=80',
    'https://images.unsplash.com/photo-1626080308326-a6131ac180db?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80',
    'https://images.unsplash.com/photo-1626099964608-6c30072f0812?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=80',
    'https://images.unsplash.com/photo-1626123080782-10b336a160b4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1366&q=80',
    'https://images.unsplash.com/photo-1625913952228-8d3fcc4ff5ac?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=753&q=80',
    'https://images.unsplash.com/photo-1626128380912-536d8fdbe829?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80',
    'https://images.unsplash.com/photo-1471897488648-5eae4ac6686b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=334&q=80',
    'https://images.unsplash.com/photo-1626009374570-11e2952306b3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=333&q=80',
    'https://images.unsplash.com/photo-1626089697398-506b73fccd0a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=80',
    'https://images.unsplash.com/photo-1626049789315-2d5f1b656454?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=357&q=80',
    'https://images.unsplash.com/photo-1626080308326-a6131ac180db?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80',
    'https://images.unsplash.com/photo-1626099964608-6c30072f0812?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=80',
  ];
  Size size = Size(0, 0);

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            _buildSearchBar(),
            _showLargeImage(),
            SizedBox(height: 3),
            _buildImagesGridview(),
          ],
        ),
      ),
    );
  }

  GridView _buildImagesGridview() {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 3,
        crossAxisSpacing: 3,
      ),
      itemBuilder: (BuildContext context, int index) {
        return SizedBox(
          child: Image.network(
            images[index],
            fit: BoxFit.cover,
          ),
        );
      },
      itemCount: images.length,
    );
  }

  Container _showLargeImage() {
    return Container(
      height: size.width, //ScreenWidth
      width: size.width,
      child: Image.network(
        'https://images.unsplash.com/photo-1534353436294-0dbd4bdac845?ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHw2fHx8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
        fit: BoxFit.cover,
      ),
    );
  }

  Container _buildSearchBar() {
    return Container(
      height: 60,
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xff444444),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 10),
              Icon(
                Icons.search,
                color: Colors.white,
              ),
              SizedBox(width: 10),
              Text(
                'Search',
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
