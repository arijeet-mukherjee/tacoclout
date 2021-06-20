part of '../product_page.dart';

class BrowseProductScreen extends StatelessWidget {
  Future<List<TacoProductModel>> _fetchProduct() async {
    final response = await http
        .get(Uri.parse(ApiConstant.base_url + ApiConstant.product_endpoint));

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
    Scaffold buildproduct(List<TacoProductModel> dataCat, context) {
      return Scaffold(
      appBar: CustomAppBar(context, title: 'All Products', actions: [
        /* IconButton(
          icon: Icon(FeatherIcons.search),
          color: ColorLight.fontTitle,
          tooltip: AppLocalizations.of(context)!.search,
          onPressed: () {
            showSearch(context: context, delegate: SearchScreen());
          },
        ), */
      ]),
      body: StaggeredGridView.countBuilder(
        itemCount: dataCat.length,
        crossAxisCount: 4,
        staggeredTileBuilder: (int index) => StaggeredTile.fit(2),
        mainAxisSpacing: 15.0,
        crossAxisSpacing: 15.0,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: ScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 18.0),
        itemBuilder: (context, index) {
          var product = dataCat[index];
          return _BuildProductGridCard(
            product: product,
            onPressed: () {
              Get.toNamed(Routes.product, arguments: product);
            },
          );
        },
      ),
    );

    }
    //BrowseProductArgument args = Get.arguments;

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
         return Scaffold(
          appBar: CustomAppBar(context, title: 'All Products', actions: [
                              ]),
      body: const Center(
          child: CircularProgressIndicator(),
        ),
    );
      },
    );
  }
}
