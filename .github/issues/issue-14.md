---
id: 14
database_id: 1937734394
node_id: I_kwDOItGBGs5zf3r6
status: open
title: "dev: fake static api"
labels: ["type: feature","scope: code","impact: medium","effort: medium"]
url: https://github.com/octomation/install/issues/14
created_at: 2023-10-11T13:04:36Z
updated_at: 2023-10-18T09:55:24Z
---

# dev: fake static api

**Motivation:** experiments and automation purposes.

**PoC**

```bash
curl install.octolab.org/lookup | jq '.godownloader' | bash -- -b /usr/local/bin
```

- install.octolab.org/lookup or install.octolab.org/how
- support wget and curl
- friendly for https://github.com/octomation/taskfiles
