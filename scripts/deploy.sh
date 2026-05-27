#!/usr/bin/env bash
set -euo pipefail

ENVIRONMENT="${1:-staging}"
IMAGE_NAME="cloud-deploy-automation"

GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

log() {
    echo "[INFO]  $1"
}

success() {
    echo -e "${GREEN}[OK]    $1${NC}"
}

error() {
    echo -e "${RED}[ERROR] $1${NC}"
    exit 1
}

check_prerequisites() {
    log "Verificando pré-requisitos..."

    command -v docker >/dev/null 2>&1 || error "Docker não encontrado"
    command -v git >/dev/null 2>&1 || error "Git não encontrado"

    success "Pré-requisitos OK"
}

build_image() {
    local git_sha
    git_sha=$(git rev-parse --short HEAD)

    local image_tag="${IMAGE_NAME}:${ENVIRONMENT}-${git_sha}"

    log "Construindo imagem: $image_tag"

    docker build \
        --tag "$image_tag" \
        --tag "${IMAGE_NAME}:latest" \
        .

    success "Imagem criada: $image_tag"

    echo "$image_tag"
}

main() {
    log "=== DEPLOY AUTOMATION ==="
    log "Ambiente: $ENVIRONMENT"

    check_prerequisites
    build_image

    success "Deploy concluído!"
}

main "$@"