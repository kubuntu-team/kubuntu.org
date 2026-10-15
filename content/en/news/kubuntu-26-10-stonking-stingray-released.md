---
title: "Kubuntu 26.10 Stonking Stingray Released — Kubuntu Podcast #25"
date: 2026-10-15
draft: false
description: "Kubuntu 26.10 Stonking Stingray is out, with Plasma 6.7, Qt 6.11 and KDE Frameworks 6.29. Plus Kubuntu Podcast #25: a Virtual Desktops tip and Krita as our Discover Hot Pick."
tags: ["release", "plasma", "kde", "podcast"]
categories: ["release-notes"]
---

The Kubuntu team is happy to announce that **Kubuntu 26.10 — Stonking Stingray** was released on 15 October 2026. It is an interim release, supported with security and maintenance updates for 9 months, until July 2027.

<!-- TODO(Rick): replace YOUTUBE_URL_PLACEHOLDER with the ep25 link once published on the Kubuntu channel -->
**Watch Kubuntu Podcast #25 — "Kubuntu 26.10: what's actually on the ISO":** [YOUTUBE_URL_PLACEHOLDER](YOUTUBE_URL_PLACEHOLDER)

Thanks to everyone who commented on the beta episode, and a special nod to Mister Moto, who was "stonking my stingray to this rn". The replies argued Stop versus Continue. We're with Continue.

---

## Get It

{{< figure src="/images/news/kubuntu-26-10-release-cdimage.png" title="Kubuntu 26.10 on cdimage" >}}

### Fresh Install

Download the ISO from the [Kubuntu 26.10 release page](https://cdimage.ubuntu.com/kubuntu/releases/26.10/release/) or our [download page](/download). Direct download, torrent and zsync options are available. Verify your download against [SHA256SUMS](https://cdimage.ubuntu.com/kubuntu/releases/26.10/release/SHA256SUMS):

```
8160b1d6266dfe1998d183b19713680263c09669f101e0e41cbcf11f50b6f785  kubuntu-26.10-desktop-amd64.iso
```

### Upgrade from Kubuntu 26.04

Run `sudo software-properties-qt` and under Updates set "Release Upgrade" to "Normal releases" (or set `Prompt=normal` in `/etc/update-manager/release-upgrades`), then use the release upgrader. Back up anything you care about first.

---

## What's on the ISO

For changes to the Ubuntu base, see the [Ubuntu 26.10 release notes](https://documentation.ubuntu.com/release-notes/26.10/).

- **[Plasma 6.7](https://kde.org/announcements/plasma/6/6.7.0/)**, with the **Wayland session as the default**.
- The **Plasma X11 session is not installed by default** and is not supported. 26.10 is the last Kubuntu release where the `plasma-session-x11` package is an option.
- **Qt 6.11.2** and **KDE Frameworks 6.29**
- **KDE Gear 26.08**
- **Firefox 157** (Snap) and **LibreOffice 26.8**
- **Linux kernel 7.3**

Found a bug? File one bug per issue, with exact steps, a Spectacle screenshot and the version string from About this System.

---

## Plasma Tip: Virtual Desktops

On Plasma 6.7, press **Meta+Ctrl+Left/Right** to hop between desktops. Or open Overview with **Meta+W**, then scroll or use **Page Up/Page Down** to change desktop without leaving Overview. If you run more than one monitor, per-screen virtual desktops arrived in 6.7, so each display can keep its own set.

---

## Discover Hot Pick: Krita

{{< figure src="/images/news/kubuntu-26-10-release-krita.png" title="Krita on Kubuntu" >}}

[Krita](https://apps.kde.org/krita/) is KDE's free painting app: brushes that feel like the real thing, layers, and a canvas you can spin round like paper on a desk. Search for Krita in Discover, install it, and make a mess.

---

Thank you to everyone who tested the beta and helped make Kubuntu 26.10. 🐾
