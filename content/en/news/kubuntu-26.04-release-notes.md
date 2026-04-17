# Kubuntu 26.04 LTS Resolute Raccoon Released

April 23, 2026

### Bringing the Best of KDE to Ubuntu's Long-Term Foundation

The Kubuntu team is thrilled to announce the release of Kubuntu 26.04 LTS, codenamed "Resolute Raccoon"!
As a community-driven flavour of Ubuntu, Kubuntu continues its mission to deliver the cutting-edge KDE software
ecosystem on top of Ubuntu's rock-solid foundation. This Long-Term Support release, aligned with Ubuntu's
two-year LTS cycle, brings together the freshest stable KDE software with the reliability and security users
depend on for years to come.

Building on the Ubuntu 26.04 LTS base released today by Canonical, Kubuntu 26.04 introduces **Plasma 6.6**
as the flagship desktop environment, alongside **Qt 6.10.2**, **KDE Frameworks 6.24.0**, and the latest
**KDE Gear 25.12.3** application suite. We've also upgraded to **Linux kernel 7.0** for enhanced hardware
support and performance. Whether you're a developer, creator, or everyday user, this release emphasises
Wayland maturity, modern security, and seamless integration with the open source world.

Kubuntu 26.04 LTS will receive security updates and critical fixes through **April 2029**, making it an
excellent choice for home users, schools, businesses, and anyone who values a dependable, beautiful desktop.

Kubuntu remains completely free to download, use, and share—empowering our global community to innovate
without barriers. [Download](https://www.kubuntu.org/download) it now and join our community on
[Discourse](https://discourse.ubuntu.com/c/flavors/kubuntu/187).

---

#### Four Exciting New Features for Kubuntu Users

Here are four standout enhancements that Kubuntu 26.04 LTS brings to your desktop:

1. **Text Recognition in Spectacle: Capture Text, Not Just Images**
   Spectacle, KDE's built-in screenshot tool, gains one of its most practical new capabilities in Plasma 6.6:
   built-in OCR text recognition. Capture any screenshot containing text—a document, a web page, an error
   dialog, a presentation slide—and Spectacle can analyse the image and convert the visible text into
   selectable, copyable content, right from within the app. No third-party tools required. Multi-language
   support means it works for users around the world, and the extracted text copies directly to your clipboard
   for immediate use. It's the kind of small feature that quickly becomes indispensable.

   > **Note:** Multi-language OCR support requires the appropriate Tesseract language data package for your
   > language. Install the one that matches your locale — for example, `tesseract-ocr-deu` for German or
   > `tesseract-ocr-fra` for French — with:
   > ```
   > sudo apt install tesseract-ocr-<language-code>
   > ```
   > A full list of available language packs can be found by running `apt search tesseract-ocr-`.

2. **A New On-Screen Keyboard for Touch, Accessibility, and Beyond**
   Plasma 6.6 introduces a fully integrated on-screen keyboard, making Kubuntu a much stronger choice for
   touchscreen devices, tablets, and users with accessibility needs. The keyboard supports multiple languages
   and layouts, adjusts its position intelligently to avoid covering input fields, and is easily accessible
   via the system tray or accessibility settings. It includes standard keys, function keys, and emoji support,
   and appears automatically when you tap a text input field on touch-enabled hardware. This addition reflects
   KDE's ongoing commitment to making the desktop inclusive and usable for everyone.

3. **Plasma Wayland: The Default, Fully Supported Session**
   The Plasma Wayland session is the default and fully supported session in Kubuntu 26.04 LTS, delivering
   improved security, smoother rendering, and better HiDPI display support. For users who need it for legacy
   hardware or specific workflows, the `plasma-session-x11` package remains available in the Ubuntu archive—
   but it is not installed by default and is not supported by the Kubuntu team.

4. **Extensive Theming and Configuration Improvements**
   Plasma 6.6 brings significant advances to theming and desktop configuration, giving users more expressive
   control over the look and feel of their environment than ever before. Custom global themes have been
   expanded, colour scheme handling has been refined throughout the shell and applications, and widget
   customisation options have been deepened across panels and the desktop. Whether you prefer a polished
   out-of-the-box experience or enjoy crafting every detail of your workspace, Resolute Raccoon gives you
   the tools to make Kubuntu truly your own.

   > **Note for upgraders:** Due to the depth of configuration changes across Plasma 6.6, Qt 6.10.2, and
   > KDE Frameworks 6.24.0, users upgrading from a previous release are **strongly encouraged to begin with
   > a clean `~/.config` folder**. Legacy configuration files from older Plasma releases can cause unexpected
   > visual glitches, broken panel layouts, or misbehaving themes. Backing up and removing your existing
   > `~/.config` before logging into the upgraded desktop will give you the cleanest, most reliable experience.

---

#### What's New Under the Hood

Beyond these highlights, Kubuntu 26.04 LTS inherits Ubuntu's robust platform upgrades:

- **Linux Kernel 7.0**: Updated from 6.8, the kernel now enables crash dumps by default on desktop
  installations, brings the new `sched_ext` scheduling system for hot-swappable eBPF-based schedulers,
  and retires the `linux-lowlatency` package in favour of a leaner `lowlatency-kernel` tuning approach
  on top of `linux-generic`.
- **KDE Applications 25.12.3**: All KDE Gear applications have been updated to 25.12.3, a stable
  release, including Dolphin, Konsole, Okular, Kdenlive, and more.
- **Qt 6 Ecosystem**: Qt 6.10.2 and KDE Frameworks 6.24.0 power the desktop. Qt5 (5.15.18) and
  KDE Frameworks 5 (5.116.0) legacy packages remain in the archive for applications that have not yet
  completed their Qt6 port.
- **Firefox 149/150** and **LibreOffice 25.8**: Both core applications are updated, with Firefox delivered
  as a Snap from the Snap Store and LibreOffice included in the full installation.
- **sudo-rs by default**: Ubuntu 26.04 LTS ships `sudo-rs`, a memory-safe Rust reimplementation of `sudo`,
  as the default `sudo` provider — improving security without changing everyday usage.
- **Rust-powered core utilities**: The core OS utilities are now provided by `rust-coreutils`, bringing
  performance improvements and memory safety to fundamental command-line tools.
- **VA-API hardware video acceleration**: AMD and Intel users now get hardware-accelerated video encoding
  and decoding by default via the Video Acceleration API — great for media playback and video work.
- **Updated developer toolchain**: GCC 15.2, Python 3.13 (3.14 also available), Rust 1.93, Golang 1.25,
  LLVM 21, OpenJDK 25, and .NET 10 are all included and ready to use.
- **APT 3**: The package manager gains a new dependency solver, OpenSSL-backed TLS, and an automatic
  pager for commands like `apt show` and `apt list`.

---

This release marks another milestone in Kubuntu's long journey as one of Ubuntu's most beloved flavours.
A huge thank you to our volunteer contributors, testers, bug reporters, and the upstream KDE and Ubuntu teams
for making Resolute Raccoon a reality.

Ready to dive in? [Download Kubuntu 26.04 LTS](https://www.kubuntu.org/download) and install fresh,
or upgrade from Kubuntu 24.04 LTS. If upgrading, remember to back up and clear your `~/.config` folder
for the smoothest experience. Questions? Head to [Discourse](https://discourse.ubuntu.com/c/flavors/kubuntu/187)
or join us on Matrix at [#kubuntu:matrix.org](https://matrix.to/#/#kubuntu:matrix.org).
