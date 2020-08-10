#!/bin/sh
GENERATE_SOURCEMAP=false
SRC="./public"
TARGET="/opt/enketo-express/public"
SRC2="./locales"
TARGET2="/opt/enketo-express/locales"

if [ -d $SRC ]; then
  rm -Rf /opt/enketo-express/public
  rm -Rf /opt/enketo-express/locales
  cp -R $SRC $TARGET
  cp -R $SRC2 $TARGET2
  sudo systemctl restart enketo
else
  echo "Dir not found: $SRC"
  exit 1
fi
