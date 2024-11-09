import 'package:flutter/material.dart';

class FeedProducts extends StatefulWidget {
  const FeedProducts({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _FeedProductsState createState() => _FeedProductsState();
}

class _FeedProductsState extends State<FeedProducts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 290,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: Theme.of(context).scaffoldBackgroundColor),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(2),
            child: Container(
              width: double.infinity,
              constraints: BoxConstraints(
                  minHeight: 100,
                  maxHeight: MediaQuery.of(context).size.height * 0.3),
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4PdHtXka2-bDDww6Nuect3Mt9IwpE4v4HNw&usqp=CAU',
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 5),
            margin: const EdgeInsets.only(left: 5, bottom: 2, right: 3),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 4,
                ),
                const Text(
                  'Description',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    '\$ 158.99',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Quantity',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(18.0),
                        child: const Icon(
                          Icons.more_horiz,
                          color: Colors.grey,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
