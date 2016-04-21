FILE(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../msg_gen"
  "../srv_gen"
  "../src/quad_control/msg"
  "../src/quad_control/srv"
  "CMakeFiles/ROSBUILD_genmsg_lisp"
  "../msg_gen/lisp/Pose.lisp"
  "../msg_gen/lisp/_package.lisp"
  "../msg_gen/lisp/_package_Pose.lisp"
  "../msg_gen/lisp/TrajArray.lisp"
  "../msg_gen/lisp/_package.lisp"
  "../msg_gen/lisp/_package_TrajArray.lisp"
  "../msg_gen/lisp/Quaternion.lisp"
  "../msg_gen/lisp/_package.lisp"
  "../msg_gen/lisp/_package_Quaternion.lisp"
  "../msg_gen/lisp/trajDataArray.lisp"
  "../msg_gen/lisp/_package.lisp"
  "../msg_gen/lisp/_package_trajDataArray.lisp"
  "../msg_gen/lisp/Vector3.lisp"
  "../msg_gen/lisp/_package.lisp"
  "../msg_gen/lisp/_package_Vector3.lisp"
  "../msg_gen/lisp/Point.lisp"
  "../msg_gen/lisp/_package.lisp"
  "../msg_gen/lisp/_package_Point.lisp"
  "../msg_gen/lisp/trajData.lisp"
  "../msg_gen/lisp/_package.lisp"
  "../msg_gen/lisp/_package_trajData.lisp"
  "../msg_gen/lisp/Twist.lisp"
  "../msg_gen/lisp/_package.lisp"
  "../msg_gen/lisp/_package_Twist.lisp"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_lisp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
