#!/bin/sh

ENDECA_LOCAL_ROOT="/appl/endeca"
$ENDECA_LOCAL_ROOT/PlatformServices/11.1.0/tools/server/bin/startup.sh
$ENDECA_LOCAL_ROOT/CAS/11.1.0/bin/cas-service.sh &
$ENDECA_LOCAL_ROOT/ToolsAndFrameworks/11.1.0/server/bin/startup.sh