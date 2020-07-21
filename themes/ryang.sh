#!/usr/bin/env bash

# ====================CONFIG THIS =============================== #
export COLOR_01="#414A4D"           # HOST
export COLOR_02="#ED7559"           # SYNTAX_STRING
export COLOR_03="#3CD1AA"           # COMMAND
export COLOR_04="#FDC085"           # COMMAND_COLOR2
export COLOR_05="#5BB8E3"           # PATH
export COLOR_06="#74507A"           # SYNTAX_VAR
export COLOR_07="#23E4C1"           # PROMP
export COLOR_08="#D3D7CF"           #

export COLOR_09="#555753"           #
export COLOR_10="#EA6966"           # COMMAND_ERROR
export COLOR_11="#50E9B7"           # EXEC
export COLOR_12="#EEF6B5"           #
export COLOR_13="#759ECD"           # FOLDER
export COLOR_14="#AC7FA7"           #
export COLOR_15="#47E1E1"           #
export COLOR_16="#EEEEEC"           #

export BACKGROUND_COLOR="#292B2E"   # Background Color
export FOREGROUND_COLOR="#D4D4D4"   # Text
export CURSOR_COLOR="$FOREGROUND_COLOR" # Cursor
export PROFILE_NAME="ryang"
# =============================================================== #







# =============================================================== #
# | Apply Colors
# ===============================================================|#
SCRIPT_PATH="${SCRIPT_PATH:-$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)}"
PARENT_PATH="$(dirname "${SCRIPT_PATH}")"

# Allow developer to change url to forked url for easier testing
# IMPORTANT: Make sure you export this variable if your main shell is not bash
BASE_URL=${BASE_URL:-"https://raw.githubusercontent.com/Mayccoll/Gogh/master"}


if [[ -e "${PARENT_PATH}/apply-colors.sh" ]]; then
  bash "${PARENT_PATH}/apply-colors.sh"
else
  if [[ "$(uname)" = "Darwin" ]]; then
    # OSX ships with curl and ancient bash
    bash -c "$(curl -so- "${BASE_URL}/apply-colors.sh")"
  else
    # Linux ships with wget
    bash -c "$(wget -qO- "${BASE_URL}/apply-colors.sh")"
  fi
fi
