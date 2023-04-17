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
- Seul les champs d'état et le meessage sont à rensgner. (la date ne doit pas figurer)
- Les champs doivent être triés par état. (asendant)
> Créez ce rapport d'événements.

Il est aussi important d'avoir un compte des évenements afin de produire des statistiques d'amélioration.
Le fichier doit être sous la forme suivante :
```
infos 0
warnings 0
errors 0
```
> Créez un fichier compteur des événements.

Avant d'envoyer ces rapports au centre de contrôle terrestre, verifiez la conformité des données via le script _check\_conformity.sh_

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




---

<img align="left" alt="End" src="/assets/end.png" width="280px"/> 
<img align="left" alt="Spacer" src="/assets/spacer.png" width="100px" height="280px"/>  

<br/>
<br/>
<br/>
Votre commandant de mission,

EnzoGzz.


