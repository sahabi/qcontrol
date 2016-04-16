
(cl:in-package :asdf)

(defsystem "quad_control-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :quad_control-msg
)
  :components ((:file "_package")
    (:file "Traj" :depends-on ("_package_Traj"))
    (:file "_package_Traj" :depends-on ("_package"))
  ))