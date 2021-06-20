part of '../on_boarding_page.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController? _pageController;
  int _index = 0;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  void setFirst() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('first', 'first');
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    setFirst();
    return Scaffold(
      appBar: CustomAppBar(
        context,
        enableLeading: false,
        backgroundColor: theme.backgroundColor,
        actions: [
          CustomTextButton(
            label: AppLocalizations.of(context)!.skip,
            onTap: () => Get.offAllNamed(Routes.home),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 6,
            child: PageView.builder(
              controller: _pageController,
              itemCount: LocalList.onBoardingList(context).length,
              onPageChanged: (v) {
                setState(() => _index = v);
              },
              itemBuilder: (context, index) {
                var data = LocalList.onBoardingList(context)[index];
                return OnBoardingCard(data: data);
              },
            ),
          ),
          SizedBox(height: Const.space25),
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.all(Const.margin),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomDotsIndicator(
                    dotsCount: LocalList.onBoardingList(context),
                    position: _index,
                  ),
                  Spacer(),
                  CustomElevatedButton(
                    onTap: () {
                      if (_index < 2) {
                        _pageController!.nextPage(
                          duration: Duration(milliseconds: 200),
                          curve: Curves.easeIn,
                        );
                      } else {
                        Get.offAllNamed(Routes.home);
                      }
                    },
                    label: 'Next',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
