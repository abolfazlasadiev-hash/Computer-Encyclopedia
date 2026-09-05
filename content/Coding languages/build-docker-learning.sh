#!/usr/bin/env bash

set -euo pipefail

ROOT="Docker-Learning"

echo "🐳 Building Docker Learning Obsidian Vault..."

mkdir -p "$ROOT"

# ============================================================
# Helper function
# ============================================================

create_md_files() {
    local folder="$1"
    shift

    mkdir -p "$ROOT/$folder"

    for file in "$@"; do
        touch "$ROOT/$folder/$file.md"
    done
}

# ============================================================
# 01 Docker Basics
# ============================================================

create_md_files "01-Docker-Basics" \
    01-what-is-docker \
    02-containers-vs-vms \
    03-docker-architecture \
    04-docker-engine \
    05-docker-cli \
    06-docker-images \
    07-docker-containers \
    08-docker-hub \
    09-docker-workflow

# ============================================================
# 02 Installation
# ============================================================

create_md_files "02-Installation" \
    01-install-docker-linux \
    02-docker-version \
    03-docker-info \
    04-docker-help \
    05-docker-permissions

# ============================================================
# 03 Docker Commands
# ============================================================

create_md_files "03-Docker-Commands" \
    01-docker-run \
    02-docker-ps \
    03-docker-stop \
    04-docker-start \
    05-docker-restart \
    06-docker-rm \
    07-docker-exec \
    08-docker-logs \
    09-docker-inspect \
    10-docker-cp \
    11-docker-kill \
    12-docker-prune \
    13-docker-system

# ============================================================
# 04 Docker Images
# ============================================================

create_md_files "04-Docker-Images" \
    01-image-basics \
    02-docker-pull \
    03-docker-images \
    04-docker-rmi \
    05-docker-build \
    06-image-tags \
    07-image-layers \
    08-image-cache \
    09-dockerfile \
    10-image-size

# ============================================================
# 05 Dockerfile
# ============================================================

create_md_files "05-Dockerfile" \
    01-from \
    02-run \
    03-cmd \
    04-entrypoint \
    05-copy \
    06-add \
    07-workdir \
    08-env \
    09-arg \
    10-expose \
    11-user \
    12-volume \
    13-label \
    14-dockerfile-best-practices

# ============================================================
# 06 Containers
# ============================================================

create_md_files "06-Containers" \
    01-container-lifecycle \
    02-container-name \
    03-container-port \
    04-container-environment \
    05-container-filesystem \
    06-container-processes \
    07-container-resources \
    08-interactive-containers \
    09-detached-containers

# ============================================================
# 07 Volumes
# ============================================================

create_md_files "07-Volumes" \
    01-why-volumes \
    02-named-volumes \
    03-bind-mounts \
    04-tmpfs \
    05-volume-commands \
    06-volume-backups \
    07-database-volumes

# ============================================================
# 08 Networking
# ============================================================

create_md_files "08-Networking" \
    01-networking-basics \
    02-bridge-network \
    03-host-network \
    04-none-network \
    05-custom-networks \
    06-container-to-container \
    07-port-mapping \
    08-dns \
    09-network-troubleshooting

# ============================================================
# 09 Docker Compose
# ============================================================

create_md_files "09-Docker-Compose" \
    01-what-is-compose \
    02-compose-file \
    03-services \
    04-images \
    05-build \
    06-ports \
    07-volumes \
    08-networks \
    09-environment \
    10-depends-on \
    11-healthcheck \
    12-compose-up \
    13-compose-down \
    14-compose-logs \
    15-compose-best-practices

# ============================================================
# 10 Environment Configuration
# ============================================================

create_md_files "10-Environment-Configuration" \
    01-environment-variables \
    02-env-file \
    03-secrets \
    04-config-files \
    05-development-vs-production

# ============================================================
# 11 Docker Registries
# ============================================================

