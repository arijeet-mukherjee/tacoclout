part of '../category_page.dart';

class CategoryScreen extends StatelessWidget {
  Future<List<TacoCategoryModel>> _fetchCategory() async {
    List<TacoCategoryModel> c = [];
    final response = await http
        .get(Uri.parse(ApiConstant.base_url + ApiConstant.store_endpoint));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body)["categories"];
      print(ApiConstant.base_url +
          ApiConstant.store_endpoint +
          "\n" +
          jsonResponse.toString());
      return jsonResponse
          .map((catTaco) => new TacoCategoryModel.fromJson(catTaco))
          .toList();
      // return c;
    } else {
      throw Exception('Failed to load jobs from API');
    }
  }

  String imageUrl(int index) {
    if (index == 0) {
      return Images.zero;
    }
    if (index == 1) {
      return Images.one;
    }
    if (index == 2) {
      return Images.two;
    }
    if (index == 3) {
      return Images.three;
    }
    if (index == 4) {
      return Images.four;
    }
    if (index == 5) {
      return Images.five;
    }
    if (index == 6) {
      return Images.six;
    }
    if (index == 7) {
      return Images.seven;
    }
    if (index == 8) {
      return Images.eight;
    }
    if (index == 9) {
      return Images.nine;
    }
    if (index == 10) {
      return Images.ten;
    }
    return Images.toco_cat;
  }

  @override
  Widget build(BuildContext context) {
    Scaffold gridCategory(List<TacoCategoryModel> dataCat, context) {
      return Scaffold(
        appBar: CustomAppBar(context,
            title: AppLocalizations.of(context)!.categories),
        body: GridView.builder(
          itemCount: dataCat.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 15.0,
            crossAxisSpacing: 15.0,
          ),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          physics: ScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 18.0),
          itemBuilder: (context, index) {
            var data = dataCat[index];
            return _BuildCategoryCircleCard(
              label: data.name!,
              icon: imageUrl(index),
              onTap: () {
                /* Get.toNamed(
                  Routes.browse_product,
                  arguments: BrowseProductArgument(
                    itemCount: LocalList.allProductList(),
                    label: data.name!,
                  ),
                ); */
                Get.toNamed(Routes.webview, arguments: WebviewArgument(label: data.name!, url: data.url.toString()));
              },
            );
          },
        ),
      );
    }
    /* return Scaffold(
      appBar: CustomAppBar(context,
          title: AppLocalizations.of(context)!.categories),
      body: GridView.builder(
        itemCount: LocalList.allCategoryList().length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 15.0,
          crossAxisSpacing: 15.0,
        ),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: ScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 18.0),
        itemBuilder: (context, index) {
          var data = LocalList.allCategoryList()[index];
          return _BuildCategoryCircleCard(
            label: data.label!,
            icon: data.icon!,
            onTap: () {
              Get.toNamed(
                Routes.browse_product,
                arguments: BrowseProductArgument(
                  itemCount: LocalList.allProductList(),
                  label: data.label!,
                ),
              );
            },
          );
        },
      ),
    ); */

    return FutureBuilder<List<TacoCategoryModel>>(
      future: _fetchCategory(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<TacoCategoryModel>? data = snapshot.data;

          return gridCategory(data!, context);
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        //return CircularProgressIndicator();

        return Scaffold(
          appBar: CustomAppBar(context, title: 'Categories', actions: [
                              ]),
      body: const Center(
          child: CircularProgressIndicator(),
        ),
    );
      },
    );
  }
}
