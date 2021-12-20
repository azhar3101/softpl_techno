import 'package:flutter/material.dart';
import 'package:softpal_techno/constant/colors.dart';
import 'package:softpal_techno/constant/utils.dart';
import 'package:softpal_techno/screen/description.dart';

class TrendingMovies extends StatelessWidget {
  final List trending;

  const TrendingMovies({Key? key, required this.trending}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String url = 'https://image.tmdb.org/t/p/w500';
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ModifiedText(
              text: "Trending Movies", color: AppColors.cool_green, size: 20),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 270,
            width: double.infinity,
            child: ListView.builder(
              itemCount: trending.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Descripion(
                                name: url + trending[index]['title'],
                                descriptiopn: url + trending[index]['overview'],
                                bannerurl:
                                    url + trending[index]['backdrop_path'],
                                posterurl: url + trending[index]['poster_path'],
                                vote: url +
                                    trending[index]['vote_average'].toString(),
                                launch_on: ' ')));
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        width: 140,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://image.tmdb.org/t/p/w500' +
                                        trending[index]['poster_path']))),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: 120,
                        child: Center(
                          child: ModifiedText(
                              text: trending[index]['title'] != null
                                  ? trending[index]['title']
                                  : 'title not found',
                              color: AppColors.purple,
                              size: 12),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
