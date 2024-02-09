import 'package:flutter/material.dart';

class ECommerceScreen extends StatelessWidget {
  const ECommerceScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: _buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            _buildToggleBar(),
            Image.asset('assets/women_shop.jpg'),
            const DealButtons(),
            _buildProductTile(context),
          ],
        ),
      ),
    );
  }

  Container _buildProductTile(BuildContext context) {
    return Container(
            height: 200,
            color: Colors.white,
            child: Row(
              children: <Widget>[
                Image.asset(
                  'assets/textiles.jpg',
                  fit: BoxFit.fitHeight,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'WEL COME ',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        const Text(
                            'CheckOut Our Ratings')
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
  }

  Row _buildToggleBar() {
    return const Row(
            children: <Widget>[
              Padding(
                padding:  EdgeInsets.all(8.0),
                child: Text(
                  'Recommended',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.all(8.0),
                child: Text(
                  'Formal Wear',
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.all(8.0),
                child: Text(
                  'Casual Wear',
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.black12,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
      leading: const Padding(
        padding:  EdgeInsets.all(20.0),
        child: Icon(Icons.home,color: Colors.white,),
      ),
      title: const Text('Let\'s go shopping!',style: TextStyle(color: Colors.white),),
      elevation: 0,
      actions: const <Widget>[
        Padding(
          padding:  EdgeInsets.all(20.0),
          child: Icon(Icons.shopping_cart, color: Colors.white,),
        )
      ],
    );
  }
}

class DealButtons extends StatelessWidget {
  const DealButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
         SizedBox(height: 15),
         Row(
          children: <Widget>[
             DealButton(color: Colors.green,text: "Best Sellers",),
             SizedBox(width: 10),
             DealButton(text: "Daily Deals",color: Colors.indigoAccent,)
          ],
        ),
         SizedBox(height: 15),
        Row(
          children: <Widget>[
            DealButton(text: "Must Buy in Suumer",color: Colors.lightBlue,),
            SizedBox(width: 10),
            DealButton(text: "Last Chance",color: Colors.redAccent,)
          ],
        ),
        SizedBox(height: 15),
      ],
    );
  }
}

class DealButton extends StatelessWidget {
  const DealButton({
    super.key,
    this.text,
    this.color,
  });
  final String? text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 80,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding:  const EdgeInsets.all(10.0),
          child: Center(
            child: Text(
              text!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}