---
title: "Kubuntu 26.10 Stonking Stingray Released"
date: 2026-10-15
draft: false
description: "Kubuntu 26.10 is here. Try Plasma 6.7, Qt 6.11, KDE Frameworks 6.29, KDE Gear 26.08 and Linux 7.3."
tags: ["release", "plasma", "kde"]
categories: ["release-notes"]
cover:
  alt: "Kubuntu 26.10 Stonking Stingray"
---

# Kubuntu 26.10 Stonking Stingray Released

October 15, 2026

### The Latest KDE Plasma on Ubuntu's Newest Interim Release

The Kubuntu team is happy to announce the release of Kubuntu 26.10, codenamed "Stonking Stingray"!
Building on the Ubuntu 26.10 base released today by Canonical, Kubuntu 26.10 ships **Plasma 6.7**
(6.7.5) alongside **Qt 6.11.2**, **KDE Frameworks 6.29.0** and **KDE Gear 26.08.1**, on
**Linux kernel 7.3**.

Kubuntu 26.10 is an interim release and will receive security updates and critical fixes for 9 months,
until **July 2027**. If you need long-term support, Kubuntu 26.04 LTS remains supported until April 2029.

Kubuntu remains completely free to download, use, and share. [Download](https://www.kubuntu.org/download) it now
and join our community on [Discourse](https://discourse.ubuntu.com/c/flavors/kubuntu/187).

---

#### Highlights from Plasma 6.7

From the [Plasma 6.7 announcement](https://kde.org/announcements/plasma/6/6.7.0/):

1. **Per-screen virtual desktops**
   After 21 years, per-screen virtual desktops have arrived: each display can keep its own set of desktops.

2. **Faster virtual desktop switching in the Overview**
   Press **Meta+W** to open Overview, then scroll or press **Page Up / Page Down** to switch virtual desktops.

3. **More intuitive software management in Discover**
   Discover gains a more obvious "Install" button, redesigned app cards with more information, a more intuitive
   sort order, and installed software grouped by type.

4. **Light/dark toggle, theming and Union**
   A quick toggle switches between light and dark Global Themes. Oxygen and Air return up to par with Breeze,
   Breeze gains rounded highlights and click effects, and the new Union theming system debuts as a tech preview.

Also new: a microphone volume test, press-and-hold for special characters on the virtual keyboard, "Background
Apps" in the System Tray, printer job badges and easier Windows shared printing, drag-and-drop launcher
favourites, time-zone offsets in the Digital Clock, and "type-ahead" on the desktop.

---

#### Wayland by Default

The **Plasma Wayland session** is the default and fully supported session. The Plasma X11 session is not
installed by default and is not supported by the Kubuntu team. Kubuntu 26.10 is the last Kubuntu release where
the `plasma-session-x11` package will be available.

---

#### What's New Under the Hood

From the [Ubuntu 26.10 release notes](https://documentation.ubuntu.com/release-notes/26.10/):

- **Linux kernel 7.3**: The release images ship kernel 7.3.0-9.9, based on 7.3-rc6, because the final upstream
  7.3 release is due after GA.
- **KDE Applications 26.08.1**: Dolphin, Konsole, Okular, Kdenlive and the rest of KDE Gear.
- **Firefox** (Snap) and **LibreOffice 26.8.1**. <!-- TODO: confirm the Firefox snap version shipped at GA (beta notes said 157; the manifest only lists the transitional deb) -->
- **systemd 261.3**.
- **100% Rust coreutils**: the remaining GNU utilities (`cp`, `mv`, `rm`) have now moved to the Rust uutils implementation.
- **Updated developer toolchain**: GCC 15.2, Python 3.14.7, Rust 1.97, Go 1.27, LLVM 22, OpenJDK 25 (OpenJDK 27 available) and .NET 10.
- **TPM-backed full-disk encryption** can now be installed on machines without a hardware root of trust, provided a PIN
  or passphrase is set.

---

#### Upgrading

Upgrade from Kubuntu 26.04 LTS by setting "Release Upgrade" to "Normal releases" in `sudo software-properties-qt`
(or `Prompt=normal` in `/etc/update-manager/release-upgrades`) and running the release upgrader.

> **Note:** Systems using TPM-backed full-disk encryption cannot upgrade from 26.04 LTS to 26.10 at release.
> Ubuntu expects to enable these upgrades during the 26.10 lifecycle.

<!-- TODO: add Kubuntu-specific known issues for GA once confirmed (beta listed the Welcome Centre popping up in the installer). -->

---

A huge thank you to our volunteer contributors, testers, bug reporters, and the upstream KDE and Ubuntu teams
for making Stonking Stingray a reality.

Ready to dive in? [Download Kubuntu 26.10](https://www.kubuntu.org/download). Questions? Head to
[Discourse](https://discourse.ubuntu.com/c/flavors/kubuntu/187) or join us on Matrix at
[#kubuntu:matrix.org](https://matrix.to/#/#kubuntu-discuss:ubuntu.com).
