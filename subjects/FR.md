[< Revenir à la présentation.](/README.md)
# Linux Lab 2 - Français 🇫🇷 

<img align="right" alt="Spaceship" src="/assets/spaceship_landed.png" width="280px"/>

<br/>
<br/>
<br/>
<br/>
<div align="center">
Vous êtes l'ingénieur à la tête du nouveau spaceship en mission pour conquerir une exo-planète. 
</div>
<br clear="right"/>
<br>
&nbsp;Il est 05h26, vous venez tout juste d'atterir sur l'exo-planete LNX-4EVER. Vous observez avec émerveillement le paysage qui s'étend devant vous. Une étendue de terre rocailleuse et aride, baignée par la lumière pâle de l'aube naissante. Les montagnes se dressent majestueusement à l'horizon, leurs sommets émergeant d'une brume matinale légère. Des touffes d'herbe brune s'agitent doucement dans le vent frais du matin, et de petits animaux étranges courent furtivement entre les rochers. Vous savez que vous avez beaucoup de travail à faire pour préparer la mission à venir, mais pour l'instant, vous vous contentez de contempler ce paysage aussi étrange que magnifique qui s'offre à vous. 

# 06h12 - Vérifications et contrôls

<img align="left" alt="Spaceship control" src="/assets/control.png" width="280px"/>
<img align="left" alt="Spacer" src="/assets/spacer.png" width="15px" height="280px"/>

<br/>
<br/>
<br/>
<br/>
<div align="center">
Il est temps de reprendre vos esprits et de commencer le travail ! Pendant que l'équipage s'équipe pour l'exploration, vous vérifiez que l'atterissage s'est correctement déroulé.
Vous allez devoir créer plusieurs fichiers de verification à envoyer au centre de control.
</div>

<br clear="left"/>

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

Avant d'envoyer ces rapports au centre de contrôle terrestre, vérifiez la conformité des données avec la l'utilitaire `lab`.

# 06h53 - Installation des équipements de communication & connexion vers le centre de contrôle

<img align="right" alt="Spaceship rack" src="/assets/connection.png" width="280px"/>
<img align="right" alt="Spacer" src="/assets/spacer.png" width="15px" height="280px"/>

<br/>
<br/>
<br/>
<br/>
<div align="center">
Après que votre équipage ai déployé l'antenne, votre mission est de configurer la machine.
</div>

<br clear="right"/>

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

Une fois la connexion établie, vous pouvez envoyer vos rapports générés précédements. Verifiez la connexion avec l'utilitaire `lab`.

_Note : Utilisez l'agument -h ou --help pour afficher la syntaxe du script._

# 07h49 - Il y a du monde par ici

<img align="left" alt="Zombies attack" src="/assets/attack.png" width="280px"/>
<img align="left" alt="Spacer" src="/assets/spacer.png" width="15px" height="280px"/>

<br/>
<br/>
<br/>
<br/>
<div align="center">
Alors que vous venez tout juste de finir l'envoie des rapports, vous appercevez Victor un membre de l'équipe courir soudainement vers vous en faisant de grands mouvements et un visage pouvant traduire la terreur.

Vous comprenez enfin lorsque à l'horizon, d'impressionantes silouhaites se dressent parmis les rayons du soleil. Vous vous faites attaquer par une forme de vie inconnue !

Heureusement pour vous, vôtre préparation en amont vont vous permettre de venir à bout de ce problème. Après plusieurs secondes de doute, ça y'est, vous les identifiez. Ce sont ce qu'on appel : "des proccessus zombies" !

Une forme de vie envahisante et mauvaise pour vos systèmes. Bien que ce sont des processus avant tout, il sont nocives et réservent des ressources qu'ils n'exploitent plus.
</div>

<br clear="left"/>

Les explorateurs nous ont raportés des informations supplémentaires sur cette forme de vie :

