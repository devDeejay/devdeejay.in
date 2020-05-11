import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:devdeejay_portfolio_app/blog.dart';
import 'package:devdeejay_portfolio_app/responsive/orientation_layout.dart';
import 'package:devdeejay_portfolio_app/responsive/screen_type_layout.dart';
import 'package:devdeejay_portfolio_app/screens/widgets/animated_screen_entry_widget.dart';
import 'package:devdeejay_portfolio_app/utils/constants.dart';
import 'package:devdeejay_portfolio_app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BlogScreen extends StatefulWidget {
  @override
  _BlogScreenState createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedScreenEntryWidget(child: buildBlogBody());
  }

  Widget buildBlogBody() => ScreenTypeLayout(
        mobile: OrientationLayout(
          portrait: _buildMobilePortraitLayout(context),
          landscape: _buildMobilePortraitLayout(context),
        ),
        tablet: OrientationLayout(
          portrait: _buildMobilePortraitLayout(context),
          landscape: _buildLargeScreenLayout(context),
        ),
        desktop: OrientationLayout(
          landscape: _buildLargeScreenLayout(context),
          portrait: _buildLargeScreenLayout(context),
        ),
      );

  _buildMobilePortraitLayout(BuildContext context) {
    return _buildLargeScreenLayout(context);
  }

  _buildLargeScreenLayout(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildVerticalSpace(56),
              buildPageTitle(context),
              buildVerticalSpace(56),
              buildSubHeading("Learn some more Tech"),
              buildListOfBlogs(shuffle(listOfTechBlog)),
              buildSubHeading("Become a Better Programmer"),
              buildListOfBlogs(shuffle(listOfBlogForBetterProgrammers)),
              buildSubHeading("Clean Code Series"),
              buildListOfBlogs(listOfCleanCodeBlogs),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildListOfBlogs(List<Blog> listOfBlog) {
    List<Widget> listOfBlogWidgets = [];

    for (Blog blog in listOfBlog) {
      listOfBlogWidgets.add(SingleBlogWidget(blog));
    }

    return Container(
      height: 280,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: listOfBlogWidgets,
        ),
      ),
    );

    /// TODO: ListView Builder not working for release mode in Flutter for web
    /* return Container(
      height: 280,
      child: Expanded(
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: listOfBlog.length,
            itemBuilder: (BuildContext context, int index) =>
                SingleBlogWidget(listOfBlog[index])),
      ),
    );*/
  }

  Widget buildPageTitle(BuildContext context) {
    return Center(
      child: TyperAnimatedTextKit(
          isRepeatingAnimation: false,
          text: [
            "devDeejay Blogs",
          ],
          textStyle: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.08,
              color: Colors.white,
              fontFamily: 'playlist'),
          textAlign: TextAlign.start,
          alignment: AlignmentDirectional.topStart),
    );
  }

  SizedBox buildHorizontalSpace(double space) {
    return SizedBox(
      width: space,
    );
  }

  buildSubHeading(String text) {
    return Text(
      text,
      style: TextStyle(
          color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
    );
  }
}

class SingleBlogWidget extends StatelessWidget {
  final Blog blog;

  SingleBlogWidget(this.blog);

  @override
  Widget build(BuildContext context) {
    double itemHeight = 180;
    double itemWidth = 320;
    return GestureDetector(
      onTap: () {
        launchURL(blog.url);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16), topRight: Radius.circular(16)),
              child: Image.network(
                blog.thumbImageUrl,
                height: itemHeight,
                width: itemWidth,
                fit: BoxFit.cover,
              ),
            ),
            Container(
                width: itemWidth,
                height: 56,
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.2),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(0))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      blog.title,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w700),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
