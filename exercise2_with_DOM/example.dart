// Exercise 1 for Universite Laval SIO 2109 - Dart Programming
// Available here: On Dart [Web Programming] (http://ondart.me/web_programming.md) course.
// Author: Maxime Fortier


library ul_dart_exercise2;

import 'dart:math';
import 'dart:html';

part 'ul_dart_exercise2_functions.dart';


main() {
  document.query('#question21').innerHtml =
      "Vous avez à votre disposition une variable contenant des phrases de différentes longueurs. Écrivez un script qui recherche et affiche la phrase la plus longue.<br>";
  document.query('#question21').appendHtml("<b>Answer:</b><br>");
  
  var arrayOfSentences = [];
  arrayOfSentences.add('Lorem Ipsum');
  arrayOfSentences.add('Lorem Ipsum Dolor');  
  arrayOfSentences.add('Lorem Ipsum Dolor Sit Amet');
  arrayOfSentences.add('Lorem Ipsum Dolor Sit');  
  //print(arrayOfSentences);
  document.query('#question21').appendHtml("Array of sentences: <br>");
  document.query('#question21').appendHtml(arrayOfSentences.toString());
  document.query('#question21').appendHtml("<br>");
  var maxLenght = 0;
  var maxLenghtId = 0;
  var i = 0;
  for(var Sentence in arrayOfSentences){
    //print(Sentence);
    if(Sentence.length > maxLenght){
      maxLenght = Sentence.length;
      maxLenghtId = i;
    }
    i++;
  }
  var longestSentence = '';
  longestSentence = arrayOfSentences[maxLenghtId].toString();
  //print(longestSentence);
  document.query('#question21').appendHtml("Longest Sentence: <br>");
  document.query('#question21').appendHtml(longestSentence.toString());
  document.query('#question21').appendHtml("<br>");
  
  
  
  
  
  
  
  
  
  
  document.query('#question22').innerHtml =
      "Écrivez une fonction qui recherche le mot le plus long dans une phrase donnée..<br>";
  document.query('#question22').appendHtml("<b>Answer:</b><br>");
  
  var myText = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";
  document.query('#question22').appendHtml("Given sentence: <br>");
  document.query('#question22').appendHtml(myText.toString());
  document.query('#question22').appendHtml("<br>");
  longestSentence = f_question2_2(myText);
  
  document.query('#question22').appendHtml("Longest word in given sentence: <br>");
  document.query('#question22').appendHtml(longestSentence.toString());
  document.query('#question22').appendHtml("<br>");
 
  
  
  
  
  
  document.query('#question23').innerHtml =
      "Écrivez une fonction qui permette d’afficher la liste des éléments aléatoires contenus dans une liste fourni en argument.<br>";
  document.query('#question23').appendHtml("<b>Answer:</b><br>");
  var arrayOfElements = [];
  //Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
  arrayOfElements.add('lorem');
  arrayOfElements.add('ipsum');  
  arrayOfElements.add('dolor');
  arrayOfElements.add('sit');
  arrayOfElements.add('amet');
  arrayOfElements.add('consectetur');  
  arrayOfElements.add('adipisicing');
  arrayOfElements.add('elit'); 
  arrayOfElements.add('sed');
  arrayOfElements.add('do');  
  arrayOfElements.add('eiusmod');
  arrayOfElements.add('incididunt'); 
  document.query('#question23').appendHtml("Given elements: <br>");
  document.query('#question23').appendHtml(arrayOfElements.toString());
  document.query('#question23').appendHtml("<br>");
  var numberOfItems = 10;
  var randomthoughts = f_question2_3(arrayOfElements, numberOfItems);
  
  document.query('#question23').appendHtml("Random elements: <br>");
  document.query('#question23').appendHtml(randomthoughts.toString());
  document.query('#question23').appendHtml("<br>");

  
  
  
  
  
  
  document.query('#question24').innerHtml =
      "Écrivez une fonction qui permet de créer une liste avec les noms, prénoms et courriels des membres d’un club.<br>";
  document.query('#question24').appendHtml("Écrivez une fonction qui effectue une copie triée de cette liste.<br>");
  document.query('#question24').appendHtml("Écrivez une fonction qui permette d’extraire de cette liste les lignes qui correspondent à des noms dont la première lettre commence par un caractère spécifique.<br>");

  document.query('#question24').appendHtml("<b>Answer:</b><br>");
 
  var mapOfContacts = new Map();
  //mapOfContacts[1] = 'FirstName; LastName; Email';
  mapOfContacts[1] = 'Kathern;Mcwilliams;Kathern.Mcwilliams@maximefortier.com';
  mapOfContacts[2] = 'Fairy;Keena;Fairy.Keena@maximefortier.com';
  mapOfContacts[3] = 'Deb;Periera;Deb.Periera@maximefortier.com';
  mapOfContacts[4] = 'India;Vanderbilt;India.Vanderbilt@maximefortier.com';
  mapOfContacts[5] = 'Teofila;Pernice;Teofila.Pernice@maximefortier.com';
  mapOfContacts[6] = 'Burton;Alves;Burton.Alves@maximefortier.com';
  mapOfContacts[7] = 'Lisandra;Alverson;Lisandra.Alverson@maximefortier.com';
  mapOfContacts[8] = 'Lorean;Marini;Lorean.Marini@maximefortier.com';
  mapOfContacts[9] = 'Trudi;Mayhew;Trudi.Mayhew@maximefortier.com';
  mapOfContacts[10] = 'Jovan;Shira;Jovan.Shira@maximefortier.com';
  mapOfContacts[11] = 'Clarinda;Lofton;Clarinda.Lofton@maximefortier.com';
  mapOfContacts[12] = 'Nicholas;Mcnutt;Nicholas.Mcnutt@maximefortier.com';
  mapOfContacts[13] = 'Emmanuel;Laffey;Emmanuel.Laffey@maximefortier.com';
  mapOfContacts[14] = 'Evelia;Bee;Evelia.Bee@maximefortier.com';
  mapOfContacts[15] = 'Merilyn;Savoy;Merilyn.Savoy@maximefortier.com';
  mapOfContacts[16] = 'Hana;Sosa;Hana.Sosa@maximefortier.com';
  mapOfContacts[17] = 'Nicolas;Moles;Nicolas.Moles@maximefortier.com';
  mapOfContacts[18] = 'Stephine;Yahn;Stephine.Yahn@maximefortier.com';
  mapOfContacts[19] = 'Norene;Laub;Norene.Laub@maximefortier.com';
  mapOfContacts[20] = 'Hattie;Seiden;Hattie.Seiden@maximefortier.com';

  
  document.query('#question24').appendHtml("Given list of members: <br>");
  //print('List of Clubs:');

  mapOfContacts.forEach((k, v) => document.query('#question24').appendHtml('Member ID $k: $v <br>'));
  
  var valuesDeMembres = mapOfContacts.values.toList();
  
  valuesDeMembres.sort((m,n) => m.compareTo(n));
  document.query('#question24').appendHtml("<br>Sorted list of members: <br>");
  //valuesDeMembres.forEach((k, v) => document.query('#question24').appendHtml('Member ID $k: $v <br>'));
 
  var listeDeMembreRecherches = [];
  
  var lookingStartingWith = 'C';
  
  
  
  for (var membres in valuesDeMembres) {
    document.query('#question24').appendHtml("$membres <br>");
    if(membres.startsWith(lookingStartingWith)){
      listeDeMembreRecherches.add(membres);
    }
  } 
  document.query('#question24').appendHtml("<br>Looking for members that starts with letter: $lookingStartingWith<br>");
  document.query('#question24').appendHtml("<br>List of members matching criteria:<br>");
  for (var idenmembres in listeDeMembreRecherches) {
    document.query('#question24').appendHtml("$idenmembres <br>");
  }
  document.query('#question24').appendHtml("<br>");
  
  
  
  
  

  
  
  document.query('#question25').innerHtml =
      "Représentez le modèle des concepts Club et Membre comme les maps (les noms des propriétés comme les clés) dans les listes.<br>";
  document.query('#question25').appendHtml("<b>Answer:</b><br>");
  

  document.query('#question25').appendHtml("<br>");
  
  
  var mapOfContactsClubs = [ { 
             "nom" : "Atlanta Bacon", 
             "description": "Lorem Ipsum dolor sit amet",
             "membres" :    
                  [{
                      "firstName" : "Kathern", 
                      "lastName" : "Mc Williams", 
                      "email" : "Kathern.Mcwilliams@maximefortier.com"
                    },
                   {
                      "firstName" : "Fairy", 
                      "lastName" : "Keena",
                      "email" : "Fairy.Keena@maximefortier.com"
                   },
                   {
                     "firstName" : "Deb", 
                     "lastName" : "Periera",
                     "email" : "Deb.Periera@maximefortier.com"
                  }]
              },
              { 
                "nom" : "Boston Box", 
                "description": "Consectetur adipisicing elit, sed do eiusmod tempor incididunt",
                "membres" :    
                  [{
                      "firstName" : "India", 
                      "lastName" : "Vanderbilt", 
                      "email" : "India.Vanderbilt@maximefortier.com"
                    },
                   {
                      "firstName" : "Teofila", 
                      "lastName" : "Pernice",
                      "email" : "Teofila.Pernice@maximefortier.com"
                   }]
              }
           ];
  //print("List of Clubs and their respective members:");
  document.query('#question25').appendHtml("<b>List of Clubs and their respective members:</b><br>");
  //print(mapOfContactsClubs);
  document.query('#question25').appendHtml("$mapOfContactsClubs<br><br>");
  
  
  mapOfContactsClubs.add({
                "nom" : "Michigan Fish", 
                "description": "Consectetur adipisicing elit, sed do eiusmod tempor incididunt",
                "membres" :    
                  [{
                      "firstName" : "Trudi", 
                      "lastName" : "Mayhew", 
                      "email" : "Trudi.Mayhew@maximefortier.com"
                    },
                   {
                      "firstName" : "Nicolas", 
                      "lastName" : "Moles",
                      "email" : "Nicolas.Moles@maximefortier.com"
                   }]
  });
  //print("Adding a new Club to the list with only two member... here is the new list:");
  //print(mapOfContactsClubs);

  document.query('#question25').appendHtml("<b>Adding a new Club to the list with only two member... here is the new list:</b><br>");
  //print(mapOfContactsClubs);
  document.query('#question25').appendHtml("$mapOfContactsClubs<br><br>");
  
  mapOfContactsClubs.removeLast();
  
  //print("Removing a club from the list... here is the new list:");
  //print(mapOfContactsClubs);
  document.query('#question25').appendHtml("<b>Removing a club from the list... here is the new list:</b><br>");
  document.query('#question25').appendHtml("$mapOfContactsClubs<br><br>");
  

  
}
