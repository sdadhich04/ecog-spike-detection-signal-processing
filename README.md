# ECoG Spike Detection and Signal Processing

This repository contains a Python notebook for analyzing stimulation-aligned ECoG recordings stored in a MATLAB file. It is a coursework-derived analysis curated as a standalone project. The original dataset is not included.

## Pipeline

`ecog_spike_detection.ipynb`:

- loads `ECoGData_AvailabletoStudents.mat` and reads three signal arrays, their stimulation times, and the sampling frequency;
- band-pass filters each signal from 500 to 5000 Hz with a first-order Butterworth filter applied by `filtfilt`;
- uses the first 50 stimulation times per signal and extracts a window from 0.5 seconds before through 0.5 seconds after a 1.0-second stimulus;
- estimates noise as `median(abs(filtered)) / 0.6745`, detects peaks in the absolute filtered signal at `3 * sigma`, and enforces a 1 ms minimum peak separation;
- bins detected spikes into 20 ms intervals to compute per-trial firing-rate curves; and
- writes raster plots and mean firing-rate plots for the three signals to `figures/raster_plot.png` and `figures/average_firing_rate.png`.

## Tools and requirements

The project uses Python with NumPy, SciPy, Matplotlib, and Jupyter components listed in `requirements.txt`. The repository does not specify ECoG acquisition hardware.

## Run

Place `ECoGData_AvailabletoStudents.mat` in the project root, then create an environment and install dependencies:

```powershell
python -m venv .venv
.\.venv\Scripts\python.exe -m pip install -r requirements.txt
```

Launch Jupyter with the included script:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File .\start_jupyter.ps1
```

Open `ecog_spike_detection.ipynb` and run its cells. The launcher uses project-local Jupyter and IPython configuration directories and starts a notebook server at `127.0.0.1:8888`.

## Credits

The notebook is coursework-derived analysis by Sparsh Dadhich. The MATLAB dataset is intentionally excluded from this repository.
