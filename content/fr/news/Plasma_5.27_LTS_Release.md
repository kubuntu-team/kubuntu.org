---
date: 2023-10-13T11:15:58-04:00
description: "28.04 available via PPA"
tags: ["KDE","Plasma", "Kubuntu"]
title: "Plasma 5.27 LTS for Jammy"
---

We have had many requests to make Plasma 5.27 available in our backports PPA for Jammy Jellyfish 22.04. However, for technical reasons this would have broken upgrades to Kinetic 22.10 while that upgrade path existed. Now that Kinetic is end of life, it is possible to allow opt in backports of plasma 5.27 for 22.04.

As with the previous backport of plasma 5.25, version 5.27 is provided in the backports-extra PPA

This PPA is intended to be used in combination with our standard backports PPA, but should also work standalone.

As usual with our PPAs, there is the caveat that the PPA may receive additional updates and new releases of KDE Plasma, Gear (Apps) and Frameworks, plus other apps and required libraries. Users should always review proposed updates to decide whether they wish to receive them.

While we feel these backports will be beneficial to enthusiastic adopters, users wanting to use a more tested Plasma release on the 22.04 base may find it advisable to stay with Plasma 5.24 as included in the original 22.04 (Jammy) release.

To add the PPA and upgrade, do:

```shell
sudo add-apt-repository ppa:kubuntu-ppa/backports-extra && sudo apt full-upgrade -y
```
We hope keen adopters enjoy using Plasma 5.27