# Git Wiki Renderer

This container assists in writing a GitHub/GitLab Wiki locally.

Clone your repository's wiki and volume mount the local directory to
`/wiki` in this container. Then connect to port `4567` (mapped to `80`)
to view the Wiki.

```bash
docker run -v ${MY_LOCAL_WIKI}:/wiki -p 4567:80 -d --name gfm mrburrito/gfm
```

<http://localhost:4567>

You can disable editing by mounting the volume read-only: `-v ${MY_LOCAL_WIKI}:/wiki:ro`
