# Linux Lab 1 - English

You are the engineer in charge of the new spaceship on a mission to conquer an exoplanet.

However, you just noticed 1 hour before takeoff that a crew member has compromised the ship's configuration file, making it non-operational. It is impossible to reschedule the originally scheduled takeoff time. So you have exactly 1 hour to perform miracles, find the culprit, and repair the ship. Good luck soldier!

## System Access

With your Linux machine, go to the *src* folder of the cloned project, then enter the *spaceship* folder.

List all the folders in the spaceship to verify that the following folders are present: *dormitories*, *reactors*.

## Dormitories

Enter the *dormitories* folder.

The dormitory configurations are used to assign beds to crew members and contain some additional information that you will discover.

How many dormitories are there?

In each dormitory, you will find a file for each crew member.
As well as a global configuration file indicating the color of the bracelet associated with the dormitory.

List each dormitory to get the total number of registered members.

During the analysis, you notice that the attacker moved Karen's configuration file to the wrong dormitory. Put it back in dormitory #1.

You also notice that your own file has been deleted!
Copy the file from another member, rename it *padawan.conf*, then modify the file information to reflect your image.
You are assigned to the second dormitory.

```
id=#K1B63
name=padawan
age=29
bed=10
role=global supervisor
```
Everything seems to be in order, run the verification script at the root of the *dormitories* folder.

You can move on if all indicators are OK.

## Reactors

Upon analyzing the reactor configurations, you realize that one of the two is incomplete. Which one?

Complete the incomplete reactor configuration with the other information in the folder. Check with your knowledge;

The *fuel-type* field specifies what type of fuel is used. You will find the information in a file (maybe hidden).

The quantity field corresponds to the size of the *fuel* file in KB.

The *engine-with-starter* field is difficult to find. In fact, many files and subdirectories are in *engines*. However, remember that the ship is taking off soon! To save time, you decide to install a package to list everything at once. Install the tree command with apt, then use it on the *engines* folder.
When you have targeted the starters, go back to the source to get the engine number (1,2, or 3)

When you think you have the right configuration, run the verification script at the root of the *reactors* folder.

You can move on if all indicators are OK.

## Storage

Your colleague Karen, the storage room operator, informs you that the attacker has caused chaos in the different storage pallets, preventing the control of food rations.

She adds that she found the button of a bracelet on the ground next to the vegetable palette, and with a little luck, the attacker dropped his colorful bracelet in it.

Unzip the two available pallets, and analyze their contents.

Your *storage* folder should look like the following diagram:

```
.
├── ammunitions
├── check-script.sh
├── cucumbers
├── knives
├── potatoes
└── tomatoes
```

Put order back into the pallets, but remember that time is of the essence.
Instead of moving each file one by one, use the '\*' operator to do it all in one shot.

Once the sorting is done, close the pallets by compressing the folders back to their original state as shown in the following diagram.

```
.
├── check-script.sh
├── stuff.tar.gz
└── vegetables.zip
```

Run the verification script to check the storage.

You can proceed to the next step if all indicators are OK.

## Control Center

The end is near! You hurry to the control room to try to trace the attacker before takeoff.

Run the *setup.sh* script as root to initialize the room.

This room is secure, you will be faced with several permission problems, it's up to you to fix them.

You have two missions:

### Restart the control center.

The attacker has crypto-locked the control center, the only way to decipher it is to launch the script *unlock.sh* by usurping his username (*h4cker-lab*).
Find a way to launch this command, remember that you have full rights on the machine.

### Identify the attacker.

With all the clues collected since the beginning of this adventure, you should be able to identify them using the *control.log* file. The attacker failed to destroy it entirely, so there are still some interesting information to analyze.

A tip, use the *grep* command to target a character string. The attacker had to go through the control center without authorization in order to launch his encryption.
Searching for all lines with the control center seems relevant.
PS: man grep.

---

If you have completed these two missions, bravo to you soldier, you are the man for the job!
Remember to delete the *h4cker-lab*.
The new spaceship is ready to take off without enemy onboard.
