FILE(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../msg_gen"
  "../srv_gen"
  "../src/quad_control/msg"
  "../src/quad_control/srv"
  "CMakeFiles/ROSBUILD_gensrv_py"
  "../src/quad_control/srv/__init__.py"
  "../src/quad_control/srv/_Traj.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_gensrv_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
