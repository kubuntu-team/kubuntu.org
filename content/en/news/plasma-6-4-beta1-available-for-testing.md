---
date: 2025-05-18T11:00:59-04:00
description: "Plasma 6.3.5 update"
tags: ["Kubuntu","Community","Beta", "Testing"]
title: "Plasma 6.4 Beta1 available for testing"
---

Are you using Kubuntu 25.04 Plucky Puffin, our current stable release? Or are you already running our development builds of the upcoming 25.10 (Questing Quokka)?

We currently have Plasma 6.3.90 (Plasma 6.4 Beta1) available in our Beta PPA for Kubuntu 25.04 and for the 25.10 development series.

However this is a Beta release, and we should re-iterate the disclaimer:

**DISCLAIMER:** This release contains untested and unstable software. It is highly recommended you **do not use this version in a production environment** and do not use it as your daily work environment. You risk crashes and loss of data.

6.4 Beta1 packages and required dependencies are available in our Beta PPA. The PPA should work whether you are currently using our backports PPA or not. If you are prepared to test via the PPA, then add the beta PPA and then upgrade:

```bash
sudo add-apt-repository ppa:kubuntu-ppa/beta && sudo apt full-upgrade -y
```

Then reboot.

_**In case of issues, testers should be prepared to use ppa-purge to remove the PPA and revert/downgrade packages.**_

Kubuntu is part of the KDE community, so this testing will benefit both Kubuntu as well as upstream KDE Plasma software, which is used by many other distributions too.

If you believe you might have found a packaging bug, you can use launchpad.net to post testing feedback to the Kubuntu team as a bug, or give feedback on Matrix [1], or mailing lists [2].
If you believe you have found a bug in the underlying software, then bugs.kde.org is the best place to file your bug report.
Please review the planned feature list, release announcement and changelog.

[Test Case]
 - General tests:
   - Does plasma desktop start as normal with no apparent regressions over 6.3? 
   - General workflow – testers should carry out their normal tasks, using the plasma features they normally do, and test common subsystems such as audio, settings changes, compositing, desktop affects, suspend etc.
 - Specific tests:
   - Identify items with front/user facing changes capable of specific testing.
   - Test the ‘fixed’ functionality or ‘new’ feature.

Testing may involve some technical set up to do, so while you do not need to be a highly advanced K/Ubuntu user, some proficiently in apt-based package management is advisable.

Testing is very important to the quality of the software Ubuntu and Kubuntu developers package and release.

We need your help to get this important beta release in shape for Kubuntu and the KDE community as a whole.

Thanks!

Please stop by the Kubuntu-devel Matrix channel on if you need clarification on any of the steps to follow.

[1] – https://matrix.to/#/#kubuntu-devel:ubuntu.com

[2] – https://lists.ubuntu.com/mailman/listinfo/kubuntu-devel