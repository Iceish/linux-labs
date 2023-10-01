[< Back to the presentation.](/README.md)

# Linux Lab 2 - English 🇬🇧

<img align="right" alt="Spaceship" src="/assets/spaceship_landed.png" width="280px"/>

<br/>
<br/>
<br/>
<br/>
<div align="center">
You are the engineer in charge of the new spacecraft on a mission to conquer an exo-planet.
</div>
<br clear="right"/>
<br/>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;It is 05:26, and you have just landed on the exo-planet LNX-4EVER. You are in awe of the landscape before you. An expanse of rocky and arid land, bathed in the pale light of the dawning sun. Majestic mountains rise on the horizon, their peaks emerging from a light morning mist. Tufts of brown grass sway gently in the cool morning breeze, and strange little animals scurry furtively among the rocks. You know there is much work to be done to prepare for the upcoming mission, but for now, you simply take in the sight of this strange yet magnificent landscape before you.

## Utility

Follow the instructions to initialize the project on the [presentation page](../README.md).

Throughout this lab, you will use a utility accessible through the `lab` command to perform various checks.

Run `lab help` to display the help menu.

⚠️ If the `lab` command doesn't exist, source the `setup.sh` file available at the root of the `src` folder.

```bash
source ./setup.sh
```

_Note: Perform this action each time you open a new terminal._

# 06:12 - Verifications and Controls

<img align="left" alt="Spaceship control" src="/assets/control.png" width="280px"/>
<img align="left" alt="Spacer" src="/assets/spacer.png" width="15px" height="280px"/>

<br/>
<br/>
<br/>
<br/>
<div align="center">
It's time to gather your thoughts and get to work! While the crew gears up for exploration, you check that the landing went smoothly.
You will need to create several reports to send to the control center.
</div>

<br clear="left"/>
<br/>

The control center requests a summary of the important events that occurred during the landing.
The prerequisites are as follows:
- Only the state fields and the message should be filled in (date should not be included).
- The fields should be sorted by state in ascending order.

> Create this events report.

_Note: Chain the commands with bash pipes and redirections._

It is also important to keep track of the events to produce improvement statistics.
The file should be in the following format:

```
infos 0
warnings 0
errors 0
```

> Create a file as a counter of events.

_Note: There is a command on Linux for counting; make sure to do your research._

Before sending these reports to the control center on Earth, verify the data's compliance with the `lab` utility.

# 06:53 - Communication Equipment Installation & Connection to the Control Center

<img align="right" alt="Spaceship rack" src="/assets/connection.png" width="280px"/>
<img align="right" alt="Spacer" src="/assets/spacer.png" width="15px" height="280px"/>

<br/>
<br/>
<br/>
<br/>
<div align="center">
After your crew has deployed the antenna, your mission is to configure the machine.
</div>

<br clear="right"/>
<br/>

⚠️ Root privileges are required for this section.

## Hostname

Start by modifying the machine's name in connection with the mission.

To do this, edit two files:
- /etc/hostname
    - It defines the machine's name.
- /etc/hosts
    - It contains an entry to resolve locally with the hardcoded hostname.

> Rename your machine to "lnx-explorer".

Note: This modification requires a machine restart.

## Network Configuration

To establish contact with the ground station, you are setting up a static IP configuration.

The default DHCP configuration is located in _/etc/network/interfaces_.

> Inform yourself and configure your machine with a static IPv4 address.

Once the connection is established, you can send the previously generated reports. Check the connection with the `lab` utility.

_Note: Use the -h or help argument to display the utility's syntax._

# 07:49 - There are Creatures Here

<img align="left" alt="Zombies attack" src="/assets/attack.png" width="280px"/>
<img align="left" alt="Spacer" src="/assets/spacer.png" width="15px" height="280px"/>

<div align="center">
Just as you finished sending the reports, you see Victor, a member of the crew, suddenly running towards you, making large gestures and a face that betrays terror.

You finally understand when, on the horizon, imposing silhouettes rise among the rays of the sun. You are under attack by an unknown life form!

Fortunately, your preparation in advance will allow you to handle this problem. After a few seconds of doubt, you identify them. They are what we call "zombie processes"!

An invasive life form that is harmful to your systems. Although they are processes, they are no longer useful and reserve resources they no longer exploit.
</div>

<br clear="left"/>
<br/>

The explorers have provided additional information about this life form:

- It appears that the survival of warriors (child processes) depends on that of their commander (the parent).
- The commanders (parent processes) are very resilient but not invincible.

> Take care of these zombie processes; they must be eliminated.

_Note: Start by identifying them. (ps)_
    
```" He who knows his enemy and himself will not be defeated in a hundred battles. "```

After the battle is fought, check that no enemies remain.

> Launch the drone to check the horizons using the `lab` utility.

# 9:10 - Oxygen System Installation

<img align="right" alt="Oxygen generator" src="/assets/oxygen.png" width="280px"/>
<img align="right" alt="Spacer" src="/assets/spacer.png" width="15px" height="280px"/>

<br/>
<br/>
<br/>
<br/>
<div align="center">
Your oxygen reserves will last for 72 hours, so it is time to set up the oxygen synthesis system.
</div>

<br clear="right"/>
<br/>

⚠️ Root privileges are required for this section.

The system was separated into two parts (engine and filter) for the journey, due to opposing chemical mixtures.
The filter is on board the spacecraft; however, the engine was stored in a container in the form of a disk image.

## Opening the Container

> What is the file type?

_Note: Use `man file`._

> Load the image virtually using the command `sudo losetup --partscan --find --show container.img`.

