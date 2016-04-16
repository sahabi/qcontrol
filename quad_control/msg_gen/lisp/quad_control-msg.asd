
(cl:in-package :asdf)

(defsystem "quad_control-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "trajDataArray" :depends-on ("_package_trajDataArray"))
    (:file "_package_trajDataArray" :depends-on ("_package"))
    (:file "trajData" :depends-on ("_package_trajData"))
    (:file "_package_trajData" :depends-on ("_package"))
  ))