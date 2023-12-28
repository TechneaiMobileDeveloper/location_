import 'package:flutter/material.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  bool showFirstList = true;

  void toggleList() {
    setState(() {
      showFirstList = !showFirstList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
              width: MediaQuery.of(context).size.width,
            ),
            const LocationSearch(),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: toggleList,
              child: Text(showFirstList ? 'Show Second List' : 'Show First List'),
            ),
            const SizedBox(height: 50),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.30,
                child:  showFirstList ? const TestCard() : const TestCard2()
            )
          ],
        ),
      ),
    );
  }
}

class LocationSearch extends StatelessWidget {
  const LocationSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const OutlineInputBorder(),
      elevation: 10,
      child: TextFormField(
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black12),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black12),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black12),
          ),
          prefixIcon: Icon(Icons.search),
          suffixIcon: Icon(Icons.location_on_outlined),
        ),
      ),
    );
  }
}

class TestCard extends StatelessWidget {
  const TestCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width, // Utilize screen width
      height: 400, // Adjust height as needed
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Card(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.50, // Adjust card width
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(
                      height: 30,
                      child: Center(
                        child: Text(
                          'Column 1 Text',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                          overflow: TextOverflow.ellipsis, // Handle overflow
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 150,
                      child: Image.network(
                        'https://images.assettype.com/fortuneindia%2F2023-08%2F9dc1396c-a9b2-43f5-b7d9-78bd3eaf5be5%2FBrief_Bike_1.jpg?w=1250&q=60',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              'Product Name',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Text(
                            '\$100',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class TestCard2 extends StatelessWidget {
  const TestCard2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width, // Utilize screen width
      height: 400, // Adjust height as needed
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Card(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.50, // Adjust card width
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(
                      height: 30,
                      child: Center(
                        child: Text(
                          'Column 1 Text',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                          overflow: TextOverflow.ellipsis, // Handle overflow
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 150,
                      child: Image.network(
                        'https://www.yamaha-motor-india.com/theme/v3/image/ray-zr125fi-hybrid/color/Cyan-blue-drum.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              'Product Name',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Text(
                            '\$100',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

