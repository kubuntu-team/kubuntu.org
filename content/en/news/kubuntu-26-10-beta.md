---
title: "Kubuntu 26.10 Beta — Stonking Stingray"
date: 2026-10-01
draft: false
description: "The Kubuntu Beta for 26.10 is here. Try Plasma 6.7, Qt 6.11, KDE Frameworks 6.29, and more — and help us shape the final release."
tags: ["release", "beta", "plasma", "kde"]
categories: ["release-notes"]
cover:
  alt: "Kubuntu 26.10 Resolute Raccoon Beta"
---

The Kubuntu team is proud to announce the **Beta release of Kubuntu 26.10 — Stonking Stingray**, stepping toward our October 2026 release. This is your chance to preview the next edition, put it through its paces, and help us deliver a polished final release.

> **This is a pre-release.** It is intended for testing, not production use. Systems may encounter instability. If you need reliability, stick with Kubuntu 26.04 for now.

---

## Who Should Try the Beta?

**Great for:**
- Enthusiasts who want a first look at the next Kubuntu release
- Kubuntu, KDE, and Qt developers
- Bug hunters willing to report issues and help triage

**Not recommended for:**
- Anyone who needs a stable, daily-driver system
- Production environments with critical data or workflows
- Users unfamiliar with pre-release quirks

---

## How to Get It

### Upgrade from Kubuntu 26.034

From a terminal, run:

```
sudo software-properties-qt
```
and under updates set 'Release Upgrade' to 'Normal releases'.

or;

edit ```/etc/update-manager/release-upgrades```

to set 'Prompt=normal'

then;

```
sudo do-release-upgrade -d
```


### Fresh Install

Download a bootable disk image from the [official Beta image server](http://cdimage.ubuntu.com/kubuntu/releases/26.10/beta/). Direct download, torrent, and zsync options are available.

---

## What's New in 26.10 Beta

For changes to the underlying Ubuntu base, see the [Stonking Stingray Release Notes](https://documentation.ubuntu.com/release-notes/26.10/). Below are highlights specific to Kubuntu.

### Plasma 6.7

The Kubuntu team has worked to ship the latest Qt6-based KDE desktop. **Plasma 6.7** is the seventh feature release in the Plasma 6 series, building on the [Plasma 6 megarelease](https://kde.org/announcements/megarelease/6/) that brought a modern, Wayland-first desktop to Ubuntu users. Read the full [Plasma 6.7 announcement](https://kde.org/announcements/plasma/6/6.7.0/) on the KDE blog.

### Wayland by Default

As in 26.04, the **Plasma Wayland session** is the default and fully supported session in Kubuntu 26.10. For most users, Wayland delivers improved security, smoother rendering, and better HiDPI support compared to X11.

### X11 Session (Unsupported)

The Plasma X11 session is **not installed by default** and is not supported by the Kubuntu team. If you need it for legacy hardware or specific workflows, the `plasma-session-x11` package is available in the Ubuntu archive — but you'll be on your own. Also please note that Kubuntu 26.10 will be the last Kubuntu release where this will be possible.

### Qt 6 and KDE Frameworks

| Component | Version |
|---|---|
| Qt6 | 6.11.2 |
| KDE Frameworks 6 | 6.29.0 |

### KDE Applications 26.08.1

All KDE Gear applications packaged through Ubuntu and Debian have been updated to **26.08.1**, the latest stable release at the time of this Beta.

### Browser & Office

- **[Firefox 157](https://www.firefox.com/en-GB/firefox/157.0/releasenotes/)** — delivered as a Snap from the Snap Store, as is standard on Ubuntu-based systems.
- **[LibreOffice 26.8.0](https://wiki.documentfoundation.org/ReleaseNotes/26.8)** — included in the full installation.

### Linux Kernel 7.3

Kubuntu 26.04 ships with the **Linux 7.3 kernel**, bringing the latest hardware support, security improvements, and performance enhancements.

---

## Known Issues

### Installer & Live Session

 - The Plasma Welcome Centre window pops up in the installer when you click "Install" to commit changes to disk. This window can simply be closed, and does not affect the installation.

### All Reported Bugs

Browse the full list of [open Kubuntu Stonking Stingray bugs on Launchpad](https://bugs.launchpad.net/ubuntu/+bugs?field.searchtext=&orderby=-importance&field.status%3Alist=NEW&field.status%3Alist=CONFIRMED&field.status%3Alist=TRIAGED&field.status%3Alist=INPROGRESS&field.status%3Alist=FIXCOMMITTED&field.status%3Alist=INCOMPLETE_WITH_RESPONSE&field.status%3Alist=INCOMPLETE_WITHOUT_RESPONSE&assignee_option=any&field.assignee=&field.bug_reporter=&field.bug_commenter=&field.subscriber=&field.structural_subscriber=&field.component-empty-marker=1&field.tag=kubuntu+Stonking&field.tags_combinator=ALL&field.status_upstream-empty-marker=1&field.has_cve.used=&field.omit_dupes.used=&field.omit_dupes=on&field.affects_me.used=&field.has_no_package.used=&field.has_patch.used=&field.has_branches.used=&field.has_branches=on&field.has_no_branches.used=&field.has_no_branches=on&field.has_blueprints.used=&field.has_blueprints=on&field.has_no_blueprints.used=&field.has_no_blueprints=on&search=Search).

---

## Help Us Test

Every bug report matters. Before reporting, make sure your system is fully up to date — fixes land daily during the Beta period. Updated daily images are available at the [Kubuntu daily live image server](https://cdimage.ubuntu.com/kubuntu/stonking/daily-live/current/).

**Where to report:**
- Installation results → [Ubuntu Release Tracker](https://tests.ubuntu.com)
- General bugs → [ReportingBugs](https://ubuntu.com/project/docs/contributors/qa-and-testing/report-a-bug/)
- Kubuntu-specific triage → [KubuntuBugTriage](https://invent.kde.org/teams/distribution-kubuntu/bug-triage/-/wikis/A-guide-to-creating-useful-bug-reports-for-Kubuntu)

Thank you for helping make Kubuntu 26.10 the best release yet. 🐾
