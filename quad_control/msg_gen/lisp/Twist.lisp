; Auto-generated. Do not edit!


(cl:in-package quad_control-msg)


;//! \htmlinclude Twist.msg.html

(cl:defclass <Twist> (roslisp-msg-protocol:ros-message)
  ((linear
    :reader linear
    :initarg :linear
    :type quad_control-msg:Vector3
    :initform (cl:make-instance 'quad_control-msg:Vector3))
   (angular
    :reader angular
    :initarg :angular
    :type quad_control-msg:Vector3
    :initform (cl:make-instance 'quad_control-msg:Vector3)))
)

(cl:defclass Twist (<Twist>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Twist>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Twist)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name quad_control-msg:<Twist> is deprecated: use quad_control-msg:Twist instead.")))

(cl:ensure-generic-function 'linear-val :lambda-list '(m))
(cl:defmethod linear-val ((m <Twist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_control-msg:linear-val is deprecated.  Use quad_control-msg:linear instead.")
  (linear m))

(cl:ensure-generic-function 'angular-val :lambda-list '(m))
(cl:defmethod angular-val ((m <Twist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_control-msg:angular-val is deprecated.  Use quad_control-msg:angular instead.")
  (angular m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Twist>) ostream)
  "Serializes a message object of type '<Twist>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'linear) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angular) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Twist>) istream)
  "Deserializes a message object of type '<Twist>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'linear) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angular) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Twist>)))
  "Returns string type for a message object of type '<Twist>"
  "quad_control/Twist")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Twist)))
  "Returns string type for a message object of type 'Twist"
  "quad_control/Twist")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Twist>)))
  "Returns md5sum for a message object of type '<Twist>"
  "9f195f881246fdfa2798d1d3eebca84a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Twist)))
  "Returns md5sum for a message object of type 'Twist"
  "9f195f881246fdfa2798d1d3eebca84a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Twist>)))
  "Returns full string definition for message of type '<Twist>"
  (cl:format cl:nil "# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%================================================================================~%MSG: quad_control/Vector3~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Twist)))
  "Returns full string definition for message of type 'Twist"
  (cl:format cl:nil "# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%================================================================================~%MSG: quad_control/Vector3~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Twist>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'linear))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angular))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Twist>))
  "Converts a ROS message object to a list"
  (cl:list 'Twist
    (cl:cons ':linear (linear msg))
    (cl:cons ':angular (angular msg))
))