create_md_files "11-Docker-Registries" \
    01-docker-hub \
    02-login \
    03-tagging \
    04-pushing-images \
    05-pulling-images \
    06-private-registries

# ============================================================
# 12 Docker Security
# ============================================================

create_md_files "12-Docker-Security" \
    01-container-security \
    02-root-vs-non-root \
    03-image-security \
    04-secrets-security \
    05-resource-limits \
    06-network-security \
    07-security-best-practices

# ============================================================
# 13 Docker Optimization
# ============================================================

create_md_files "13-Docker-Optimization" \
    01-image-size \
    02-multi-stage-builds \
    03-build-cache \
    04-dockerignore \
    05-layer-optimization \
    06-build-performance

# ============================================================
# 14 Troubleshooting
# ============================================================

create_md_files "14-Troubleshooting" \
    01-container-wont-start \
    02-port-already-in-use \
    03-image-problems \
    04-volume-problems \
    05-network-problems \
    06-permission-problems \
    07-container-logs \
    08-debugging-workflow

# ============================================================
# 15 Docker Projects
# ============================================================

projects=(
    "01-nginx-container"
    "02-nodejs-container"
    "03-python-container"
    "04-mysql-container"
    "05-postgresql-container"
    "06-node-mysql"
    "07-node-postgresql"
    "08-python-postgresql"
    "09-nginx-node-postgresql"
    "10-full-stack-docker"
)

for project in "${projects[@]}"; do

    PROJECT="$ROOT/15-Docker-Projects/$project"

    mkdir -p "$PROJECT"

    touch "$PROJECT/README.md"
    touch "$PROJECT/Dockerfile"

done

# Compose files

touch "$ROOT/15-Docker-Projects/04-mysql-container/compose.yaml"
touch "$ROOT/15-Docker-Projects/05-postgresql-container/compose.yaml"
touch "$ROOT/15-Docker-Projects/06-node-mysql/compose.yaml"
touch "$ROOT/15-Docker-Projects/07-node-postgresql/compose.yaml"
touch "$ROOT/15-Docker-Projects/08-python-postgresql/compose.yaml"
touch "$ROOT/15-Docker-Projects/09-nginx-node-postgresql/compose.yaml"
touch "$ROOT/15-Docker-Projects/10-full-stack-docker/compose.yaml"

# ============================================================
# 16 Production
# ============================================================

create_md_files "16-Production" \
    01-production-dockerfile \
    02-production-compose \
    03-healthchecks \
    04-logging \
    05-monitoring \
    06-resource-management \
    07-deployment

# ============================================================
# 17 Advanced
# ============================================================

create_md_files "17-Advanced" \
    01-buildkit \
    02-buildx \
    03-multi-platform-builds \
    04-docker-context \
    05-docker-api \
    06-docker-events \
    07-advanced-networking

# ============================================================
# 18 Cheat Sheets
# ============================================================

create_md_files "18-Cheat-Sheets" \
    docker-commands \
    docker-run \
    dockerfile \
    compose \
    volumes \
    networking \
    troubleshooting

# ============================================================
# 19 Progress
# ============================================================

create_md_files "19-Progress" \
    roadmap \
    progress \
    commands-i-learned \
    mistakes \
    notes

# ============================================================
# Main README
# ============================================================

cat > "$ROOT/00-README.md" <<'EOF'
# 🐳 Docker Learning

A complete Docker learning vault for Obsidian.

---

## Learning Path

```text
Docker Basics
      ↓
Installation
      ↓
Docker CLI
      ↓
Images
      ↓
Dockerfile
      ↓
Containers
      ↓
Volumes
      ↓
Networking
      ↓
Docker Compose
      ↓
Environment Configuration
      ↓
Registries
      ↓
Security
      ↓
Optimization
      ↓
Troubleshooting
      ↓
Docker Projects
      ↓
Production
      ↓
Advanced Docker
