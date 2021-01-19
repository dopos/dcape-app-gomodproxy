# app custom Makefile

# Docker repo & image name without version
IMAGE    ?= gomods/athens
# Hostname for external access
APP_SITE ?= gomod.dev.lan
# Keep existing APP_ROOT files
SETUP_ROOT_OPTS = keep

# ------------------------------------------------------------------------------
# app custom config

IMAGE_VER       ?= v0.10.0

# ------------------------------------------------------------------------------
# Find and include DCAPE/apps/drone/dcape-app/Makefile
DCAPE_COMPOSE  ?= dcape-compose
DCAPE_MAKEFILE  ?= $(shell docker inspect -f "{{.Config.Labels.dcape_app_makefile}}" $(DCAPE_COMPOSE))
ifeq ($(shell test -e $(DCAPE_MAKEFILE) && echo -n yes),yes)
  include $(DCAPE_MAKEFILE)
else
  include /opt/dcape-app/Makefile
endif
