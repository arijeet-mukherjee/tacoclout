part of '../home_page.dart';

class _ScrollableSectionFive extends StatelessWidget {
  final List itemCount;
  final String label;
  final VoidCallback onViewAllTap;
  
  const _ScrollableSectionFive({
    Key? key,
    required this.itemCount,
    required this.label,
    required this.onViewAllTap,
  }) : super(key: key);

  Future<List<TacoProductModel>> _fetchProduct() async {
    final response = await http
        .get(Uri.parse("https://www.tacoclout.com/category/lighting.json"));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      /* print("Product : \n" +
          ApiConstant.base_url +
          ApiConstant.store_endpoint +
          "\n" +
          jsonResponse.toString()); */

      List<TacoProductModel> tp = jsonResponse
          .map((productTaco) => new TacoProductModel.fromJson(productTaco))
          .toList();
      print("Product Model : \n" + tp[0].url.toString());
      print("Product Model : \n" + tp[0].name.toString());
      print("Product Model : \n" + tp[0].images.toString());
      print("Product Model : \n" + tp[0].price.toString());
      return jsonResponse
          .map((productTaco) => new TacoProductModel.fromJson(productTaco))
          .toList();
      // return c;
    } else {
      throw Exception('Failed to load jobs from API');
    }
  }

  @override
  Widget build(BuildContext context) {
    
    Column buildproduct(List<TacoProductModel> dataCat, context) {
      return Column(
        children: [
          _BuildLabelSection(
            label: 'Lighting',
            onViewAllTap: onViewAllTap,
          ),
          SizedBox(height: Const.space15),
          Container(
            width: Screens.width(context),
            height: 250,
            margin: EdgeInsets.only(bottom: 15.0),
            child: ListView.builder(
              itemCount: dataCat.length,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: Const.margin),
              itemBuilder: (context, index) {
                TacoProductModel data = dataCat[index];
                return _BuildProductCard(
                  onPressed: () => Get.toNamed(
                    Routes.product,
                    arguments: data,
                  ),
                  product: data,
                );
              },
            ),
          ),
        ],
      );
    }

    /* return Column(
      children: [
        _BuildLabelSection(
          label: label,
          onViewAllTap: onViewAllTap,
        ),
        SizedBox(height: Const.space15),
        Container(
          width: Screens.width(context),
          height: 250,
          margin: EdgeInsets.only(bottom: 15.0),
          child: ListView.builder(
            itemCount: itemCount.length,
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: Const.margin),
            itemBuilder: (context, index) {
              TacoProductModel data = itemCount[index];
              return _BuildProductCard(
                onPressed: () => Get.toNamed(
                  Routes.product,
                  arguments: data,
                ),
                product: data,
              );
            },
          ),
        ),
      ],
    ); */
    return FutureBuilder<List<TacoProductModel>>(
      future: _fetchProduct(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<TacoProductModel>? data = snapshot.data;

          return buildproduct(data!, context);
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        //return CircularProgressIndicator();
        return CircularProgressIndicator();
      },
    );
  }
}
