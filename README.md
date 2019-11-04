# pre-commit
pre-commit hooks

see https://pre-commit.com/

follows https://github.com/gruntwork-io/pre-commit

I needed this to create and push a tag: https://git-scm.com/book/en/v2/Git-Basics-Tagging

tag required for rev section in pre commit config

remember to make the script executable!

## pip freeze check
checks requirements.txt is up to date 

from https://gist.github.com/milancermak/3849310#file-pre-commit-sh

add to your `.pre-commit-config.yaml`:
```
repos:
-   repo: https://github.com/NYSAG-GS/pre-commit
    rev: <VERSION> # Get the latest from: https://github.com/NYSAG-GS/pre-commit/releases, e.g. v0.2
    hooks:
    - id: pip-freeze-check
```

