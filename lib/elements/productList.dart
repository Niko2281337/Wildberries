import 'package:flutter/material.dart';
import 'package:wildberries/pages/DetailPage.dart';
final List<String> shoes = ['lib/assets/images/shoes1.webp','lib/assets/images/shoes2.jpeg','lib/assets/images/shoes3.jpeg','lib/assets/images/shoes4.jpeg','lib/assets/images/shoes5.jpeg','lib/assets/images/shoes6.jpeg','lib/assets/images/shoes7.jpeg','lib/assets/images/shoes8.jpeg',];
final List<String> price = ['3599 Р', '5699 Р', '4999 Р', '8999 Р','12999 Р','19999 Р','11999 Р','2599 Р'];
final List<String> brand = ['Centaman','Lee Cooper','THSO','Running','NIKE','BAPE','NIKE','Pulse'];

final List element = [];
final List element1 = [];
final List element2 = [];



class ClickerCounter{
  int count = 0;
  void increment()
  {
    count++;
  }
  void delete()
  {
    count = 0;
  }
}

class ProductList extends StatefulWidget {
   ProductList({super.key, this.shoes, this.price, this.brand, this.grade, required this.onPressed, });
   final shoes;
    final price;
    final brand;
    final grade;
    final VoidCallback onPressed;

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {

    return GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 0.68,), itemCount: widget.shoes.length, itemBuilder: ((context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(item: widget.shoes[index], item2: widget.price[index], item3: widget.brand[index], item4: widget.grade[index],)));
            },
            child: Center(
              child: Container(
                    width: MediaQuery.of(context).size.width / 2,
                    decoration: BoxDecoration(color: const Color.fromARGB(255, 31, 31, 31), borderRadius: BorderRadius.circular(16)),
                    margin: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                   Image.asset("${widget.shoes[index]}", height: 200, width: 170,),
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('${widget.price[index]}', style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w700), ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5,),
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('${widget.brand[index]}', style: TextStyle(color: Colors.white, fontSize: 13 ),),
                          ],
                        ),
                      ),
                      SizedBox(height: 5,),
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Row(children: [
                            Icon(Icons.star, color: Colors.yellow, size: 12,),
                          Text('${widget.grade[index]}', style: TextStyle(color: Colors.white),),
                          ],),
                          IconButton(onPressed: () {setState(() {
                          element.add(shoes[index]);
                          element1.add(price[index]);
                          element2.add(brand[index]);
                          });}, iconSize: 20, icon: Icon(Icons.add_shopping_cart_outlined, color: Colors.white, ), padding: EdgeInsets.zero,),
                      
                        ],),
                      ),
                  
                      
                    ],),
                  ),
            ),
          );
        }));
  }
}