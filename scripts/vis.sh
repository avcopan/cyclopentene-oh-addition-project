#!/usr/bin/env bash

WD=${INIT_CWD:-$(pwd)}
ARG=${1}

cd ${WD}
cat > vis.py << EOF
# %%
from pathlib import Path

import automol

geo = automol.geom.from_xyz_string(Path("${ARG}").read_text())
automol.geom.display(geo)
EOF
