import 'package:flutter/material.dart';

import 'buttons.dart';

class ContentBody extends StatelessWidget {
  const ContentBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Row(
            children: [
              Image.asset("assets/images/will.jpg",
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
                            "Will Smith se transforme en ogre après avoir giflé Chris Rock",
                            softWrap: true,
                            overflow: TextOverflow.visible,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("50s")
                        ],
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Coup de tonnerre dans le milieu du cinéma américain ! Après avoir provoqué la stupéfaction lors de la cérémonie des césar en giflant violement Chris Rock pendant sa prestation, Will Smith se serait transformé en ogre. La communauté scientifique, incrédule, n'est pour l'instant toujours pas en capacité d'expliquer ce phénomène.",
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
                MiddleButton(label: "Répondre"),
                MiddleButton(label: "Retweet"),
                MiddleButton(label: "Favoris")
              ],),
          )
        ],
      ),
    );
    throw UnimplementedError();
  }

}