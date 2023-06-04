import 'package:flutter/material.dart';
import 'package:responsi/pages/category_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 4,
                      offset: Offset(0, 3), // Shadow position
                    ),
                  ],
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.cnnindonesia.com/cnnid/images/logo_cnn_fav.png"))),
              width: 200,
              height: 200,
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CategoryPage(
                            category: "terbaru",
                          ),
                        ));
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.red),
                  child: Container(
                    width: 90,
                    child: Text(
                      "TERBARU",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                  height: 50,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CategoryPage(
                            category: "nasional",
                          ),
                        ));
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.red),
                  child: Container(
                    width: 90,
                    child: Text(
                      "NASIONAL",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CategoryPage(
                            category: "olahraga",
                          ),
                        ));
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.red),
                  child: Container(
                    width: 90,
                    child: Text(
                      "OLAHRAGA",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(width: 15),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CategoryPage(
                            category: "teknologi",
                          ),
                        ));
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.red),
                  child: Container(
                    width: 90,
                    child: Text(
                      "TEKNOLOGI",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
