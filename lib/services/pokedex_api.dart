// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:convert';

import 'package:flutter_pokedex/model/pokemon_model.dart';


import 'package:dio/dio.dart';

class PokeApi{
  static const String _url = 'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json';
  static Future<List<PokemonModel>> getPokemonData()async{
    List<PokemonModel> _list = [];

    var result = await Dio().get(_url);
    var pokeList = jsonDecode(result.data)['pokemon'];

    if(pokeList is List){
      _list = pokeList.map((e) => PokemonModel.fromJson(e)).toList();
    }else{
      return [];
    }


    return _list;
  }
}



