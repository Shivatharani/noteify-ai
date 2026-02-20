# Noteify AI 🎓

Noteify AI is a professional full-stack application that generates structured lecture notes from audio and video inputs. By simply uploading a recording, the application extracts the audio, transcribes it into text, generates a concise summary, and creates a beautifully formatted PDF document.

## 🚀 Features

- **Multi-Format Support**: Accept audio (`.mp3`, `.wav`, `.m4a`, `.aac`) and video (`.mp4`, `.avi`, `.mov`, `.mkv`, `.webm`) files.
- **Audio Extraction**: Automatically separate audio tracks from video files via FFmpeg.
- **Speech-to-Text**: Offline, high-accuracy transcription powered by Vosk.
- **Intelligent Summarization**: Automatically reads the transcription and generates a summarized paragraph via custom summarizer component.
- **PDF Generation**: Outputs professional, easy-to-read PDF versions of the notes and summary.
- **Modern UI**: A responsive, stylish interface built with React, Tailwind CSS, and shadcn/ui.

## 💻 Tech Stack

- **Frontend**: 
  - React (managed by Vite)
  - Tailwind CSS for styling
  - shadcn/ui (Radix UI + Lucide React) for accessible and modern UI components
- **Backend**: 
  - FastAPI (Python) for robust and quick API development
  - Vosk for offline Speech-to-Text
  - FFmpeg & Pydub for audio processing
  - ReportLab for PDF generation

## 📋 Prerequisites

Before running the project locally, please ensure you have the following installed:

1. **Python 3.8+**
2. **Node.js 18+**
3. **FFmpeg**: Must be installed on your system and added to your environment's PATH. ([Download FFmpeg](https://ffmpeg.org/download.html))
4. **Vosk Language Model**: 
   - Download the Vosk English model (e.g., `vosk-model-en-us-0.22`) from the [Vosk Models Page](https://alphacephei.com/vosk/models).
   - Extract and place the model folder inside `backend/models/`. Keep the folder name strictly as `vosk-model-en-us-0.22` (or update `MODEL_PATH` in `backend/services/speech_to_text.py` accordingly).

## 🛠️ Installation & Setup

### 1. Clone the Repository

```bash
git clone https://github.com/Shivatharani/noteify-ai.git
cd noteify-ai
```

### 2. Backend Setup

Open a new terminal and navigate to the `backend` folder:

```bash
cd backend
```

Create a virtual environment and activate it:

**On Windows:**
```bash
python -m venv venv
venv\Scripts\activate
```

**On macOS / Linux:**
```bash
python3 -m venv venv
source venv/bin/activate
```

Install the required Python dependencies:
```bash
pip install -r requirements.txt
```

Ensure your Vosk model is in `backend/models/vosk-model-en-us-0.22`.

Start the FastAPI server:
```bash
uvicorn main:app --reload
```
The backend API should now be running at `http://localhost:8000`.

### 3. Frontend Setup

Open another terminal and navigate to the `frontend` directory:

```bash
cd frontend
```

Install the Node.js dependencies:
```bash
npm install
```

Start the Vite development server:
```bash
npm run dev
```
The frontend should now be running at `http://localhost:5173`. (Or the port shown in your terminal).

## 📖 How to Use

1. Access the frontend application URL in your browser.
2. Upload a supported audio or video file.
3. Wait for Noteify AI to extract audio, transcribe the content, and generate the summary.
4. Download the finalized PDF with neatly structured notes!
