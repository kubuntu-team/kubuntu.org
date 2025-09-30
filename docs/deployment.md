# Deployment Guide

This document explains how kubuntu.org is built and deployed across testing and production environments.

## Overview
- Site generator: Hugo (extended) 0.121.1
- CI/CD: GitHub Actions workflow at .github/workflows/static.yml
- Environments:
  - Testing: develop branch → https://kubuntu-team.github.io/kubuntu.org
  - Production: main branch → https://kubuntu.org
- Output directory: public/

## Branch strategy
- develop: integration and testing environment; pushes here build the site and publish to GitHub Pages under the testing URL.
- main: production; pushes here build the site, publish an artifact to GitHub Pages, and additionally sync the built public/ directory to the production server via SFTP.

See README.md for general workflow and branch protection rules.

## What the workflow does
Workflow file: .github/workflows/static.yml

Triggers: push to develop or main.

Jobs:
1) build
- Checkout repository including submodules.
- Setup Hugo (0.121.1 extended) and Node.js 20 with npm cache.
- Install dependencies used by the build/minification pipeline: minify, ImageMagick, lftp (for production upload).
- Build with Hugo:
  - If on main: hugo --minify --gc --baseURL "https://kubuntu.org"
  - If on develop: hugo --minify --gc --baseURL "https://kubuntu-team.github.io/kubuntu.org"
- On main only: Upload via SFTP to the production server using lftp mirror -R to sync ./public to a target directory (see Secrets/Variables below).
- Upload the ./public directory as a GitHub Pages artifact (used by the deploy job).

2) deploy
- Environment name and URL are set dynamically based on branch.
- Deploys the uploaded artifact to GitHub Pages using actions/deploy-pages@v4.
- Posts a commit comment on success or failure with a link to the deployed site (or to the failed run).

Notes:
- The workflow enforces concurrency for Pages deployments (one in-flight at a time).
- The Pages artifact ensures the same build is deployed to GitHub Pages for both branches.

## Production server upload (main branch only)
The job "Upload via SFTP to Production" connects to the production host in SFTP mode and mirrors the built site.

- Auth: SSH private key provided as a GitHub Secret (SSH_PRIVATE_KEY). No password auth is allowed.
- Host keys: ssh-keyscan preloads known_hosts to avoid prompts.
- Tool: lftp in SFTP mode with a small retry budget.
- Command: mirror -R --parallel=4 --verbose ./public $SFTP_TARGET_DIR

Required GitHub repository variables/secrets:
- Secrets
  - SSH_PRIVATE_KEY: private key for the SFTP account.
- Variables (Repository Variables under Settings → Variables)
  - SFTP_USER: username for SFTP on the production host.
  - SFTP_HOST: hostname or IP of the production SFTP service.
  - SFTP_PORT: port (default 22 if not set).
  - SFTP_TARGET_DIR: target directory on the server (default /home/$SFTP_USER/data if not set).

Security considerations:
- The private key is written to a temporary file, permissions are restricted, and it is deleted at the end of the step.
- StrictHostKeyChecking is enabled with a preloaded known_hosts.
- Password authentication is disabled.

## Local builds and helper scripts
While CI builds everything automatically, there are helper scripts you can run locally:

- develop.sh: starts a local Hugo server for development. It also supports a --proxy mode for using the kubuntu.org domain locally.
- build.sh: performs a production-style build locally, including minification, image optimization, and packaging the site to kubuntu-site.tar.gz.
- deploy-config.sh: centralizes environment variables for deployment-related settings. Not used directly by the GitHub Actions workflow, but useful for local/ops workflows.

Typical local preview:
1. ./develop.sh (or ./develop.sh --proxy for domain-based development)
2. Visit http://localhost:1313 (or http://kubuntu.org if using proxy mode and hosts entry)

Production-like local build:
1. Ensure hugo, ImageMagick convert, and minify are installed.
2. Run ./build.sh
3. Inspect the public/ output or kubuntu-site.tar.gz

## Base URLs
- develop builds use baseURL https://kubuntu-team.github.io/kubuntu.org
- main builds use baseURL https://kubuntu.org
This is enforced in the workflow to ensure correct absolute links.

## Caches and optimizations
The workflow runs Hugo with --minify and --gc. The local build.sh adds further minification of CSS/JS and lossily optimizes images using ImageMagick. If you depend on exact asset bytes, be aware of these steps.

## How to deploy changes
- For testing: push your branch to GitHub and open a PR into develop, or push directly to develop (if allowed). The CI will build and deploy to the testing URL.
- For production: create a PR from develop to main. Upon merge, CI will build and deploy to production via both GitHub Pages artifact and SFTP to the production server.

## Troubleshooting
- Workflow fails on Hugo: Ensure content or templates are valid; check the Actions log for the "Build with Hugo" step.
- SFTP upload fails on main: Verify repository Variables and Secrets are correctly set and that the target directory exists and is writable.
- Images or styles not minified locally: Ensure minify and ImageMagick are installed; rerun ./build.sh.
- BaseURL issues (wrong absolute links): Confirm you pushed to the intended branch; the workflow sets baseURL per-branch.

## References
- Workflow file: .github/workflows/static.yml
- README: repository overview and development workflow
- Hugo docs: https://gohugo.io
