## Exercice n°1

À partir du fichier `JoachimDuBellay.xml`, écrire les requêtes XPath pour accéder aux éléments suivants:

* Le texte du 6eme vers
` //l[@n="6"] `

* Le texte du tercet n°2
`//lg[@type="tercet"][@n='2']/l/text()`

OU

``//lg[@type="tercet"][@n='2']/*``

* Le texte de tous les vers des quatrains
`//lg[@type="tercet" and @n="2"]/l/string(.)`

* Tous les noms de lieux
`//placeName/text()`


## Exercice n°2

À partir du fichier `booker.xml`, écrire les requêtes XPath pour accéder aux éléments suivants:

* le cinquième livre dans la liste
`//bibl[5]/*`

* l’auteur du sixième livre dans la liste
`//bibl[6]/author/text()`

* le titre du livre qui a gagné en 2000
`//bibl[date='2000']/title`

* le nom de l’auteur du livre intitulé "Possession"
`//bibl[title='Possession']/author`

* le titre des livres dont "J M Coetzee" est l’auteur
`//bibl[author='J M Coetzee']/title`

* le nom de tous les auteurs qui ont obtenu un prix depuis 1995
`//bibl[date>'1995']/author`

* le nombre total de prix décernés
`count(//bibl)`


### Exercice n°3

1. Écrivez une expression XPath pour extraire tous les titres des albums.
`//listBibl/bibl/title/text()`

2. Quelle expression XPath permet d'extraire toutes les dates des albums ?
` //listBibl/bibl/date/text() `

3. Écrivez une expression XPath pour extraire tous les albums dont l'auteur est "Hergé".
`//bibl[author='Hergé']/title`

4. Quel est le titre de l'album paru en 1954 ? (Écrire en texte d'abord)

5. Quelle expression XPath permet d'extraire le titre de l'album paru en 1954 ?
`//bibl[date=' août 1954 ']/title/text()`

6. Écrivez une expression XPath pour extraire les informations de l'album "Le Devin".
`//bibl[title='Le Devin']//text()`

7. Quelle expression XPath permet d'extraire les informations de l'album "Astérix aux Jeux Olympiques" ?
`//bibl[title='Astérix aux Jeux Olympiques']//text()`

8. Identifiez l'erreur dans l'expression XPath suivante : `//bibl[title="Astérix au
Jeux Olympiques"]`.
`il manque le pluriel à "au"`

9. Écrivez une expression XPath pour extraire les albums de la série "Astérix".
`//bibl[@corresp="Astérix"]//text()`

10. Quelle expression XPath permet d'extraire les albums de la série "Astérix" dont la date de parution est 1970 ?
`//bibl[@corresp='Astérix']/date[@when='1970']`

11. Écrivez une expression XPath pour extraire les dates des albums de la série "Astérix" parus avant 1970.
`//bibl[@corresp='Astérix'][date[number(@when) < 1970]]/date[@when]/text()`

12. Quelle expression XPath permet d'extraire les dates des albums de la série "Astérix" parus avant 1970 inclus ?
`//bibl[@corresp='Astérix'][date[number(@when) <= 1970]]/date[@when]/text()`

13. Écrivez une expression XPath pour extraire le numéro 7 de la série "Tintin".
`//bibl[@corresp='Tintin'][@n='7']//text()`
ou
`//bibl[@corresp='Tintin' and @n='7']//text()`

14. Quelle expression XPath permet d'extraire les informations concernant le titre "Objectif Lune" ?
`//bibl[title='Objectif Lune']//text()`

15. Écrivez une expression XPath pour extraire les albums qui n'ont pas d'élément `<date>`.
`//bibl[not(date)]//text()`

16. Quelle expression XPath permet d'extraire le nombre total d'albums de la série "Tintin" ?
`count(//bibl[@corresp='Tintin'])`

17. Quelle expression XPath permet d'extraire les titres d'albums qui commencent par "Astérix" ?
`//bibl/title[starts-with(., 'Astérix')]/text()`











//title[following-sibling::date[number(@when) < 1970]]
