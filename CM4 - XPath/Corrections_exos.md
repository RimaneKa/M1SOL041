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


