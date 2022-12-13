import 'package:flutter/material.dart';

/// Ici une classe modele decrivant les caracteristiques principales d'un utilisateurs
/// C'est le modele de base des informations manipulé concernant les utilisateurs !!
class Epargneur extends ChangeNotifier {
  Epargneur({
    this.id,
    this.nom,
    this.prenom,
    this.sexe,
    this.dateNaissance,
    //  this.email,
    this.telephone,
    this.profession,
    this.password,
  });

  String? id;
  String? nom;
  String? prenom;
  String? sexe;
  String? dateNaissance;
  //  String? email;
  String? telephone;
  String? profession;
  String? password;

  void save({
    String? nom,
    // String? prenom,
    // String? sexe,
    // String? dateNaissance,
    // telephone,
    // String? profession,
    // String? password,
    // String? email,
  }) {
    this.nom = nom;
    notifyListeners();
  }
}

//  factory RecentAnime.fromJson(Map<String, dynamic> json) => RecentAnime(
//         id: json['id'],
//         name: json['name'],
//         epUrl: json['epUrl'],
//         currentEp: json['currentEp'],
//         imageUrl: json['imageUrl'],
//         // animeUrl: json['animeUrl'],
//       );

//   Map<String, dynamic> toJson() => {
//         'id': id,
//         'name': name,
//         'epUrl': epUrl,
//         'currentEp': currentEp,
//         'imageUrl': imageUrl,
//         // 'animeUrl': animeUrl,
//       };