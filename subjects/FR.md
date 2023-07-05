[< Revenir à la présentation.](/README.md)
# Linux Lab 2 - Français 🇫🇷 

<img align="right" alt="Spaceship" src="/assets/end.png" width="280px"/>

<br/>
<br/>
<br/>
<br/>
<div align="center">
Vous êtes l'ingénieur à la tête du nouveau spaceship en mission pour conquerir une exo-planète. 
</div>
<br/>
<br/>
<br/>
<br/>

Il est 05h26, vous venez tout juste d'atterir sur l'exo-planete LNX-4EVER. Vous observez avec émerveillement le paysage qui s'étend devant vous. Une étendue de terre rocailleuse et aride, baignée par la lumière pâle de l'aube naissante. Les montagnes se dressent majestueusement à l'horizon, leurs sommets émergeant d'une brume matinale légère. Des touffes d'herbe brune s'agitent doucement dans le vent frais du matin, et de petits animaux étranges courent furtivement entre les rochers. Vous savez que vous avez beaucoup de travail à faire pour préparer la mission à venir, mais pour l'instant, vous vous contentez de contempler ce paysage aussi étrange que magnifique qui s'offre à vous. 

# 06h12 - Vérifications et contrôls

Il est temps de reprendre vos esprits et de commencer le travail ! Pendant que l'équipage s'équipe pour l'exploration, vous vérifiez que l'atterissage s'est correctement déroulé.
Vous allez devoir créer plusieurs fichiers de verification à envoyer au centre de control.

Le centre de contrôle demande un rendu des évenements importants qui se sont produits pendant l'atterisage.
Les prérequis sont les suivants :
- Seul les champs d'état et le message sont à renseigner. (la date ne doit pas figurer)
- Les champs doivent être triés par état. (asendant)
> Créez ce rapport d'événements.

_Note : utilisez les enchainements de commandes avec le pipe bash et les redirecteurs de flux._

Il est aussi important d'avoir un compte des évenements afin de produire des statistiques d'amélioration.
Le fichier doit être sous la forme suivante :
```
infos 0
warnings 0
errors 0
```
> Créez un fichier compteur des événements.

_Note : il exite une commande pour compter sur linux, à vous faire des recherches._

Avant d'envoyer ces rapports au centre de contrôle terrestre, verifiez la conformité des données avec la commande``lab``.

# 06h53 - Installation des équipements de communication & connexion vers le centre de contrôle

Après que votre équipage ai déployé l'antenne, votre mission est configurer la machine.

## Hostname

Commencez par modifier le nom de la machine en rapport avec la mission.

Pour cela, il faut éditer deux fichier :
- /etc/hostname
    - Il définit le nom de la machine.
- /etc/hosts
    - Il contient une enrée pour résoudre en local avec le hostname en dur.

> Rennomez votre machine en "lnx-explorer".

Note : Cette modification nécessite un redémarrage de la machine.

## Configuration réseau

Afin d'établir le contact avec la station terrestre, vous établissez une configuration IP statique.

La configuration DHCP par défaut se trouve dans _/etc/network/interfaces_.

> Renseignez-vous et configurez votre machine en IPv4 statique.

Une fois la connexion établie, vous pouvez envoyer vos rapports générés précédements. Verifiez la connexion avec la commande ``lab``.

Note : Utilisez l'agument _-h_ ou _--help_ pour afficher la syntaxe du script.

# 07h49 - Il y a du monde par ici

Alors que vous venez tout juste de finir l'envoie des rapports, vous appercevez Victor un membre de l'équipe courir soudainement vers vous en faisant de grands mouvements et un visage pouvant traduire la terreur.

Vous comprenez enfin lorsque à l'horizon, d'impressionantes silouhaites se dressent parmis les rayons du soleil. Vous vous faites attaquer par une forme de vie inconnue !

Heureusement pour vous, vôtre préparation en amont vont vous permettre de venir à bout de ce problème. Après plusieurs secondes de doute, ça y'est, vous les identifiez. Ce sont ce qu'on appel : "des proccessus zombies" !

