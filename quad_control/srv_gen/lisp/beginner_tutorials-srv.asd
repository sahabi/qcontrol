
(cl:in-package :asdf)

(defsystem "beginner_tutorials-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :beginner_tutorials-msg
)
  :components ((:file "_package")
    (:file "Traj" :depends-on ("_package_Traj"))
    (:file "_package_Traj" :depends-on ("_package"))
  ))