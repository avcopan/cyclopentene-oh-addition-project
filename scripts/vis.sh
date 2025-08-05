#!/usr/bin/env bash

WD=${INIT_CWD:-$(pwd)}
ARG=${1}

cd ${WD}
cat > vis.py << EOF
# %%
from pathlib import Path

import automol

geo_file = Path("${ARG}")
geos, comments = zip(
    *automol.geom.from_xyz_trajectory_string(geo_file.read_text()),
    strict=True,
)
automol.geom.display_trajectory(geos)
EOF
