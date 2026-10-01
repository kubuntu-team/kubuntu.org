## Community Blog post

Thanks for writing for the Kubuntu Community Blog.

**Guide:** [Write a Community Blog post](https://kubuntu.org/blog/write/) (step-by-step, including the GitHub-in-browser path)

`author_slug` is a short lowercase id for the author's name, for example `rick-timmis`. Use the same slug on every post you write.

### Pull request basics

- [ ] I opened this PR targeting **`develop`**
- [ ] I put the post file under `content/en/blog/` and named it with a `.md` ending
- [ ] I used a lowercase-hyphenated filename (e.g. `plasma-tip-overview.md`) with no spaces

### Frontmatter checklist

- [ ] I set `title` to a clear headline
- [ ] I set `date` to `YYYY-MM-DD`
- [ ] I set `author` to my display name for the byline
- [ ] I set `author_slug` to my short lowercase id (hyphens only), and I will reuse it on later posts
- [ ] I set `author_url` to a public profile link, or I left it out on purpose
- [ ] I set `description` to one short summary sentence
- [ ] I set `tags` and included at least `blog`
- [ ] I set `draft: false` because this post is ready to publish

### First post under this author_slug?

- [ ] I added `content/en/blog/authors/<author_slug>/_index.md` with `layout: author` and the same `author_slug`
- [ ] Or I already have an author page from an earlier post

### Voice and links

- [ ] I wrote this in my own community voice (not as a Council or official Kubuntu statement)
- [ ] I kept official announcements in `content/en/news/`, not here
- [ ] I pointed readers to [Kubuntu Discourse](https://discourse.ubuntu.com/c/flavors/kubuntu/187) for discussion where it helps

### Images (if any)

- [ ] I put image files under `static/images/blog/`
- [ ] I referenced them as `/images/blog/your-file.png` in the Markdown
- [ ] I own the rights, or the image is freely licensed

### Summary for reviewers

<!-- What is this post about? -->

### Author

- Display name (`author`):
- `author_slug`:
- `author_url` (optional):