Now, you can verify with `lsblk` that the disk is detected. It's time to create a mount point to access it.

> Mount the disk on _/mnt/container_.

_Note: You will need to create a folder._

> Move the engine into the spacecraft to prepare for the next step.

## System Assembly

The location of the

 system has already been prepared in an empty image named `oxygen_platform.img`.

> Verify the file type.

It's time to partition this disk.
The goal is to create two partitions, formatted in "ext4," of approximately 15Mb and 10Mb, respectively. Then, we can place our two components in each of the partitions.

> Use the `fdisk` utility on the image and create two primary partitions as explained above.

_Note: The size of these partitions can be approximate._

> Load the image virtually using the command `sudo losetup --partscan --find --show oxygen_platform.img`.

_Note: You can verify with the `lsblk` command._

> Format the two partitions as "ext4."

> Mount the two partitions in two different folders.

> Move the engine into the 15Mb partition, and the filter into the 10Mb partition.

## System Startup

> Use the `lab` utility to start the machine!

Once the resource is no longer needed, it is good practice to unmount the mount point.

> Use `umount` on the unused resources.

> Execute the command `sudo losetup -D` to remove the loopbacks of the disk images.

# 11:41 - Resource Harvesting

<img align="left" alt="Exo-planet landscape" src="/assets/ressources.png" width="280px"/>
<img align="left" alt="Spacer" src="/assets/spacer.png" width="15px" height="280px"/>

<br/>
<br/>
<br/>
<br/>
<div align="center">
One of the reasons for your excursion is to harvest unknown resources available on this planet.

In the "planet" folder, you will find many resources that are quite common, but among them are hidden exotic materials never before harvested.
You must find and retrieve them.
</div>

<br clear="left"/>
<br/>

> Leave the spacecraft and go to the `planet` folder.

Use the `find` command for the different resources listed below.
Each resource is found with a different search method.

List of exotic materials to collect:

- **Laskite**: the file name is "Laskite".
- **Irinite**: the file size is over 40 MB.
- **Nexarium**: there is a symbolic link to the file.
- **Upprixite**: the file name contains the string "shFY".
- **Xamanite**: the file name contains the characters u, j, d in that order. It is noted that this mineral is only found below a depth of 5.

> Collect the samples and verify them using the `lab` utility.

# 14:26 - Services

<img align="right" alt="Futuristic computer" src="/assets/services.png" width="280px"/>
<img align="right" alt="Spacer" src="/assets/spacer.png" width="15px" height="280px"/>

<br/>
<br/>
<br/>
<br/>
<div align="center">
When using Linux, many services run in the background to simplify your life.
To access your machine remotely, you will open SSH access.
</div>

<br clear="right"/>
<br/>

⚠️ Root privileges are required for this section.

Services are called "daemons" in Linux. As a result, most service names end with a 'd'.

> Start and enable the "sshd" service.

It is also possible to inquire about the status and latest logs of a service.

> Check the status of the service.

When you modify a service's configuration, you generally need to restart it.

_Note: This is what you did, for example, when you set your IP to static._

> Modify the service's port and restart it to see the change.

Now it's time to test!

> Connect via SSH using the configured port.

_Note: You can revert to the default port (22) if you wish._

# 16:03 - Interferences

<img align="left" alt="Antenna" src="/assets/interferences.png" width="280px"/>
<img align="left" alt="Spacer" src="/assets/spacer.png" width="15px" height="280px"/>

<br/>
<br/>
<br/>
<br/>
<div align="center">
The space station informs you that you are now connected to the internet.
</div>

<br clear="left"/>
<br/>

Verify the proper functioning of the network.

> Start by pinging "google.com".

> Trace the path through which the requests pass.

> What is the DNS server responsible for your resolutions?

_Note: Research the `dig` command._

For security resons, you have to use CloudFlare DNS.

> Edit your DNS "nameserver" with value `1.1.1.1`.

_Note : Take a look at `/etc/resolv.conf` file._

> Verify it worked with `dig` command.

# 18:57 - Automation

<img align="right" alt="Robot" src="/assets/automation.png" width="280px"/>
<img align="right" alt="Spacer" src="/assets/spacer.png" width="15px" height="280px"/>

<br/>
<br/>
<br/>
<br/>
<div align="center">
It's time to optimize your time. Your mission is to regularly monitor sensor data.
</div>

<br clear="right"/>
<br/>

The script `get_sensors_data.sh` allows you to display this processed data.

The goal is to display this data when opening a terminal.

> Automate its execution through the `.bashrc` file.

_Note: The `.bashrc` file executes each time you open a terminal._

---

Exhausted by an intense day on the exoplanet LNX-4EVER, you escape into the starry night. The cool mist and the beauty of the strange landscape surround you. Majestic mountains emerge from a light mist, while the stars shine above you.

In this peaceful silence, you reflect on the incredible adventure you have experienced: the challenges overcome, the mysteries solved, and the exotic resources discovered. An excitement lingers despite the fatigue, as tomorrow, you will continue your exploration, pushing the boundaries of your knowledge.

Thanks to this unique opportunity, you feel both insignificant in the vastness of the universe and privileged to be here, living an extraordinary adventure. You drift off to sleep, enveloped by the beauty of the landscape, ready to face new discoveries and challenges to come.

---

<img align="left" alt="End" src="/assets/end.png" width="280px"/> 
<img align="left" alt="Spacer" src="/assets/spacer.png" width="100px" height="280px"/>  

<br/>
<br/>
<br/>
Your mission commander,

Iceish.