Une forme de vie envahisante et mauvaise pour vos systèmes. Bien que ce sont des processus avant tout, il sont nocives et réservent des ressources qu'ils n'exploitent plus.

Les explorateurs nous ont raportés des informations supplémentaires sur cette forme de vie :

    - Il paraît que la survie des guerriers (processus enfants) est dépendante de celle de leur commandant (du parent).
    - Les commandants (processus parents) sont très résistants, mais pas invincibles.

> Occupez-vous de ces processus zombies, il faut les éliminer.

Note : Commencez par un repérage. (ps)
    
```" Qui connaît son ennemi comme il se connaît, en cent combats ne sera point défait. "```

Une fois la bataille mener, vérifiez qu'il ne reste plus d'enemis.

> Lancez le drone pour vérifier les horizons.

# 9h10 - Installation du système d'oxygène

Vos réserves d'oxygène vous permettent de tenir 72h, il est donc temps de mettre en place le système de syntétisation d'oxygène.

Le système à du être séparé en deux parties (moteur et filtre) pour le trajet dû aux mélanges chimiques opposés.
Le filtre se trouve à bord du vaisseau, cepandant le moteur à été stocké dans un conteneur sous la forme d'une image disque.

## Ouverture du conteneur

> Quel est le type de fichier ?

Note : ``man file``.

> Chargez l'image virtuellement via la commande `lab load_disk_image`. Renseignez vous sur son fonctionnement avec `lab help`.

Maintenant, vous pouvez vérifier avec `lsblk` que le disque est détecté. Il est donc temps de faire un point de montage afin d'y accèder.

> Montez le disque sur _/mnt/container_.

Note : Vous allez devoir créer un dossier.

> Déplacez le moteur dans le vaisseau pour préparer l'étape suivante.

## Assemblage du système

L'emplacement du système à déja été préparer, c'est l'image vide nommée "oxygen_platform.img".

> Vérifiez le type du fichier.

Il est temps de partitionner ce disque.
L'objectif est le suivant : Créer deux partitions formatés en ``ext4``, de 15Mb et 10Mb environ. Ensuite, nous pourrons placer nos deux composants réspectivement dans chaqu'une des partitions.

> Utilisez l'utilitaire ``fdisk`` sur l'image, et créez deux partitions primaires comme expliqué ci-dessus.

> Chargez l'image virtuellement via la commande `lab load_disk_image`.

Note : Vous pouvez vérifier avec la commande ``lsblk``.

> Montez les deux partitions dans deux dossier différents.

> Déplacez le moteur dans la partition de 15Mb, et le filtre dans celle de 10Mb.

## Démarrage du système

> Avec la commande `lab launch_oxygen_system`, lancez la machine !

# 11h41 - Récolte des ressources

Une des raison de votre excurtion est de récolter des ressources inconnues disponnible sur cette planète.

Dans le dossier "planet", vous trouverez de nombeuses ressources assez banales, mais parmis elles se cache des matières exotiques encore jamais récoltés.
Vous devez donc les trouver et les récuperer.

Utilisez la commande ``find`` pour les différentes ressources ci-dessous.
Chaque ressource se trouve avec une méthode de recherche différentes.

Liste des matières exotiques à prélever :

    - Laskite
    - Irinite
    - Nexarium
    - Upprixite
    - Xamanite 

> Récuperez les échantillons, et déplacez les dans la salle d'analyse. Vérifiez les via la commmande ``lab launch_mineral_scan``

# 14h26 - La vengance des processus

Proc forked, killall

# 16h03 - Interferances

trace route - dig - nslookup - ping

# 18h57 - Automatisation 

Bashrc - Services

# 20h32 - Rapport journalier

flux : <> |

---

<img align="left" alt="End" src="/assets/end.png" width="280px"/> 
<img align="left" alt="Spacer" src="/assets/spacer.png" width="100px" height="280px"/>  

<br/>
<br/>
<br/>
Votre commandant de mission,

EnzoGzz.


