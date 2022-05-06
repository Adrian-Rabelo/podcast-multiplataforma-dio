import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:podcast_multiplataforma_dio/app/util/custom_color.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 25,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        SvgPicture.asset(
                          "assets/logo.svg",
                          width: 40,
                          height: 40,
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Text(
                          "Dio",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          "Cast",
                          style: TextStyle(
                            color: CustomColor.pink700,
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.only(right: 2, left: 20),
                height: 35,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    CategoryWidget(
                      text: 'PHP',
                      color: CustomColor.pink700,
                    ),
                    SizedBox(width: 5),
                    CategoryWidget(
                      text: 'Dart',
                      color: CustomColor.pink700,
                    ),
                    SizedBox(width: 5),
                    CategoryWidget(
                      text: 'Flutter',
                      color: CustomColor.pink700,
                    ),
                    SizedBox(width: 5),
                    CategoryWidget(
                      text: 'ReactJS',
                      color: CustomColor.pink700,
                    ),
                  ],
                ),
              ),
              Center(
                child: Container(
                  padding: EdgeInsets.fromLTRB(25, 30, 25, 0),
                  child: const Text(
                    'Podcasts recentes',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: Container(
                  color: Colors.red,
                  height: MediaQuery.of(context).size.height * 0.8,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        PodcastWidget(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PodcastWidget extends StatelessWidget {
  const PodcastWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
  

}

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    Key? key,
    required this.text,
    required this.color,
  }) : super(key: key);

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: color,
      ),
      child: Center(
        child: Text(
          text.toUpperCase(),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
