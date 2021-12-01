import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notreprojet/globals.dart';

class CryptoCard extends StatelessWidget {
  Color _favIconColor = Colors.white;
  CryptoCard({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 190,
        height: 260,
        child: Card(
          color: Globals.secondaryColor,
          child: Container(
            padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.favorite, color: _favIconColor,),
                  tooltip: 'Add to favourite',
                  onPressed: () {
                    if(_favIconColor == Colors.white){
                      _favIconColor = Colors.red;
                    }else{
                      _favIconColor = Colors.grey;     
                    }
                  },
                ),
                Image.network(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Bitcoin.svg/1024px-Bitcoin.svg.png",
                    height: 64),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Bitcoin',
                      style: TextStyle(
                        color: Globals.text1,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      )),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: const [
                        Text('1d : +1.8 ↗️',
                            style: TextStyle(
                              color: Globals.text1,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            )),
                        SizedBox(height: 4),
                        Text('1m : -1.9 ↘️',
                            style: TextStyle(
                              color: Globals.text1,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            )),
                        SizedBox(height: 4),
                        Text('1d : +1.9 ↗️',
                            style: TextStyle(
                              color: Globals.text1,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            )),
                      ],
                    ),
                  ),
                ),
                const Text('56 841,80 USD',
                    style: TextStyle(
                      color: Globals.text1,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
