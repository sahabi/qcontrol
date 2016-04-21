FILE(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../msg_gen"
  "../srv_gen"
  "../src/quad_control/msg"
  "../src/quad_control/srv"
  "CMakeFiles/ROSBUILD_genmsg_cpp"
  "../msg_gen/cpp/include/quad_control/Pose.h"
  "../msg_gen/cpp/include/quad_control/TrajArray.h"
  "../msg_gen/cpp/include/quad_control/Quaternion.h"
  "../msg_gen/cpp/include/quad_control/trajDataArray.h"
  "../msg_gen/cpp/include/quad_control/Vector3.h"
  "../msg_gen/cpp/include/quad_control/Point.h"
  "../msg_gen/cpp/include/quad_control/trajData.h"
  "../msg_gen/cpp/include/quad_control/Twist.h"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_cpp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
