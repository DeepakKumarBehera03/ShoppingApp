import 'package:flutter/material.dart';

class ECommerceScreen extends StatelessWidget {
  const ECommerceScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            _buildToggleBar(context),
            Image.asset('assets/woman_shop2.jpg',fit: BoxFit.contain,),
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
            color: Theme.of(context).cardColor,
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
                          'WELCOME ',
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

  Row _buildToggleBar(BuildContext context) {
    return  Row(
            children: <Widget>[
              _buildToggleItem(context, "Recommended", selected: true),
              _buildToggleItem(context, "Formal Wear"),
              _buildToggleItem(context, "Casual Wear"),
            ],
          );
  }

  Padding _buildToggleItem(BuildContext context, String text, {bool selected = false}) {
    return  Padding(
              padding:  const EdgeInsets.all(8.0),
              child: Text(
                text,
                style: TextStyle(
                  color: selected ? null : Theme.of(context).textTheme.titleLarge!.color?.withOpacity(0.5),
                  fontSize: 15,
                  fontWeight: selected ? FontWeight.bold : null,
                ),
              ),
            );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
      leading: const Padding(
        padding:  EdgeInsets.all(20.0),
        child: Icon(Icons.home,color: Colors.white,),
      ),
      title: Text('Let\'s go shopping!'),
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
            DealButton(text: "Must Buy in Summer",color: Colors.lightBlue,),
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