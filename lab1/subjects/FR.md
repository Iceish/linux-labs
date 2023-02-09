# Linux Lab 1 - Français

Vous êtes l'ingénieur à la tête du nouveau spaceship en mission pour conquerir une exo-planète.

Cependant, vous venez de remarquer 1h avant le décollage qu'un membre de l'équipage à compromis le dossier de configuration du vaisseau, ce qui le rends non-opérationnel. Or il est impossible de décaler l'heure de décollage prévu initialement. Vous avez donc 1h pétante pour faire des miracles, trouvez le coupable, et réparez le vaisseau. Bon courage soldat !

## Accès au système

Avec votre machine linux, dirigez vous dans le dossier *src* du projet cloné, puis entrez dans le dossier *spaceship*.

Listez tous les dossiers du spaceship pour verifier que vous les dossiers suivants sont présents : *dormitories*, *reactors*.

## Dortoirs

Entrez dans le dossier *dormitories*.

Les configurations des dortoirs servent à assigner les lits aux membres de l'équipage, et contient quelques informations supplémentaires que vous allez découvrir.

Combien y'a t'il de dortoirs ?

Dans chaque dortoir, vous retrouverez un fichier par membre d'équipage.
Ainsi que un fichier de configuration globale indiquant la couleur du bracelet associé au dortoir.

Listez chaque dortoir pour avoir le nombre total de membre entregistrés.

Lors de l'analyse, vous remarquez que l'attaquant à déplacé le fichier de configuration de karen dans le mauvais dortoir. Remettez le dans le dortoir n°1.

Vous constatez aussi que votre propre fichier à été supprimé !
Copiez celui d'un autre membre, renomez le *padawan.conf*, puis modifiez les informations du fichier à votre image.
Vous êtes assigné dans le deuxième dortoir.
```
id=01-f
name=padawan
age=29
bed=10
role=global supervisor
```
Tout à l'aire en ordre, executez le script de vérification à la racine du dossier *dormitories*.

Vous pouvez passez à la suite si tous les indicateurs sont OK.

## Réacteurs

En analysant les configurations des réacteurs, vous vous rendez compte que l'un des deux est incomplet. Lequel ?

Completez la configuration du réacteur incomplet avec les autres informations dans le dossier. Renseignez vous grâce à vos connaissances;


Le champ *fuel-type* lui spécifie quel type de carburant est utilisé. Vous trouverez l'information dans un fichier (peut-être caché).

Le champ quantity correspond à la taille du fichier *fuel* en KB.

Le champ *engine-with-starter* est difficile à trouver. En effet de nombreux fichiers et sous dossiers se trouvent dans *engines*. Or rappelez vous que le vaisseau décolle bientôt! Pour aller plus vite vous décidez d'installer un packet pour lister tout d'un coup. Installez la commande *tree* avec apt, puis utilisez là sur le dossier *engines*.
Quand vous avez ciblé les starters, remontrez jusqu'à la source pour obtenir le numéro du moteur (soit 1,2 ou 3)

Quand vous pensez avoir la bonne configuration, executez le script de vérification à la racine du dossier *reactors*.

Vous pouvez passer à la suite si tous les indicateurs sont OK.

## Stockage

Votre collègue Karen, opératrice de la salle de stockage vous informe que l'attaquant a mis le bazar dans les differentes palettes de stockage, empêchant le contrôle des rations de nourriture.

Elle ajoute qu'elle a retrouvé le bouton d'un bracelet au sol à côté de la palette de légumes, et qu'avec un peu de chance, l'attaquant a fait tomber son bracelet coloré dans celle-ci.

Décompressez les deux palettes disponibles, et analysez leur contenu.

Votre dossier *storage* devrait se présenter comme le schéma ci-dessous.
```
.
├── ammunitions
├── check-script.sh
├── cucumbers
├── knives
├── potatoes
└── tomatoes
```


Remettez de l'odre dans les palettes, mais rappelez-vous que le temps presse.
Au lieu de déplacer chaque fichier un par un, utilisez l'opérateur '\*' pour tout faire en un seul coup.

Une fois le tri effectué, refermez les palettes en compressant les dossiers comme dans leur état initial tel que le schéma ci-dessous.
```
.
├── check-script.sh
├── stuff.tar.gz
└── vegetables.zip
```

Exécutez le script de vérification pour faire le contrôle de stockage.

Vous pouvez passer à la suite si tous les indicateurs sont OK.
