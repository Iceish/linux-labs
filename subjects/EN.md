# Linux Lab 1 - English 🇺🇸

<img align="right" alt="Spaceship" src="/assets/spaceship.png" width="280px"/>

<br/>
<br/>
<br/>
<br/>
<div align="center">
You are the engineer in charge of the new spaceship on a mission to conquer an exoplanet.
</div>
<br/>
<br/>
<br/>
<br/>

However, you just noticed **1 hour before takeoff** that a crew member has **compromised the ship's configuration**, making it **non-operational**. It is impossible to reschedule the originally scheduled takeoff time. So you have exactly 1 hour to perform miracles, **find the culprit**, and **repair the ship**. Good luck soldier! *Chop, chop !*
  
## System Access

With your linux machine, **head to** the **_src_** file in the cloned project, then **enter** the **_spaceship_** folder.

**List** all the **folders** in the spaceship in order to **verify** that the following folders are present :

 - Dormitories
 - Reactors
 - Storage
 - Control-center

> Verify clone integrity.
  
## Dormitories
  
<img align="left" alt="Dormitory" src="/assets/dormitory.png" width="280px"/>
<img align="left" alt="Spacer" src="/assets/spacer.png" width="15px" height="280px"/>

Enter the **_dormitories_** folder.

Dormitories configurations are used to **assign beds** to crew members and contain some additionnal information that you will discover.

> How many dormitories are there?

In each dormitory, you'll find a **file for each crew member** with a **global configuration file** pointing out the bracelet color associated with the dormitory.

List each dormitory to get the total number of registered members.

> How many members are there? (including yourself)

During the analysis, you noticed that the **attacker has moved** the Karen's configuration file into the **wrong** dormitory.

> Move it back where it belongs.

You also noticed that **your own file has been deleted**!

You are 'padawan', identified as '#K1B63' with the 'global supervisor' role. You're 29 years old and assigned to the second dormitory into the n°10 bed.

> Create your configuration file into the corresponding dormitory.

Hint : Copy-paste the file from another member and rename it *padawan.conf*, then edit informations in it.

Everything seems to be in order, run **verification script** _check-script.sh_ at the **_dormitories_** root folder.
  
> Verify dormitories configuration.
  
You can move on if **all indicators** are **OK**.
  
## Reactors
  
<img align="right" alt="Dormitory" src="/assets/reactor.png" width="280px"/>
<img align="right" alt="Spacer" src="/assets/spacer.png" width="15px" height="280px"/>

Upon analyzing reactors configurations files, you realize that **one of the two** is **incomplete**.

> Which one is incomplete?
  
**Every information** that you need **can be found** in **reactor folder**.

> Create and complete *engine.conf* file for the malfunctionning reactor.
  
 - **Fuel-type** field specify what **kind of fuel** is used. You would certainly find this information in a notice (maybe hidden).
 - **Quantity** field corresponds to the **_fuel_** file size in KB.
 - **Engine-with-stater** is a bit harder to find. Indeed, **many files** and **subdirectories** are in **_engines_** folder. However, keep in mind that the ship is **taking off soon**! To save time, you decide to **install** a **package** to **list everything at one**. Install the **_tree_** command with apt, then **use it** on the **_engines_** folder. When you **have targeted** the **starters**, go **back to the source** to get the **engine number** _(ie:1,2 or 3)_.


When you think you have the **right configuration**, run the verification script at the root of the _reactors_ folder.

> Verify reactors configuration.
  
You can move on if **all indicators** are **OK**.
  
## Storage

<img align="left" alt="Dormitory" src="/assets/storage.png" width="280px"/>
<img align="left" alt="Spacer" src="/assets/spacer.png" width="15px" height="280px"/>

Your colleague **Karen**; the storage room operator, informs your that the **attacker** has **caused cahos** in the differentes stroage pallets, **preventing** the **control** of **food rations**.
  
She **adds** that se **found the button** of a **bracelet** on the ground next to the vegetables palette, and **with a bit of luck**, the **attacker dropped** his **colored bracelet** in it.

<br/>

> Unzip the two available pallets, and analyze their contents.

Your **_storage_** folder should **look like the following diagram**:
```  
.  
├── ammunitions  
├── check-script.sh  
├── cucumbers  
├── knives  
├── potatoes  
└── tomatoes  
```  
  
> Put order back into the pallets, but keep in mind that time is of the essence.

Hint: Instead of moving each file one by one, **use** the **'\*' operator** to do it all at once.

> Once the sorting is done, close the pallets by compressing the folders back to their original state as shown in the following diagram.

```
.  
├── check-script.sh  
├── stuff.tar.gz  
└── vegetables.zip
```
Now, the health and safety protocol should pass.

> Launch the palets control.
  
You can move on if **all indicators** are **OK**.
  
## Control center

<img align="right" alt="Dormitory" src="/assets/control-center.png" width="280px"/>
<img align="right" alt="Spacer" src="/assets/spacer.png" width="15px" height="280px"/>

**The end is near!** You hurry to the control room to try to **trace the attacker** before the takeoff.

> Launch *setup.sh* script as root to initalize the room.

This room is **secure**, you 'll be faced with **several permissions problems**, it's up to you to fix'em.

You have to missions:
  
### Restart the control center.
  
The attacker has **crypto-locked** the control center, the only way to **decode** the system is by **launching** the **_unlock.sh_** script by **usurping** his **username** (_h4cker-lab_).

> Find the command for launching a command with someone else identity, and unlock the system.
  
### Identify the attacker.

With all the **clues collected** since the beginning of this adventure, you **should be able** to **identify** him using the **_control.log_** file. The attacker **failed to destroy it entirely**, so there are **still some interesting information** to **analyze**.

A **tip**, use the **_grep_** command _(read the man)_ in order to **target** a **character string**. The **attacker had to go through** the **control center without authorization** in order to launch his encryption.
Searching for all lines including ``control-center`` seems relevant.

> Identify the attacker, and kick him off!

*Note: Rembember that there is only one attacker.*

---  
  
If you're here, **bravo to you soldier**, you are the man for the job!

Remember to delete the *h4cker-lab* account on your machine.

The **new spaceship** is **ready** to take off **without enemy** onboard.

---

<img align="left" alt="End" src="/assets/end.png" width="280px"/>
<img align="left" alt="Spacer" src="/assets/spacer.png" width="100px" height="280px"/>

<br/>
<br/>
<br/>

Your mission commander,

EnzoGzz.


