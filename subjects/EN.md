[< Back to the presentation.](/README.md)
# Linux Lab 1 - English 🇬🇧

<img align="right" alt="Spaceship" src="/assets/spaceship.png" width="280px"/>

<br/>
<br/>
<br/>
<br/>
<div align="center">
You are the engineer in charge of the new spaceship on a mission to conquer an exo-planet.
</div>
<br/>
<br/>
<br/>
<br/>

However, just 1 hour before the scheduled launch, you discovered that a crew member has compromised the spaceship's configuration, rendering it non-operational. Unfortunately, it's impossible to delay the launch. Now, you have exactly 1 hour to work miracles, find the culprit, and repair the spaceship. Good luck, soldier!

## Utility

Follow the instructions to set up the project on the [presentation page](../README.md).

Throughout this lab, you will use a utility accessible via the `lab` command to perform various checks.

Use `lab help` to display the help menu.

⚠️ If the `lab` command does not exist, source the `setup.sh` file available at the root of the `src` folder.
```bash
source ./setup.sh
```
_Note: Perform this action each time you open a new terminal._

## Dormitories

<img align="left" alt="Dormitory" src="/assets/dormitory.png" width="280px"/>
<img align="left" alt="Spacer" src="/assets/spacer.png" width="15px" height="280px"/>

Enter the _dormitories_ folder.

The dormitories' configurations are used to assign beds to crew members and contain some additional information that you'll discover.

> How many dormitories are there?

In each dormitory, you'll find a file for each crew member and a global configuration file indicating the color of the bracelet associated with the dormitory.

List each dormitory to find out the total number of registered members.

> How many members are there? (including you)

During the analysis, you notice that the attacker moved Karen's configuration file to the wrong dormitory. Move it back to dormitory #1.

You also realize that your configuration has been deleted!

You are a "padawan" identified as "#K1B63" with the role of "global supervisor." You are 29 years old and assigned to the second dormitory in bed #10.

> Recreate your configuration in the corresponding dormitory.

_Note: Copy the configuration of another member, rename it as "padawan.conf," then modify the information in the file to match yours._

Once everything is in order, verify the layout using the `lab` utility.
_Note: Use the -h or help argument to display the syntax of the utility._

> Verify the dormitories' configuration.

You can proceed to the next step if the indicators show "OK."

## Reactors

<img align="right" alt="Reactor" src="/assets/reactor.png" width="280px"/>
<img align="right" alt="Spacer" src="/assets/spacer.png" width="15px" height="280px"/>

By analyzing the reactor configurations, you realize that one of the two reactors is incomplete.

> Which of the two reactors is incomplete?

All the information for this configuration file is located in the reactor's folder.

> Create and complete the "engine.conf" configuration for the faulty reactor.

- The "fuel-type" field specifies the type of fuel used. You might find this information in a manual (perhaps hidden).

- The "quantity" field corresponds to the size of the `fuel` file in KB.

- The "engine-with-starter" field is difficult to find. Numerous files and subfolders are in `engines`. However, remember that the spaceship is about to launch! To save time, decide to install a package to list everything at once. Install the `tree` command using `apt`, then use it on the `engines` folder. When you've targeted the starters, navigate back to the source to find the engine number _(either 1, 2, or 3)_.

When you think you have the correct configuration, verify it with the `lab` utility.

> Verify the reactor's configuration.

## Storage

<img align="left" alt="Storage" src="/assets/storage.png" width="280px"/>
<img align="left" alt="Spacer" src="/assets/spacer.png" width="15px" height="280px"/>

Your colleague Karen, the storage room operator, informs you that the attacker has caused chaos in the different storage pallets, preventing the control of food rations.

She adds that she found a bracelet button on the floor next to the vegetable pallet and, with a bit of luck, the attacker may have dropped their colored bracelet in it.

> Decompress the two available pallets and analyze their contents.

Your `storage` folder should look like the following diagram.

```  
.  
├── ammunitions  
├── cucumbers  
├── knives  
├── potatoes  
└── tomatoes  
```  
  
> Sort the contents of the pallets, but remember that time is running out.

_Note: Instead of moving each file one by one, use the '\*' operator to do it all at once._

> Once the sorting is done, close the pallets by compressing the folders as in their initial state, as shown in the diagram below.

```  
.  
├── stuff.tar.gz  
└── vegetables.zip
```  

Now, the hygiene and safety protocol should pass.

> Run the pallets check using the `lab` utility.

## Control Center

<img align="right" alt="Control Center" src="/assets/control-center.png" width="280px"/>
<img align="right" alt="Spacer" src="/assets/spacer.png" width="15px" height="280px"/>

The end is near! Hurry to the control center to try to trace the attacker before the launch.

> Launch the `lab start_console` command to initialize the control center.

This room is secure, and you will face several permission problems that you need to resolve.

You have two missions:

### Control Center Recovery

The attacker has crypto-locked the control center, and the only way to decrypt it is to find the decryption key and activate it.

> Run the `get_key.sh` script by impersonating "h4cker-lab".

_Note: Use `man sudo`_

Now that you have the key, quickly activate the decryption using the `lab` utility!

> Decrypt the spaceship and retrieve the logs!

### Identify the Attacker

With all the clues gathered since the beginning of this adventure, you should be able to identify the attacker using the `control.log` file. The attacker didn't manage to destroy it completely, so there are still some useful information to analyze.

A piece of advice, use the `grep` command _(read the manual if you are not familiar with it)_ to target a character string. The attacker must have accessed the control center without authorization to launch their encryption. Searching for all lines including "control-center" seems relevant.

> Identify the attacker and eject them!

_Note: There is only one attacker._

---

If you've made it this far, congratulations, soldier! You are the right

 person for the job!

Remember to delete the user "h4cker-lab" from your machine.

The new spaceship is ready for its mission, without any moles in the crew.

---

<img align="left" alt="End" src="/assets/end.png" width="280px"/>
<img align="left" alt="Spacer" src="/assets/spacer.png" width="100px" height="280px"/>

<br/>
<br/>
<br/>
Your mission commander,

EnzoGzz.
