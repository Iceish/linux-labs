# Linux Lab TP1 - Français

Vous êtes l'ingénieur à la tête du nouveau spaceship en mission pour conquerir une exo-planète.

Cependant, vous venez de remarquer 1h avant le décollage qu'un membre de l'équipage à compromis le dossier de configuration du vaisseau, ce qui le rends non-opérationnel. Or il est impossible de décaler l'heure de décollage prévu initialement. Vous avez donc 1h pétante pour faire des miracles, trouvez le coupable, et réparez le vaisseau. Bon courage soldat !

## Accès au système

Avec votre machine linux, dirigez vous dans le dossier *src* du projet cloné, puis entrez dans le dossier *spaceship*.

Listez tous les dossiers du spaceship pour verifier que vous les dossiers sont bien là.

## Dortoires

Entrez dans le dossier *dormitories*.

Les configurations des dortoires servent à assigner les lits aux membres de l'équipage, et contient quelques informations supplémentaires que vous allez découvrir.

Combien y'a t'il de dortoires ?

Dans chaque dortoire, vous retrouverez un fichier par membre d'équipage.

Listez chaque dortoire pour avoir le nombre total de membre entregistrés.

Lors de l'analyse, vous remarquez que l'attaquant à déplacé le fichier de configuration de karen dans le mauvais dortoire. Remettez le dans le dortoire n°1.

Vous constatez aussi que votre propre fichier à été supprimé !
Copiez celui d'un autre membre, puis modifiez les informations du fichier à votre image.
```
id=01-f
name=padawan
age=29
bed=10
role=global supervisor
```
Tout à l'aire en ordre, executez le script de vérification à la racine du dossier *dormitories*.

Vous pouvez passez à la suite si tous les indicateurs sont OK.

## Reactors

En analysant les configurations des réacteurs, vous vous rendez compte que l'un des deux est incomplet. Lequel ?

Completez la configuration du réacteur incomplet avec les autres informations dans le dossier. Renseignez vous grâce à vos connaissances;


Le champ *fuel-type* lui spécifie quel type de carburant est utilisé. Vous trouverez l'information dans un fichier (peût-être caché).

Le champ quantity correspond à la taille du fichier *fuel* en KB.

Le champ *engine-with-starter* est difficile à trouver. En effet de nombreux fichiers et sous dossiers se trouvent dans *engines*. Or rappelez vous que le vaisseau décolle bientôt! Pour aller plus vite vous décidez d'installer un packet pour lister tout d'un coup. Installez la commande *tree* avec apt, puis utilisez là sur le dossier *engines*. Quand vous avez ciblé les starters, remontrez jusqu'à la source pour obtenir le numéro du moteur.

Quand vous pensez avoir la bonne configuration, executez le script de vérification à la racine du dossier *reactors*.

Vous pouvez passer à la suite si tous les indicateurs sont OK.
