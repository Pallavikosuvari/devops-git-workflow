\# DevOps Git Workflow



A version-controlled DevOps project demonstrating Git best practices: branching, pull requests, tags, and documentation.



\## Project Structure



\- `scripts/healthcheck.sh` - simple service health check script

\- `.gitignore` - files excluded from version control

\- `README.md` - project documentation



\## Branching Strategy



| Branch | Purpose |

|--------|---------|

| `main` | Stable, production-ready code |

| `dev` | Integration branch for features |

| `feature/\*` | One branch per new feature |



\## Workflow



1\. Create a `feature/\*` branch from `dev`

2\. Commit changes and push

3\. Open a pull request into `dev`

4\. Merge `dev` into `main` via pull request

5\. Tag releases (for example `v1.0.0`)



\## Usage



Run the health check with: `./scripts/healthcheck.sh http://localhost:8080`

