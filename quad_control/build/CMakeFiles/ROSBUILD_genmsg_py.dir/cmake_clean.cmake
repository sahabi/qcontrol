FILE(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../msg_gen"
  "../srv_gen"
  "../src/quad_control/msg"
  "../src/quad_control/srv"
  "CMakeFiles/ROSBUILD_genmsg_py"
  "../src/quad_control/msg/__init__.py"
  "../src/quad_control/msg/_Pose.py"
  "../src/quad_control/msg/_TrajArray.py"
  "../src/quad_control/msg/_Quaternion.py"
  "../src/quad_control/msg/_trajDataArray.py"
  "../src/quad_control/msg/_Vector3.py"
  "../src/quad_control/msg/_Point.py"
  "../src/quad_control/msg/_trajData.py"
  "../src/quad_control/msg/_Wrench.py"
  "../src/quad_control/msg/_Twist.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
