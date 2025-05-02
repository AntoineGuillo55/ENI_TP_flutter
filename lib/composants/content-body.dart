import 'package:flutter/material.dart';
import '../models/touit.dart';


class ContentBody extends StatelessWidget {

  final Touit touit;

  const ContentBody({super.key, required this.touit});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.network(touit.profile!,
              width: 125,),
            Expanded( // Donne de la place au texte
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          touit.author!,
                          softWrap: true,
                          overflow: TextOverflow.visible,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(touit.date!.toString())
                      ],
                    ),
                    SizedBox(height: 5),
                    Text(
                      touit.message!,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.messenger_outline)),
              IconButton(onPressed: () {}, icon: Icon(Icons.repeat)),
              IconButton(onPressed: () {}, icon: Icon(Icons.star_border_outlined)),
            ],),
        )
      ],
    );
    throw UnimplementedError();
  }

}