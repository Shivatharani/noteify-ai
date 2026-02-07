#!/usr/bin/env bash
set -e

echo "Installing Python dependencies"
pip install -r requirements.txt

echo "Downloading Vosk model"
mkdir -p backend/models
cd backend/models

if [ ! -d "vosk-model-en-us-0.22" ]; then
  curl -L -o vosk.zip https://alphacephei.com/vosk/models/vosk-model-en-us-0.22.zip
  unzip vosk.zip
  rm vosk.zip
fi

echo "Build completed"
