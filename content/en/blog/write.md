---
title: "Write a Community Blog post"
description: "Step-by-step guide to publishing on the Kubuntu Community Blog"
date: 2026-09-30
build:
  list: never
  render: always
---

# Write a Community Blog post

You do **not** need to be a developer. If you can edit a text file on GitHub, you can publish here.

**Before you start:** posts are *your* voice, not a Kubuntu Council statement. Official announcements stay in [News](/news/). Conversation stays on [Kubuntu Discourse](https://discourse.ubuntu.com/c/flavors/kubuntu/187).

Pick **one** path below. Path A is the simplest.

---

## Path A — GitHub website only (recommended)

### 1. Sign in to GitHub

Use or create an account at [github.com](https://github.com/).

### 2. Open the website repository

Go to: [github.com/kubuntu-team/kubuntu.org](https://github.com/kubuntu-team/kubuntu.org)

### 3. Work from the `develop` branch

Near the top-left of the file browser, open the branch dropdown and choose **`develop`** (not `main`).

### 4. Create your post file

1. Open the folder `content` → `en` → `blog`
2. Click **Add file** → **Create new file**
3. Name the file with lowercase letters, digits, and hyphens only, ending in `.md`  
   Examples: `my-first-plasma-tip.md`, `migrating-from-windows.md`  
   Avoid spaces and capitals in the filename.

GitHub will offer to **fork** the repo and open a pull request for you. Accept that — that is the normal path for first-time contributors.

### 5. Paste this template at the top of the file

Replace the placeholder values. Keep the `---` lines.

```yaml
---
date: 2026-10-01
title: "Your clear title here"
description: "One sentence summary for listings and search"
tags: ["blog", "plasma"]
author: "Your Name"
author_slug: "your-name"
author_url: "https://github.com/YourGitHub"
draft: false
---

Your article starts here. Use ordinary Markdown.

## A heading

- Bullet points work
- Links look like [Kubuntu Discourse](https://discourse.ubuntu.com/c/flavors/kubuntu/187)

Optional image (file must already live under `static/images/blog/`):

{{</* figure src="/images/blog/your-image.png" title="Short caption" */>}}
```

### 6. Fill the required fields

| Field | Required? | What to put |
|-------|-----------|-------------|
| `title` | Yes | What readers see as the headline |
| `date` | Yes | Publish date (`YYYY-MM-DD`) |
| `author` | Yes | Your display name (byline) |
| `author_slug` | Yes | Permanent id: lowercase, hyphens only. Example: `jane-doe`. **Use the same slug on every post you write.** |
| `author_url` | No | Link to your GitHub, Mastodon, or homepage |
| `description` | Strongly recommended | One short sentence |
| `tags` | Recommended | e.g. `blog`, `plasma`, `howto` |
| `draft` | Yes | `false` when you want it published |

### 7. First time publishing under your name?

Also add an author page so your Hall of Fame link works:

1. Still on branch `develop` (via your fork/PR)
2. Create file: `content/en/blog/authors/your-name/_index.md`  
   (folder name = your `author_slug`)
3. Paste:

```yaml
---
title: "Your Name"
description: "Community blog posts by Your Name"
author_slug: "your-name"
author_url: "https://github.com/YourGitHub"
layout: "author"
---

A sentence about you is enough.
```

### 8. Commit and open the pull request

1. Scroll to **Commit changes**
2. Use a short message, e.g. `Add blog: my first Plasma tip`
3. Choose **Create a new branch and start a pull request**
4. Open the PR **into `develop`** (not `main`)
5. When GitHub asks for a template, pick **Community Blog post** if offered
6. Tick every item on the checklist

Someone on the site team will review and merge. After merge to `develop`, it appears on the preview site; production follows when `develop` is promoted to `main`.

---

## Path B — Local Hugo (optional)

Only if you already develop on your machine:

```bash
git clone https://github.com/kubuntu-team/kubuntu.org.git
cd kubuntu.org
git checkout develop
git checkout -b blog/my-topic
hugo new content/en/blog/my-topic.md --kind blog
# edit the file — set author, author_slug, draft: false
# first-time author: add content/en/blog/authors/<slug>/_index.md
./develop.sh   # preview at http://localhost:1313/blog/
git add content/en/blog/
git commit -m "Add blog: my topic"
git push -u origin blog/my-topic
```

Then open a pull request to **`develop`** on GitHub and complete the blog checklist.

---

## What happens after you publish

- Your post appears on [/blog/](/blog/)
- You appear on the [Bloggers Hall of Fame](/blog/hall-of-fame/) (sorted by how many posts you have published)
- Readers can follow the section RSS at [/blog/index.xml](/blog/index.xml)

## Need help?

Ask on [Kubuntu Discourse](https://discourse.ubuntu.com/c/flavors/kubuntu/187) or in the usual Kubuntu Matrix / IRC channels. Point people at this page: [/blog/write/](/blog/write/).
