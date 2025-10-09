---
date: 2025-05-08T11:00:59-04:00
description: "Plasma 6.3.5 update"
featured_image: "images/banners/discover.png"
tags: ["Kubuntu","Community","Download", "Beta", "Testing", "Update"]
title: "Plasma 6.3.5 update for Kubuntu 25.04 available via PPA"
---

We are pleased to announce that the Plasma 6.3.5 bugfix update is now available for Kubuntu 25.04 Plucky Puffin in our 
backports PPA.

As usual with our PPAs, there is the caveat that the PPA may receive additional updates and new releases of KDE Plasma, 
Gear (Apps), and Frameworks, plus other apps and required libraries. Users should always review proposed updates to 
decide whether they wish to receive them.

**To upgrade:**

Add the following repository to your software sources list:

**ppa:kubuntu-ppa/backports**

or if it is already added, the updates should become available via your preferred update method.

The PPA can be added manually in the Konsole terminal with the command:

_sudo add-apt-repository ppa:kubuntu-ppa/backports_

and packages then updated with

_sudo apt full-upgrade_

We hope you enjoy using Plasma 6.3.5!

Issues with Plasma itself can be reported on the KDE bugtracker [1]. In the case of packaging or other issues, please 
provide feedback on our mailing list [2], and/or file a bug against our PPA packages [3].

1. KDE bugtracker: https://bugs.kde.org
2. Kubuntu-devel mailing list: https://lists.u
3. Kubuntu ppa bugs: https://bugs.launchpad.net/kubuntu-ppa