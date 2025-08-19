#!/bin/zsh

PROJECT_DIR=${HOME}/Projects/Laravel/stayguide

# Start a new kitty tab
kitty @ launch --type=tab --title "StayGuideProc" \
  --cwd "$PROJECT_DIR"

# Launch Vite (first panel)
kitty @ launch --type=window \
  --cwd "$PROJECT_DIR" \
  --title "StayGuideProc1" \
  --keep-focus \
zsh -ic '
  echo "Starting Vite...";
  while true; do
    doppler run -p stayguide -c dev -- npm run dev
    echo "";
    echo "=== Vite exited. Press ENTER to restart or Ctrl+C to quit ===";
    read
  done'

# Launch Laravel (second panel)
kitty @ launch --type=window \
  --cwd "$PROJECT_DIR" \
  --match title:StayGuideProc \
  --title "StayGuideProc" \
  zsh -ic '
  echo "Starting Laravel server...";
  while true; do
    doppler run -p stayguide -c dev -- php artisan serve
    echo "";
    echo "=== Laravel exited. Press ENTER to restart or Ctrl+C to quit ===";
    read
  done'

kitty @ launch --type=tab --title "StayGuideVim" \
  --cwd "$PROJECT_DIR" \
 zsh -ic 'nvim; echo ""; echo "=== Vim exited. You are now in the shell. ==="; exec zsh'
