import 'package:flutter/material.dart';
import 'package:softpal_techno/constant/colors.dart';
import 'package:softpal_techno/constant/utils.dart';
import 'package:softpal_techno/widget/trendin_movies/topratedmovies.dart';
import 'package:softpal_techno/widget/trendin_movies/trednding.dart';
import 'package:tmdb_api/tmdb_api.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static List trendingmovies = [];
  static List<dynamic> topratedmovies = [];
  static List tv = [];

  final String apikey = '8968eef63118bceec3942da55906bc7b';
  final readacesstoken =
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI4OTY4ZWVmNjMxMThiY2VlYzM5NDJkYTU1OTA2YmM3YiIsInN1YiI6IjYxYmY4NjQyZTI0YjkzMDA2NmNkZTQ0OSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.J2PbPwGglTxc72P4xzqZhJPf4iOW-jfQGTqb_UEHhjw';

  @override
  void initState() {
    super.initState();
    loadmovies();
  }

  loadmovies() async {
    TMDB tmdbWithCustomLogs = TMDB(ApiKeys(apikey, readacesstoken),
        logConfig: ConfigLogger(showLogs: true, showErrorLogs: true));
    Map trendingresult = await tmdbWithCustomLogs.v3.trending.getTrending();

    setState(() {
      trendingmovies = trendingresult['results'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cornflower_blue_10,
      appBar: AppBar(
        title:
            ModifiedText(text: "Moview App", color: AppColors.white, size: 20),
      ),
      body: ListView(
        children: [
          TopRated(trending: trendingmovies),
          TrendingMovies(trending: trendingmovies)
        ],
      ),
    );
  }
}
