# app custom Makefile

SHELL          = /bin/sh
CFG           ?= .env

# Hostname for external access
APP_SITE        ?= gomod.dev.lan

#- Docker image name
IMAGE           ?= gomods/athens

#- Docker image tag
IMAGE_VER       ?= v0.13.0

#- Cache storage path
LIB_PATH        ?= Athens

#- Cache storage root path
DCAPE_VAR       ?= #

# ------------------------------------------------------------------------------
-include $(CFG)
export

# Find and include DCAPE/apps/drone/dcape-app/Makefile
DCAPE_COMPOSE ?= dcape-compose
DCAPE_ROOT    ?= $(shell docker inspect -f "{{.Config.Labels.dcape_root}}" $(DCAPE_COMPOSE))

ifeq ($(shell test -e $(DCAPE_ROOT)/Makefile.app && echo -n yes),yes)
  include $(DCAPE_ROOT)/Makefile.app
endif
