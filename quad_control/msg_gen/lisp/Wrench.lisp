; Auto-generated. Do not edit!


(cl:in-package quad_control-msg)


;//! \htmlinclude Wrench.msg.html

(cl:defclass <Wrench> (roslisp-msg-protocol:ros-message)
  ((force
    :reader force
    :initarg :force
    :type quad_control-msg:Vector3
    :initform (cl:make-instance 'quad_control-msg:Vector3))
   (torque
    :reader torque
    :initarg :torque
    :type quad_control-msg:Vector3
    :initform (cl:make-instance 'quad_control-msg:Vector3)))
)

(cl:defclass Wrench (<Wrench>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Wrench>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Wrench)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name quad_control-msg:<Wrench> is deprecated: use quad_control-msg:Wrench instead.")))

(cl:ensure-generic-function 'force-val :lambda-list '(m))
(cl:defmethod force-val ((m <Wrench>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_control-msg:force-val is deprecated.  Use quad_control-msg:force instead.")
  (force m))

(cl:ensure-generic-function 'torque-val :lambda-list '(m))
(cl:defmethod torque-val ((m <Wrench>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_control-msg:torque-val is deprecated.  Use quad_control-msg:torque instead.")
  (torque m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Wrench>) ostream)
  "Serializes a message object of type '<Wrench>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'force) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'torque) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Wrench>) istream)
  "Deserializes a message object of type '<Wrench>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'force) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'torque) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Wrench>)))
  "Returns string type for a message object of type '<Wrench>"
  "quad_control/Wrench")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Wrench)))
  "Returns string type for a message object of type 'Wrench"
  "quad_control/Wrench")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Wrench>)))
  "Returns md5sum for a message object of type '<Wrench>"
  "4f539cf138b23283b520fd271b567936")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Wrench)))
  "Returns md5sum for a message object of type 'Wrench"
  "4f539cf138b23283b520fd271b567936")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Wrench>)))
  "Returns full string definition for message of type '<Wrench>"
  (cl:format cl:nil "Vector3  force~%Vector3  torque~%================================================================================~%MSG: quad_control/Vector3~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Wrench)))
  "Returns full string definition for message of type 'Wrench"
  (cl:format cl:nil "Vector3  force~%Vector3  torque~%================================================================================~%MSG: quad_control/Vector3~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Wrench>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'force))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'torque))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Wrench>))
  "Converts a ROS message object to a list"
  (cl:list 'Wrench
    (cl:cons ':force (force msg))
    (cl:cons ':torque (torque msg))
))
