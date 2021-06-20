part of '../search_page.dart';

class _SuggestionAllProductSection extends StatelessWidget {
  final List? itemCount;

  const _SuggestionAllProductSection({Key? key, this.itemCount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: EdgeInsets.only(top: 10),
      child: ListView.builder(
        itemCount: itemCount!.length,
        itemBuilder: (BuildContext context, int index) {
          ProductModel data = itemCount![index];
          return Column(
            children: <Widget>[
              ListTile(
                leading: Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: OctoImage(
                      fit: BoxFit.cover,
                      image: CachedNetworkImageProvider(
                        data.images!.first,
                      ),
                    ),
                  ),
                ),
                title: Text(
                  itemCount![index].name,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: theme.textTheme.bodyText1,
                ),
                subtitle: Text(
                  NumberFormat.currency(
                          symbol: 'Rp. ', decimalDigits: 0, locale: 'id-ID')
                      .format(itemCount![index].price),
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.headline3,
                ),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  Get.toNamed(
                    Routes.product,
                    arguments: data,
                  );
                },
              ),
              Divider(),
            ],
          );
        },
      ),
    );
  }
}
