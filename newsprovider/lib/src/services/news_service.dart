import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newsprovider/SRC/models/category_model.dart';
import 'package:newsprovider/SRC/models/news_models.dart';
import 'package:http/http.dart' as http;


final _URL_NEWS = 'https://newsapi.org/v2';
final _APIKEY = '478d8ba5ff65419c985af214ff472e8c';


class NewsService with ChangeNotifier{

  List<Article> headlines = [];
  String _selectCategory = 'business';

  List<Category> categorias = [
    Category(FontAwesomeIcons.building, 'business'),
    Category(FontAwesomeIcons.tv, 'entertainment'),
    Category(FontAwesomeIcons.addressCard, 'general'),
    Category(FontAwesomeIcons.headSideVirus, 'health'),
    Category(FontAwesomeIcons.vials, 'science'),
    Category(FontAwesomeIcons.soccerBall, 'sports'),
    Category(FontAwesomeIcons.memory, 'technology'),
  ];

  Map<String, List<Article>> categoryArticles ={};


  NewsService(){
    this.getTopHeadlines();
    categorias.forEach((item) {
      this.categoryArticles[item.name] = [];
    });
  }

  get selectCategory => this._selectCategory;
  set selectCategory(String valor){
    this._selectCategory = valor;
    this.getArticlesByCategoy(valor);
    notifyListeners();
  }

  List<Article> get getArticulosCategoriaSeleccionada => this.categoryArticles[this.selectCategory]!;


  getTopHeadlines() async {

    final url ='$_URL_NEWS/top-headlines?apiKey=$_APIKEY&country=kr';
    final resp = await http.get(url);

    final newsResponse = newsResponseFromJson(resp.body);
    
    this.headlines.addAll( newsResponse.articles );
    notifyListeners();

  }
  
  getArticlesByCategoy(String category) async {

    if(this.categoryArticles[category]!.length > 0){
      return this.categoryArticles[category];
    }

    final url ='$_URL_NEWS/top-headlines?apiKey=$_APIKEY&country=kr&categoy=$category';
    final resp = await http.get(url);

    final newsResponse = newsResponseFromJson(resp.body);

    this.categoryArticles[category]?.addAll(newsResponse.articles);
    notifyListeners();
  }


}