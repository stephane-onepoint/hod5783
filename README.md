En parallèle de l'[advent of code](https://adventofcode.com/2022/), très orienté algorithmes et structures de données, a eu lieu le [hanukkah of data](https://hanukkah.bluebird.sh/5783/), orienté analyse de données. Huit petits challenges qui demandent de trouver des réponses dans un set de données relationnelles. 

Pour ceux qui seraient tenté d'exercer leurs compétences de data miner, rassurez vous, vous n'y passerez pas des soirées entières comme pour l'AoC. Ici une seule devrait suffire :)

Les données sont disponibles en JSON, CSV et SQL ; de quoi laisser libre court au choix de l'outil : excel, jq, pandas, spark, etc.

Je l'ai dans un premier temps fait en SQL avec [SQLite](https://sqlite.org/) et ensuite j'ai voulu tester [Duckdb](https://duckdb.org/), une base de données embarquée (comme sqlite donc) mais orienté OLAP, avec un stockage en colonnes.

Je n'ai pas été déçu. Tout d'abord je n'ai que très peu retouché le code pour qu'il fonction avec Duckdb. Les messages d'erreurs étaient explicites et les ajustements simples.

Ensuite parce que les performances sont au rendez-vous.
Le stockage sur disque passe de 38MB à 9MB. Et le temps d'exécution des scripts passe de 3.2s à 0.4s soit un huit fois plus rapide. C'est à peu près ce qu'affiche le site de Duckdb.

Bien sûr le dataset est plutôt petit et le type d'exercice pas nécessairement représentatif de tous les cas d'usages.
