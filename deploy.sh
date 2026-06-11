#!/usr/bin/env bash
set -e

SRC="/home/andrianandrainy/Documents/S4/Mr Aina & Mr Rindra/tomcat2"
APP="SprintSpringMVC"

# Stop first; ignore error if Tomcat is already stopped.
"$SRC/bin/shutdown.sh" || true

mkdir -p "$SRC/temp" "$SRC/work" "$SRC/logs" "$SRC/webapps"

# Remove stale deployment (fallback to sudo if folder is root-owned).
if [[ -w "$SRC/webapps/$APP" || ! -e "$SRC/webapps/$APP" ]]; then
  rm -rf "$SRC/webapps/$APP" "$SRC/webapps/$APP.war"
else
  sudo rm -rf "$SRC/webapps/$APP" "$SRC/webapps/$APP.war"
fi

mvn clean package -DskipTests

# Copy WAR (fallback to sudo if needed).
if [[ -w "$SRC/webapps" ]]; then
  cp "target/$APP.war" "$SRC/webapps/"
else
  sudo cp "target/$APP.war" "$SRC/webapps/"
fi

"$SRC/bin/startup.sh"
echo "Deployed: http://localhost:8080/$APP/"