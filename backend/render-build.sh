#!/usr/bin/env bash
set -e

echo "Installing Python dependencies..."
pip install --upgrade pip
pip install -r requirements.txt

echo "Downloading Vosk model..."
mkdir -p models
cd models

if [ ! -d "vosk-model-en-us-0.22" ]; then
  curl -L -o vosk-model.zip https://alphacephei.com/vosk/models/vosk-model-en-us-0.22.zip
  unzip vosk-model.zip
  rm vosk-model.zip
fi

echo "Vosk model ready"