- Il paraît que la survie des guerriers (processus enfants) est dépendante de celle de leur commandant (du parent).
- Les commandants (processus parents) sont très résistants, mais pas invincibles.

> Occupez-vous de ces processus zombies, il faut les éliminer.

_Note : Commencez par un repérage. (ps)_
    
```" Qui connaît son ennemi comme il se connaît, en cent combats ne sera point défait. "```

Une fois la bataille mener, vérifiez qu'il ne reste plus d'enemis.

> Lancez le drone pour vérifier les horizons avec l'utilitaire `lab`.

# 9h10 - Installation du système d'oxygène

<img align="right" alt="Oxygen generator" src="/assets/oxygen.png" width="280px"/>
<img align="right" alt="Spacer" src="/assets/spacer.png" width="15px" height="280px"/>

<br/>
<br/>
<br/>
<br/>
<div align="center">
Vos réserves d'oxygène vous permettent de tenir 72h, il est donc temps de mettre en place le système de syntétisation d'oxygène.
</div>

<br clear="right"/>

Le système à du être séparé en deux parties (moteur et filtre) pour le trajet dû aux mélanges chimiques opposés.
Le filtre se trouve à bord du vaisseau, cepandant le moteur à été stocké dans un conteneur sous la forme d'une image disque.

## Ouverture du conteneur

> Quel est le type de fichier ?

_Note : `man file`._

> Chargez l'image virtuellement via la commande `sudo losetup --partscan --find --show container.img`.

Maintenant, vous pouvez vérifier avec `lsblk` que le disque est détecté. Il est donc temps de faire un point de montage afin d'y accèder.

> Montez le disque sur _/mnt/container_.

_Note : Vous allez devoir créer un dossier._

> Déplacez le moteur dans le vaisseau pour préparer l'étape suivante.

## Assemblage du système

L'emplacement du système à déja été préparer, c'est l'image vide nommée `oxygen_platform.img`.

> Vérifiez le type du fichier.

Il est temps de partitionner ce disque.
L'objectif est le suivant : Créer deux partitions formatés en "ext4", de 15Mb et 10Mb environ. Ensuite, nous pourrons placer nos deux composants réspectivement dans chaqu'une des partitions.

> Utilisez l'utilitaire `fdisk` sur l'image, et créez deux partitions primaires comme expliqué ci-dessus.

> Chargez l'image virtuellement via la commande `sudo losetup --partscan --find --show oxygen_platform.img`.

_Note : Vous pouvez vérifier avec la commande `lsblk`._

> Montez les deux partitions dans deux dossier différents.

> Déplacez le moteur dans la partition de 15Mb, et le filtre dans celle de 10Mb.

## Démarrage du système

> Avec l'utilitaire `lab`, lancez la machine !

# 11h41 - Récolte des ressources

<img align="left" alt="Exo-planet landscape" src="/assets/ressources.png" width="280px"/>
<img align="left" alt="Spacer" src="/assets/spacer.png" width="15px" height="280px"/>

<br/>
<br/>
<br/>
<br/>
<div align="center">
Une des raison de votre excurtion est de récolter des ressources inconnues disponnible sur cette planète.

Dans le dossier "planet", vous trouverez de nombeuses ressources assez banales, mais parmis elles se cache des matières exotiques encore jamais récoltés.
Vous devez donc les trouver et les récuperer.
</div>

<br clear="left"/>

Utilisez la commande `find` pour les différentes ressources ci-dessous.
Chaque ressource se trouve avec une méthode de recherche différentes.

Liste des matières exotiques à prélever :

- **Laskite** : le nom de fichier est "Laskite".
- **Irinite** : le fichier fait plus de 40 Mo.
- **Nexarium** : il existe un lien symbolique sur le fichier.
- **Upprixite** : le nom du fichier contient la chaîne de charactère suivante : "shFY". 
- **Xamanite** : le nom du fichier contient les charactères u,j,d dans l'ordre respectif. Il est à noter que ce minerais ce trouve uniquement après 5 de profondeurs.

