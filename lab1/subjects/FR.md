# Linux Lab 1 - Français 🇫🇷 

<img align="right" alt="Spaceship" src="https://raw.githubusercontent.com/EnzoGzz/linux-labs/master/lab1/assets/spaceship.png" width="280px"/>

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

Cependant, vous venez de remarquer **1h avant le décollage** qu'un membre de l'équipage à **compromis la configuration du vaisseau**, ce qui le rends **non-opérationnel**. Or il est impossible de décaler l'heure de décollage prévu initialement. Vous avez donc 1h pétante pour faire des miracles, **trouvez le coupable**, et **réparez le vaisseau**. Bon courage soldat ! 
  
## Accès au système  
  
Avec votre machine linux, **dirigez vous** dans le **dossier _src_** du projet cloné, puis **entrez** dans le dossier **_spaceship_**.  
  
**Listez** tous les **dossiers** du spaceship pour **verifier** que vous les dossiers suivants sont présents : 

 - Dormitories
 - Reactors
 - Storage
 - Control-center

  > Vérifiez l'intégrité du clone.
  
## Dortoirs  
  
  <img align="left" alt="Dormitory" src="https://raw.githubusercontent.com/EnzoGzz/linux-labs/master/lab1/assets/dormitory.png" width="280px"/>
  <img align="left" alt="Spacer" src="https://raw.githubusercontent.com/EnzoGzz/linux-labs/master/lab1/assets/spacer.png" width="15px" height="280px"/>

**Entrez** dans le dossier **_dormitories_**.  
  
Les configurations des dortoirs servent à **assigner** les **lits aux membres** de l'équipage, et contient quelques informations supplémentaires que vous allez découvrir.  

> Combien y'a t'il de dortoirs ?

Dans chaque dortoir, vous retrouverez un **fichier par membre d'équipage** avec un **fichier de configuration globale** indiquant la **couleur du bracelet associé au dortoir**.  
  
Listez chaque dortoir pour avoir le nombre total de membre entregistrés.  
 
> Combien y'a t'il de membres ? (vous inclus)
 
Lors de l'analyse, vous remarquez que **l'attaquant** à **déplacé** le fichier de configuration de **karen** dans le **mauvais dortoir**. Remettez le dans le dortoir n°1.  
  
Vous constatez aussi que **votre configuration à été supprimé** ! 

Vous êtes 'padawan' identifié comme '#K1B63' avec le role 'global supervisor'. Vous avez 29 ans et êtes assigné dans le deuxième dortoir dans le lit n°10.
  

> Recréez votre configuration dans le dortoir correspondant.

Indice : Copiez celui d'un autre membre, renomez le *padawan.conf*, puis modifiez les informations du fichier à votre image.

Tout à l'aire en ordre, executez le **script de vérification** _check-script.sh_ à la racine du dossier *dormitories*.  
  
  > Vérifiez la configuration des dortoires.
  
Vous pouvez passez à la suite si **tous les indicateurs** sont **OK**.  
  
## Réacteurs  
  
  <img align="right" alt="Dormitory" src="https://raw.githubusercontent.com/EnzoGzz/linux-labs/master/lab1/assets/reactor.png" width="280px"/>
  <img align="right" alt="Spacer" src="https://raw.githubusercontent.com/EnzoGzz/linux-labs/master/lab1/assets/spacer.png" width="15px" height="280px"/>
  
En analysant les configurations des réacteurs, vous vous rendez compte que l'**un des deux** est **incomplet**.

> Lequel des deux réacteurs est incomplet ?
  
**Toutes** les **informations** de ce fichier de configuration **se trouvent dans le dossier** du réacteur.

> Créez et completez la configuration *engine.conf* pour le réacteur défaillant.
  
 - Le champ **_fuel-type_** lui spécifie quel **type de carburant** est utilisé. Vous trouverez sûrement  l'information dans un manuel (peut-être caché). 

 - Le champ **quantity** correspond à la **taille du fichier** **_fuel_** en KB.
 
 - Le champ **_engine-with-starter_** est difficile à trouver. En effet de **nombreux fichiers** et sous **dossiers** se trouvent dans **_engines_**. Or rappelez vous que le vaisseau **décolle bientôt**! Pour aller plus vite vous décidez d'**installer** un **packet** pour tout lister d'**un seul coup**. **Installez** la commande **_tree_** avec apt, puis **utilisez** là sur le dossier **_engines_**.  Quand vous avez **ciblé** les **starters**, **remontrez** jusqu'**à la source** pour obtenir le **numéro du moteur** _(soit 1,2 ou 3)_. 
 
Lorsque vous pensez avoir la **bonne configuration**, executez le script de vérification à la racine du dossier *reactors*.  

  > Vérifiez la configuration des réacteurs.
  
