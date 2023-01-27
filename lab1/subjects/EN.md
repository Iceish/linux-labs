# Linux Lab 1 - English

You are the engineer in charge of the new spaceship on a mission to conquer an exoplanet. However, you have just noticed 1 hour before takeoff that a member of the crew has compromised the spaceship's configuration file, making it non-operational. It is impossible to delay the scheduled takeoff time. So you have 1 hour to find the culprit and fix the spaceship. Good luck soldier!

## Accessing the system

With your Linux machine, go to the *src* folder of the cloned project and then enter the *spaceship* folder.

List all the spaceship's folders to verify that the following folders are present: *dormitories*, *reactors*.

## Dormitories

Enter the *dormitories* folder.

The dormitory configurations are used to assign beds to the crew members, and contain some additional information that you will discover.

How many dormitories are there?

In each dormitory, you will find a file for each crew member.

List each dormitory to get the total number of registered members.

During the analysis, you notice that the attacker moved Karen's configuration file to the wrong dormitory. Put it back in dormitory number 1.

You also notice that your own file has been deleted!
Copy one from another member, rename it *padawan.conf*, and then modify the file's information to your liking.
You are assigned to the second dormitory.

```
id=01-f
name=padawan
age=29
bed=10
role=global supervisor
```

Everything looks in order, run the verification script at the root of the *dormitories* folder.

You can move on to the next section if all indicators are OK.

## Reactors

While analyzing the reactor configurations, you realize that one of them is incomplete. Which one?

Complete the configuration of the incomplete reactor with the other information in the folder. Look up information using your knowledge;

The *fuel-type* field specifies what type of fuel is used. You will find the information in a file (maybe hidden).

The quantity field corresponds to the size of the *fuel* file in KB.

The *engine-with-starter* field is difficult to find. Indeed, many files and subfolders are located in *engines*. But remember that the spaceship is taking off soon! To save time, you decide to install a package to list them all at once. Install the *tree* command with apt, then use it on the *engines* folder.
When you've targeted the starters, go back to the source to get the engine number (either 1, 2 or 3).

When you think you have the right configuration, run the verification script at the root of the *reactors* folder.

You can move on to the next section if all indicators are OK."
