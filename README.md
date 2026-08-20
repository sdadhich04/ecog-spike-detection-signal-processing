# ECoG Spike Detection Signal Processing

Signal-processing notebook for detecting stimulation-evoked neural spiking activity from ECoG recordings. The workflow loads MATLAB-format recording data, applies band-pass filtering, detects spikes with robust thresholds, and visualizes spike timing and average firing rates across stimulation patterns.

This is post-course portfolio curation of coursework-derived analysis. The original course dataset is intentionally not bundled; place `ECoGData_AvailabletoStudents.mat` in the project root to run the notebook.

## Setup

```powershell
python -m venv .venv
.\.venv\Scripts\python.exe -m pip install -r requirements.txt
```

If you are using the local Codex runtime setup from this folder, launch Jupyter with:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File .\start_jupyter.ps1
```

Then open `ecog_spike_detection.ipynb`.

## Outputs

Running the notebook writes:

- `figures/raster_plot.png`
- `figures/average_firing_rate.png`