Vous pouvez passez à la suite si **tous les indicateurs** sont **OK**.  
  
## Stockage  

<img align="left" alt="Dormitory" src="https://raw.githubusercontent.com/EnzoGzz/linux-labs/master/lab1/assets/storage.png" width="280px"/>
  <img align="left" alt="Spacer" src="https://raw.githubusercontent.com/EnzoGzz/linux-labs/master/lab1/assets/spacer.png" width="15px" height="280px"/>  

Votre collègue **Karen**, opératrice de la salle de stockage vous informe que **l'attaquant** a **mis le bazar** dans les differentes **palettes** de stockage, **empêchant** le **contrôle** des **rations** de nourriture.  
  
Elle **ajoute** qu'elle a **retrouvé le bouton** d'un **bracelet** au sol à côté de la palette de légumes, et qu'**avec un peu de chance**, **l'attaquant** a **fait tomber** son **bracelet** **coloré** dans celle-ci. 
<br/>

> Décompressez les deux palettes disponibles, et analysez leur contenu.  
  
Votre dossier **_storage_** devrait se **présenter comme le schéma ci-dessous**.  
```  
.  
├── ammunitions  
├── check-script.sh  
├── cucumbers  
├── knives  
├── potatoes  
└── tomatoes  
```  
  
  
> Remettez de l'odre dans les palettes, mais rappelez-vous que le temps presse.  

Indice : Au lieu de déplacer chaque fichier un par un, **utilisez l'opérateur '\*'** pour tout faire en un seul coup.  
  
> Une fois le tri effectué, refermez les palettes en compressant les dossiers comme dans leur état initial tel que le schéma ci-dessous.  
```  
.  
├── check-script.sh  
├── stuff.tar.gz  
└── vegetables.zip
```  
 Maintenant, le protocole d'hygiène et de sécurité devrait passer.
 
   > Lancez le contrôle des palettes.
  
Vous pouvez passez à la suite si **tous les indicateurs** sont **OK**.  
  
## Centre de contrôle  

  <img align="right" alt="Dormitory" src="https://raw.githubusercontent.com/EnzoGzz/linux-labs/master/lab1/assets/control-center.png" width="280px"/>
  <img align="right" alt="Spacer" src="https://raw.githubusercontent.com/EnzoGzz/linux-labs/master/lab1/assets/spacer.png" width="15px" height="280px"/>  

**La fin approche !** Vous vous dépêchez d'aller dans la salle de contrôle pour essayer de **retracer l'attaquant** avant le décollage.  
  
> Lancez le script *setup.sh* en tant que root pour initialiser la salle.  
  
Cette salle est **sécurisée**, vous allez être confronté à **plusieurs problèmes de permissions**, à vous de les régler.  
  
Vous avez deux missions :  
  
### Relancer le centre de contrôle.  
  
L'attaquant a **crypto-locké** le centre de contrôle, le seul moyen de le **déchiffrer** est de **lancer** le script **_unlock.sh_** en **usurpant** son **pseudo** (_h4cker-lab_). 

> Trouvez la commande pour lancer une commande avec une autre identitée.
  
### Identifier l'attaquant.  
  
Avec tous les **indices récoltés** depuis le début de cette aventure, vous devriez être en **capacité** de **l'identifier** grâce au fichier **_control.log_**. L'attaquant n'a **pas réussi** à le **détruire entièrement**, il reste donc quelques **informations intéressantes** à **analyser**.  
  
Un **conseil**, utilisez la **commande** **_grep_** _(lisez le manuel si vous ne connaissez pas la commande)_ pour **cibler** une **chaîne de caractères**. L'attaquant est **forcément passé** par le **centre** de contrôle **sans autorisation** afin de lancer son chiffrement.  
Rechercher toutes les lignes incluant ``control-center`` semble pertinent. 

> Identifiez l'attaquant, et ejectez le !
  
*Rappel : Il n'y a qu'**un seul** attaquant.*  
  
---  
  
Si vous êtes arriver ici, **bravo à vous soldat**, vous êtes l'Homme de la situation !  

Pensez à supprimer l'utilisateur *h4cker-lab* de votre machine. 

Le **nouveau spaceship** est **prêt** à partir en mission, **sans taupe** dans **l'équipage**.

---

 <img align="left" alt="End" src="https://raw.githubusercontent.com/EnzoGzz/linux-labs/master/lab1/assets/end.png" width="280px"/> 
   <img align="left" alt="Spacer" src="https://raw.githubusercontent.com/EnzoGzz/linux-labs/master/lab1/assets/spacer.png" width="100px" height="280px"/>  

<br/>
<br/>
<br/>
Votre commandant de mission,

EnzoGzz.


