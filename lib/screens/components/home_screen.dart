import 'package:flutter/material.dart';

import 'package:responsive_blog/models/Blog.dart';
import 'package:responsive_blog/screens/home/components/blog_post.dart';
import 'package:responsive_blog/screens/home/components/categories.dart';
import 'package:responsive_blog/screens/home/components/recent_posts.dart';
import 'package:responsive_blog/screens/home/components/search.dart';

import '../../constants.dart';
import '../../responsive.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Column(
            children: List.generate(
              blogPosts.length,
              (index) => BlogPostCard(blog: blogPosts[index]),
            ),
          ),
        ),
        if (!Responsive.isMobile(context)) SizedBox(width: kDefaultPadding),
        // Sidebar
        if (!Responsive.isMobile(context))
          Expanded(
            child: Column(
              children: [
                Search(),
                SizedBox(height: kDefaultPadding),
                Categories(),
                SizedBox(height: kDefaultPadding),
                RecentPosts(),
              ],
            ),
          ),
      ],
    );
  }
}