# Git Wiki Renderer

This container assists in writing a GitHub/GitLab Wiki locally.

Clone your repository's wiki and volume mount the local directory to
`/www` in this container. Then connect to port `4567` to view the Wiki.

```bash
docker run -v ${MY_LOCAL_WIKI}:/www:ro -p 4567:4567 -d --name gfm mrburrito/gfm
```
