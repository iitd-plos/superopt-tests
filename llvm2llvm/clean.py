import os
import subprocess
from pathlib import Path
import glob

cwd = Path('./')
test_dir = [name for name in os.listdir(cwd) if os.path.isdir(os.path.join(cwd, name))]

for test in test_dir:
    test_dir_path = cwd / test
    files = list(test_dir_path.glob('*.etfg')) + list(test_dir_path.glob('*.main')) + list(test_dir_path.glob('*.log')) + list(test_dir_path.glob('*.pr'))
    if (len(files)>0): print(f"$$$ Cleaning {test_dir_path} $$$")
    for f in files:
        print(f)
        os.remove(f)

