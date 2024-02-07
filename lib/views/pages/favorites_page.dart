import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/product.dart';
import 'package:food_delivery_app/utils/app_routes.dart';
import 'package:food_delivery_app/views/pages/product_details_page.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    debugPrint('FavoritesPage build()');

    if (favProducts.isEmpty) {
      return const Center(
        child: Text('No Favorite Products!'),
      );
    }

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Image.network(
                'https://tse1.mm.bing.net/th?id=OIP.Sdm20Ambj-tV4lb4wK-aVgHaE8&pid=Api&P=0&h=220'),
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: favProducts.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed(
                              AppRoutes.productDetails,
                              arguments: favProducts[index],
                            )
                            .then((value) => setState(() {}));
                      },
                      leading: Image.network(
                        favProducts[index].imgUrl,
                        height: 100,
                        width: 70,
                        fit: BoxFit.fill,
                      ),
                      title: Text(
                        favProducts[index].name,
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                      ),
                      subtitle: Text(
                        '${favProducts[index].category.title} - \$${favProducts[index].price}',
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                      trailing: orientation == Orientation.portrait
                          ? Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      favProducts.remove(favProducts[index]);
                                    });
                                  },
                                  icon: const Icon(Icons.favorite),
                                  color: Theme.of(context).primaryColor,
                                ),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      favProducts.remove(favProducts[index]);
                                    });
                                  },
                                  icon: const Icon(Icons.delete),
                                  color: Theme.of(context).primaryColor,
                                ),
                              ],
                            )
                          : TextButton.icon(
                              onPressed: () {
                                setState(() {
                                  favProducts.remove(favProducts[index]);
                                });
                              },
                              icon: const Icon(Icons.favorite),
                              label: const Text('Favorite'),
                            ),
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
