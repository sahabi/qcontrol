
(cl:in-package :asdf)

(defsystem "quad_control-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Pose" :depends-on ("_package_Pose"))
    (:file "_package_Pose" :depends-on ("_package"))
    (:file "TrajArray" :depends-on ("_package_TrajArray"))
    (:file "_package_TrajArray" :depends-on ("_package"))
    (:file "Quaternion" :depends-on ("_package_Quaternion"))
    (:file "_package_Quaternion" :depends-on ("_package"))
    (:file "trajDataArray" :depends-on ("_package_trajDataArray"))
    (:file "_package_trajDataArray" :depends-on ("_package"))
    (:file "Vector3" :depends-on ("_package_Vector3"))
    (:file "_package_Vector3" :depends-on ("_package"))
    (:file "Point" :depends-on ("_package_Point"))
    (:file "_package_Point" :depends-on ("_package"))
    (:file "trajData" :depends-on ("_package_trajData"))
    (:file "_package_trajData" :depends-on ("_package"))
    (:file "Twist" :depends-on ("_package_Twist"))
    (:file "_package_Twist" :depends-on ("_package"))
  ))