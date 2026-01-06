# kubuntu.org
Repository for the Kubuntu.org website. This is where we can add new pages, update old ones, maintain and manage the 
website and its content.

## Development Workflow

We follow a branching strategy to ensure stable deployments:

- `main` branch: Production environment (kubuntu.org)
- `develop` branch: Testing environment (kubuntu-team.github.io/kubuntu.org)
- Feature branches: Created from `develop` for new features or fixes

### Branch Protection Rules
- `main`: Requires pull request reviews before merging
- `develop`: Allows direct pushes for testing
- Feature branches: Created from `develop` for development work

## New to development ?
No worries we have you covered, we're assuming you are working on a Kubuntu, or another Ubuntu based Linux distribution.

**Step 1**

Open a terminal application such as Konsole

**Step 2**

Copy the following line and paste it into the terminal window
at the command line.

```shell
wget -O setup.sh https://raw.githubusercontent.com/kubuntu-team/kubuntu.org/develop/setup.sh && bash setup.sh
```
Want more detail about what the script is doing, check the [setup documentation](./docs/setup.md)

![Running the Setup Script](./docs/images/setup_konsole.png)

## Start Local development of kubuntu.org

setup.sh has installed your tools, and cloned the code from Github, it's time to take a look at the website running
locally on your machine.

### Standard Development

For standard development using localhost:1313, use the develop.sh script:

```shell
./develop.sh
```

You should see something like this
![kubuntu.org development site](./docs/images/web_develop.png)

### Domain-based Development (kubuntu.org)

For testing with the actual kubuntu.org domain locally, you can use the proxy mode of the develop.sh script:

1. First, add the following entry to your hosts file:
   ```
   127.0.0.1 kubuntu.org
   ```
   
   You can do this by running:
   ```shell
   sudo sh -c 'echo "127.0.0.1 kubuntu.org" >> /etc/hosts'
   ```

2. Then start the proxy development environment:
   ```shell
   ./develop.sh --proxy
   ```

3. To stop the proxy development environment:
   ```shell
   ./develop.sh --stop
   ```
4. Remove the kubuntu.org entry from your hosts file:
   ```shell
   sudo sed -i '/^127\.0\.0\.1[[:space:]]\+kubuntu\.org$/d' /etc/hosts
   ```
This will:
- Check that the required hosts file entry exists
- Start a proxy service to forward requests from kubuntu.org to the local Hugo server
- Launch the Hugo development server
- Open your browser to http://kubuntu.org

# Show help
```shell
./develop.sh --help
```

## Making changes

1. Create a new feature branch from `develop`:
   ```shell
   git checkout develop
   git pull
   git checkout -b feature/your-feature-name
   ```

2. Make your changes:
   - Open the kubuntu.org folder using the dolphin file manager
   - Navigate to the content folder
   - Edit files in Kate
   - View changes in Firefox at http://localhost:1313

3. Commit and push your changes:
   ```shell
   git add .
   git commit -m "Description of your changes"
   git push origin feature/your-feature-name
   ```

4. Create a pull request to `develop` branch

## Deployment Process

The site is automatically deployed using GitHub Actions:

### Testing Environment
- Branch: `develop`
- URL: https://kubuntu-team.github.io/kubuntu.org
- Triggered on:
  - Push to `develop`
  - Pull requests to `develop`

### Production Environment
- Branch: `main`
- URL: https://kubuntu.org
- Triggered on:
  - Push to `main`
  - Pull requests to `main`

### Deployment Steps
1. Changes are merged to `develop` for testing
2. After testing, create a pull request to `main`
3. After review and merge, changes are automatically deployed to production

### Deployment Notifications
- Success: 🚀 Deployment successful with site URL
- Failure: ❌ Deployment failed with workflow run link
- All notifications are posted as commit comments

## Build and Optimization

The build process includes:
- Hugo static site generation
- Image optimization
- CSS and JavaScript minification
- Sitemap generation
- Broken link checking

## Next Steps

We use the Hugo static site generator to develop kubuntu.org, so check out the
 - [Hugo Getting Started Documentation](https://gohugo.io/getting-started/)

You should also take a read of the
 - [Git and Github Getting Started documentation](https://docs.github.com/en/get-started/quickstart/hello-world)

## Further help

Reach out to our #kubuntu user or #kubuntu-devel developer channels on IRC, if you're using Kubuntu then 'Konversation' is 
where your friends are.
