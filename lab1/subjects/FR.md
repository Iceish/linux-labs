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

Vous pouvez passez à la suite si c'est OK.

## Reactors


