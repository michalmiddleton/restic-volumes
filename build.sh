RESTIC_VER=16.0
CR_IMAGE_NAME=$1
CR_IMAGE_TAG="${RESTIC_VER}-$(date +%Y%m%d)"

docker build . \
    --file Dockerfile \
    --tag ${CR_IMAGE_NAME}:${CR_IMAGE_TAG} \
    --tag ${CR_IMAGE_NAME}:latest
