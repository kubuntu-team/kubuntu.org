---
title: "Kubuntu 26.04 Beta — Resolute Raccoon"
date: 2026-03-27
draft: false
description: "The Kubuntu Beta for 26.04 LTS is here. Try Plasma 6.6, Qt 6.10, KDE Frameworks 6.24, and more — and help us shape the final release."
tags: ["release", "beta", "plasma", "kde", "lts"]
categories: ["release-notes"]
cover:
  alt: "Kubuntu 26.04 Resolute Raccoon Beta"
---

The Kubuntu team is proud to announce the **Beta release of Kubuntu 26.04 LTS — Resolute Raccoon**, stepping toward our April 2026 release. This is your chance to preview the next Long-Term Support edition, put it through its paces, and help us deliver a polished final release.

> **This is a pre-release.** It is intended for testing, not production use. Systems may encounter instability. If you need reliability, stick with Kubuntu 25.10 for now.

---

## Who Should Try the Beta?

**Great for:**
- Enthusiasts who want a first look at the next LTS
- Kubuntu, KDE, and Qt developers
- Bug hunters willing to report issues and help triage

**Not recommended for:**
- Anyone who needs a stable, daily-driver system
- Production environments with critical data or workflows
- Users unfamiliar with pre-release quirks

---

## How to Get It

### Upgrade from Kubuntu 25.10

From a terminal, run:

```bash
sudo do-release-upgrade -d
```

### Fresh Install

Download a bootable disk image from the [official Beta image server](http://cdimage.ubuntu.com/kubuntu/releases/26.04/beta/). Direct download, torrent, and zsync options are available.

---

## What's New in 26.04 Beta

For changes to the underlying Ubuntu base, see the [Resolute Raccoon Release Notes](https://documentation.ubuntu.com/release-notes/26.04/). Below are highlights specific to Kubuntu.

### Plasma 6.6

The Kubuntu team has worked to ship the latest Qt6-based KDE desktop. **Plasma 6.6** is the sixth feature release in the Plasma 6 series, building on the [Plasma 6 megarelease](https://kde.org/announcements/megarelease/6/) that brought a modern, Wayland-first desktop to Ubuntu users. Read the full [Plasma 6.6 announcement](https://kde.org/announcements/plasma/6/6.6.0/) on the KDE blog.

### Wayland by Default

The **Plasma Wayland session** is the default and fully supported session in Kubuntu 26.04. For most users, Wayland delivers improved security, smoother rendering, and better HiDPI support compared to X11.

### X11 Session (Unsupported)

The Plasma X11 session is **not installed by default** and is not supported by the Kubuntu team. If you need it for legacy hardware or specific workflows, the `plasma-session-x11` package is available in the Ubuntu archive — but you'll be on your own.

### Qt 6 and KDE Frameworks

| Component | Version |
|---|---|
| Qt6 | 6.10.2 |
| KDE Frameworks 6 | 6.24.0 |
| Qt5 (legacy) | 5.15.18 |
| KDE Frameworks 5 (legacy) | 5.116.0 |

Qt5/KF5 packages remain in the archive for applications that haven't yet ported to Qt6.

### KDE Applications 25.12.3

All KDE Gear applications packaged through Ubuntu and Debian have been updated to **25.12.3**, the latest stable release.

### Browser & Office

- **[Firefox 148](https://www.mozilla.org/en-US/firefox/148.0/releasenotes/)** — delivered as a Snap from the Snap Store, as is standard on Ubuntu-based systems.
- **[LibreOffice 26.2.2](https://wiki.documentfoundation.org/ReleaseNotes/26.2)** — included in the full installation.

### Linux Kernel 7.0

Kubuntu 26.04 ships with the **Linux 7.0 kernel**, bringing the latest hardware support, security improvements, and performance enhancements.

---

## Known Issues

### Installer & Live Session

- **[LP #2146196](https://bugs.launchpad.net/bugs/2146196)** — KHelpCenter crashes on launch in the live session due to AppArmor user namespace restrictions. This does not affect installed systems.

### All Reported Bugs

Browse the full list of [open Kubuntu Resolute Raccoon bugs on Launchpad](https://bugs.launchpad.net/ubuntu/+bugs?field.searchtext=&orderby=-importance&field.status%3Alist=NEW&field.status%3Alist=CONFIRMED&field.status%3Alist=TRIAGED&field.status%3Alist=INPROGRESS&field.status%3Alist=FIXCOMMITTED&field.status%3Alist=INCOMPLETE_WITH_RESPONSE&field.status%3Alist=INCOMPLETE_WITHOUT_RESPONSE&assignee_option=any&field.assignee=&field.bug_reporter=&field.bug_commenter=&field.subscriber=&field.structural_subscriber=&field.component-empty-marker=1&field.tag=kubuntu+Resolute&field.tags_combinator=ALL&field.status_upstream-empty-marker=1&field.has_cve.used=&field.omit_dupes.used=&field.omit_dupes=on&field.affects_me.used=&field.has_no_package.used=&field.has_patch.used=&field.has_branches.used=&field.has_branches=on&field.has_no_branches.used=&field.has_no_branches=on&field.has_blueprints.used=&field.has_blueprints=on&field.has_no_blueprints.used=&field.has_no_blueprints=on&search=Search).

---

## Help Us Test

Every bug report matters. Before reporting, make sure your system is fully up to date — fixes land daily during the Beta period. Updated daily images are available at the [Kubuntu daily live image server](http://cdimage.ubuntu.com/kubuntu/daily-live/current/).

**Where to report:**
- Installation results → [Ubuntu Release Tracker](https://tests.ubuntu.com)
- General bugs → [ReportingBugs](https://wiki.ubuntu.com/ReportingBugs)
- Kubuntu-specific triage → [KubuntuBugTriage](https://invent.kde.org/teams/distribution-kubuntu/bug-triage/-/wikis/A-guide-to-creating-useful-bug-reports-for-Kubuntu)

Thank you for helping make Kubuntu 26.04 LTS the best release yet. 🐾
