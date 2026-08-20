$ProjectRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$env:JUPYTER_DATA_DIR = Join-Path $ProjectRoot ".jupyter\data"
$env:JUPYTER_CONFIG_DIR = Join-Path $ProjectRoot ".jupyter\config"
$env:JUPYTER_RUNTIME_DIR = Join-Path $ProjectRoot ".jupyter\runtime"
$env:IPYTHONDIR = Join-Path $ProjectRoot ".ipython"

& (Join-Path $ProjectRoot ".venv\Scripts\python.exe") -m notebook --no-browser --ip=127.0.0.1 --port=8888 --notebook-dir="$ProjectRoot"
