---
title: "KDE cancelled Plasma LTS. Kubuntu bought it back."
date: 2026-09-04
draft: false
description: "Kubuntu 26.04.1 is out — but the release that matters is the one somebody paid to support properly."
tags: ["plasma", "kde", "lts", "kubuntu", "26.04"]
cover:
  alt: "Bullet-Proof KDE and Kubuntu 26.04.1"
---

{{< figure src="/images/news/kubuntu-26-04-1-bullet-proof-kde-hero.png" title="The Bullet-Proof KDE announcement" >}}

Kubuntu 26.04.1 is out — but the release that matters is the one somebody paid to support properly.

[![Watch on YouTube](/images/news/kubuntu-26-04-1-bullet-proof-kde-youtube-thumbnail.png)](https://youtu.be/FxDAT1LRZ4U)

## The bit nobody funded

{{< figure src="/images/news/kubuntu-26-04-1-bullet-proof-kde-nate.png" title="Nate Graham on what a real LTS looks like" >}}

Last year KDE retired the Plasma LTS product, and the reasoning was honest. Almost nobody shipped it — Kubuntu, essentially, and not Debian or openSUSE Leap. It only ever covered Plasma itself, not the KDE Frameworks underneath or the Gear applications on top. And the backporting was done blind, because there were no CI resources to validate that a fix for an old branch didn't break something else.

So "LTS" meant a promise with nothing behind it. KDE's compromise was to add an extra bugfix release to the normal schedule, stretching each Plasma version's support from four months to six. Better than nothing, but not long-term support.

## Then somebody wrote a cheque

Kubuntu Focus has committed over $100,000 across three years to fix this properly, under the name Bullet-Proof KDE.

The money does three things. Techpaladin Software is paid to work bugs reported by real Kubuntu 26.04 users — not just cherry-picking fixes that happen to exist upstream, but finding and fixing the pain points. Those fixes land across the whole stack: Plasma 6.6, KDE Frameworks 6.24, and KDE Gear 25.12, the exact versions Kubuntu 26.04 ships. And KDE e.V. gets additional CI capacity, running Kubuntu 26.04, so the backports are tested rather than hoped for.

{{< figure src="/images/news/kubuntu-26-04-1-bullet-proof-kde-stack.png" title="The supported stack: Plasma 6.6, Frameworks 6.24, Gear 25.12" >}}

The CI was funded more generously than the initiative strictly needed, so KDE's general build times improved too.

If you are running 26.04 today, some of this has already reached you: desktop themes can hold embedded widgets, the media frame widget scales images cleanly, desktop files stop disappearing when you rename them inside an Activity, and remote desktop works without a fight.

{{< figure src="/images/news/kubuntu-26-04-1-bullet-proof-kde-desktop.png" title="Kubuntu 26.04 LTS" >}}

## What 26.04.1 actually is

{{< figure src="/images/news/kubuntu-26-04-1-bullet-proof-kde-iso.png" title="The 26.04.1 image" >}}

The 26.04.1 images arrived on 27 August, alongside every other 26.04.1 flavour. A point release rolls the accumulated security and bugfix updates into the installation media, so a fresh install doesn't spend its first ten minutes downloading a few hundred packages. If you are already running 26.04 and keeping up with updates, you are effectively already on 26.04.1.

One caveat worth knowing. The automatic 24.04 to 26.04 upgrade offer is being held back a couple of weeks while regressions in a recent rust-coreutils get backported. If you would rather go now, `do-release-upgrade -d` still works — read the release notes first.

{{< figure src="/images/news/kubuntu-26-04-1-bullet-proof-kde-upgrade.png" title="do-release-upgrade -d if you would rather not wait" >}}

## The number to plan around

Ubuntu Desktop gets five years of maintenance. The flavours, Kubuntu included, get three. That gap has always existed, and it is the thing to weigh if you are choosing a base for machines that need to sit untouched. What is different this cycle is that the three years now come with a funded upstream behind them, rather than a version number and good intentions.

Kubuntu 26.04 was never going to be interesting because of the version bump. It is interesting because someone is paying for the unglamorous part.

{{< figure src="/images/news/kubuntu-26-04-1-bullet-proof-kde-get.png" title="Get Kubuntu" >}}

Grab the ISO at [kubuntu.org](https://kubuntu.org/). If you find a bug, file it on [bugs.kde.org](https://bugs.kde.org/) or Launchpad — that is the entire point of an LTS that isn't fake.

In the episode we also pick Lutris from Discover and walk through Steam Play — for a longer Kubuntu Focus how-to on gaming, see [kfocus.org/wf/gaming.html](https://kfocus.org/wf/gaming.html).

**Sources:** [kubuntu.org: Beyond Ubuntu long-term support](https://kubuntu.org/news/plasma-6.6-lts/) · [Nate Graham: What a real LTS looks like](https://pointieststick.com/2026/08/13/what-a-real-lts-looks-like-kubuntu-26-04/) · [Ubuntu 26.04.1 announcement](https://lists.ubuntu.com/archives/ubuntu-announce/2026-August/000326.html) · [26.04 release notes](https://documentation.ubuntu.com/release-notes/26.04/) · [Episode 22 on YouTube](https://youtu.be/FxDAT1LRZ4U) · [Kubuntu Focus gaming how-to](https://kfocus.org/wf/gaming.html) · [bugs.kde.org](https://bugs.kde.org/)
