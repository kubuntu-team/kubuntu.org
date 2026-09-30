# Community Blog & Bloggers Hall of Fame

English-first community blogging section for kubuntu.org (separate from News).

## URLs

| Path | Purpose |
|------|---------|
| `/blog/` | Section list + intro |
| `/blog/hall-of-fame/` | Authors sorted by published post count |
| `/blog/authors/<author_slug>/` | Per-author post list |
| `/blog/about/` | Disclaimer: community voice, not Council |
| `/blog/index.xml` | Section RSS |

## Frontmatter (required on posts)

```yaml
author: "Display Name"
author_slug: "display-name"   # stable id; used for Hall of Fame + author page matching
author_url: "https://..."     # optional
```

Missing `author` / `author_slug` means no byline link and no Hall of Fame credit. The PR templates call this out.

## How author pages work

**Custom pages** (not a Hugo taxonomy — avoids singular/plural frontmatter clashes with the required `author_slug` field):

- Author page: `content/en/blog/authors/<slug>/_index.md` with `layout: author` and `author_slug: <slug>`
- Layout `layouts/blog/author.html` lists `section == blog` pages whose `Params.author_slug` matches
- Hall of Fame: `layouts/blog/hall-of-fame.html` groups those posts by `author_slug`, sorts by count descending
- Plain-text tiers from count only: 1 First Word, 3 Regular, 10 Columnist (no badge art)

When a new author publishes, add `content/en/blog/authors/<their-slug>/_index.md` (copy Rick’s seed page). The Hall of Fame still lists them from post frontmatter even before that page exists; the author link 404s until the page is added.

## Local preview

```bash
cd /path/to/kubuntu.org
git checkout feature/community-blog-hall-of-fame
./develop.sh
# or: hugo server
```

Open http://localhost:1313/blog/ and the Hall of Fame / author / RSS URLs above.

## New post

```bash
hugo new content/en/blog/my-topic.md --kind blog
# edit author / author_slug, set draft: false
# if new author: add content/en/blog/authors/<slug>/_index.md
# open PR
```

## Follow-ups (not in initial branch)

- FR/ES translations of section indexes
- Optional CI lint for missing `author_slug` on blog posts
- Auto-generate author landing pages from slugs (optional taxonomy later)
- Replace seed posts with real community writing
