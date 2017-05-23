# mrburrito/gfm

This Docker image runs `gollum` with the `github-markdown` gem installed to render
a GitHub/GitLab project Wiki for local development.

## Usage

Clone your project's Wiki, then volume mount the Wiki directory to `/www` in the container.
Your pages will be served on port `4567`.

```bash
git clone https://gitlab.com/me/myproject.wiki.git
docker run -p 4567:4567 -v $(pwd)/myproject:/www:ro mrburrito/gfm
```
