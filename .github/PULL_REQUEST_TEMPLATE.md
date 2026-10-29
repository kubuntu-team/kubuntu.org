## Summary

<!-- What does this PR change? One or two sentences. -->

## Type of change

- [ ] Community Blog post → **also complete the [blog checklist](.github/PULL_REQUEST_TEMPLATE/blog.md)** (or choose the "Community Blog post" PR template)
- [ ] News / other content / translations
- [ ] Theme / layout / config
- [ ] CI / tooling / docs

## Target branch

- [ ] I opened this PR targeting **`develop`** (required for site content)

## Blog posts: quick gate

If you touched `content/en/blog/**`:

- [ ] I put the post file under `content/en/blog/` (not under `news/`)
- [ ] I set `author` and `author_slug` on every post (`author_slug` is a short lowercase id for the author, e.g. `rick-timmis`)
- [ ] For a new author, I added `content/en/blog/authors/<author_slug>/_index.md`
- [ ] I followed the step-by-step guide: https://kubuntu.org/blog/write/ (or `/blog/write/` on preview)
