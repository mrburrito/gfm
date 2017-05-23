# mrburrito/gfm

This Docker image runs [`gollum`](https://github.com/gollum/gollum) with the `github-markdown`
gem installed to render a GitHub/GitLab project Wiki for local development.

## Usage

Clone your project's Wiki, then volume mount the Wiki directory to `/wiki` in the container.
Your pages will be served on port `80`.


```bash
git clone https://gitlab.com/me/myproject.wiki.git
docker run -p 4567:80 -v $(pwd)/myproject:/wiki mrburrito/gfm
```

<http://localhost:4567>

### Read/Write Mode

Gollum is started with the `--no-edit` option by default. If you want to enable editing
from the container, use the command `edit` when running:

```bash
# Enables editing in Gollum
docker run -p 4567:80 -v $(pwd)/myproject:/wiki mrburrito/gfm edit
```

All changes made in this mode will be attributed to "Anonymous."

## Versions

-   Ruby: `2.4`
-   Gollum: `4.1.1`
-   github-linguist: `5.0.10`
-   github-markdown: `0.6.9`