> Récuperez les échantillons, et déplacez les dans la salle d'analyse. Vérifiez les via l'utilitaire `lab`

# 14h26 - Services

<img align="right" alt="Futuristic computer" src="/assets/services.png" width="280px"/>
<img align="right" alt="Spacer" src="/assets/spacer.png" width="15px" height="280px"/>

<br/>
<br/>
<br/>
<br/>
<div align="center">
Lorsque vous utilisez Linux, de nombeux services fonctionnent en tâche de fond afin de vous simplifier la vie.
Afin de pouvoir accèder à votre machine à travers le réseau, vous allez ouvrir l'accès en SSH.
</div>

<br clear="right"/>

Les services sont appelés des "démons" sur Linux. De ce fait, la plus part des noms de services finissent par un 'd'.

> Demarrez et activez le service "sshd".

Il est également possible de s'informer sur l'état et les dernières logs d'un service.

> Vérifez le status du service.

Lorsque vous modifiez la configuration d'un service, il faut généralement le rédémarrer.

_Note : C'est par exemple ce que vous avez fait lorsque vous avez définit votre ip en statique._

> Modifiez le port du service, et redemarrez le pour constater le changement.

Il ne reste plus qu'à tester !

> Connectez vous en SSH sur le port configuré.

_Note : Vous pouvez remettre le port par défaut (22) si vous le souhaitez._

# 16h03 - Interferences

<img align="left" alt="Antenna" src="/assets/interferences.png" width="280px"/>
<img align="left" alt="Spacer" src="/assets/spacer.png" width="15px" height="280px"/>

<br/>
<br/>
<br/>
<br/>
<div align="center">
La station spatiale vous informe qu'ils vous ont connecté à internet.
</div>

<br clear="left"/>

Vérifiez le bon fonctionnement du réseau.

> Commencez par ping "google.com".

> Tracez le chemin par lequel passe les requêtes.

> Quel est le serveur DNS en charge de vos résolutions ?

_Note : Renseignez vous sur la commande `dig`._


# 18h57 - Automatisation

<img align="right" alt="Robot" src="/assets/automation.png" width="280px"/>
<img align="right" alt="Spacer" src="/assets/spacer.png" width="15px" height="280px"/>

<br/>
<br/>
<br/>
<br/>
<div align="center">
Il est temps d'optimiser votre temps. Vous avez pour mission de régulièrement surveiller les données des capteurs.
</div>

<br clear="right"/>

Le script `get_sensors_data.sh` permet de vous afficher ces données traités.

Le premier objectif est d'afficher ces données à l'ouverture d'un terminal.

> Automatisez son execution via le fichier `.bashrc`.

_Note : Le fichier `.bashrc` s'execute à chaque ouverture de terminal._

---

Épuisé par une journée intense sur l'exoplanète LNX-4EVER, vous vous échappez vers la nuit étoilée. La brume fraîche et la beauté du paysage étrange vous entourent. Les montagnes majestueuses émergent d'une brume légère, tandis que les étoiles brillent au-dessus de vous.

Dans ce silence paisible, vous réfléchissez à l'aventure incroyable que vous avez vécue : les défis relevés, les mystères résolus, les ressources exotiques découvertes. Une excitation persiste malgré la fatigue, car demain vous poursuivrez votre exploration, repoussant les limites de votre connaissance.

Grâce à cette opportunité unique, vous vous sentez à la fois insignifiant face à l'immensité de l'univers et privilégié d'être ici, vivant une aventure extraordinaire. Vous vous endormez, bercé par la beauté du paysage, prêt à affronter de nouvelles découvertes et défis à venir.

---

<img align="left" alt="End" src="/assets/end.png" width="280px"/> 
<img align="left" alt="Spacer" src="/assets/spacer.png" width="100px" height="280px"/>  

<br/>
<br/>
<br/>
Votre commandant de mission,

EnzoGzz.


