; Auto-generated. Do not edit!


(cl:in-package quad_control-msg)


;//! \htmlinclude TrajArray.msg.html

(cl:defclass <TrajArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (velocity
    :reader velocity
    :initarg :velocity
    :type (cl:vector quad_control-msg:Twist)
   :initform (cl:make-array 0 :element-type 'quad_control-msg:Twist :initial-element (cl:make-instance 'quad_control-msg:Twist)))
   (acceleration
    :reader acceleration
    :initarg :acceleration
    :type (cl:vector quad_control-msg:Wrench)
   :initform (cl:make-array 0 :element-type 'quad_control-msg:Wrench :initial-element (cl:make-instance 'quad_control-msg:Wrench)))
   (time
    :reader time
    :initarg :time
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (position
    :reader position
    :initarg :position
    :type (cl:vector quad_control-msg:Pose)
   :initform (cl:make-array 0 :element-type 'quad_control-msg:Pose :initial-element (cl:make-instance 'quad_control-msg:Pose))))
)

(cl:defclass TrajArray (<TrajArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrajArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrajArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name quad_control-msg:<TrajArray> is deprecated: use quad_control-msg:TrajArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TrajArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_control-msg:header-val is deprecated.  Use quad_control-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <TrajArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_control-msg:velocity-val is deprecated.  Use quad_control-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'acceleration-val :lambda-list '(m))
(cl:defmethod acceleration-val ((m <TrajArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_control-msg:acceleration-val is deprecated.  Use quad_control-msg:acceleration instead.")
  (acceleration m))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <TrajArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_control-msg:time-val is deprecated.  Use quad_control-msg:time instead.")
  (time m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <TrajArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_control-msg:position-val is deprecated.  Use quad_control-msg:position instead.")
  (position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrajArray>) ostream)
  "Serializes a message object of type '<TrajArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'velocity))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'acceleration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'acceleration))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'time))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'position))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrajArray>) istream)
  "Deserializes a message object of type '<TrajArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'velocity) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'velocity)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'quad_control-msg:Twist))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'acceleration) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'acceleration)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'quad_control-msg:Wrench))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'time) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'time)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'position) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'position)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'quad_control-msg:Pose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrajArray>)))
  "Returns string type for a message object of type '<TrajArray>"
  "quad_control/TrajArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrajArray)))
  "Returns string type for a message object of type 'TrajArray"
  "quad_control/TrajArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrajArray>)))
  "Returns md5sum for a message object of type '<TrajArray>"
  "99f24457a2c25ec6098a54c362a36262")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrajArray)))
  "Returns md5sum for a message object of type 'TrajArray"
  "99f24457a2c25ec6098a54c362a36262")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrajArray>)))
  "Returns full string definition for message of type '<TrajArray>"
  (cl:format cl:nil "Header header~%Twist[] velocity~%Wrench[] acceleration~%float64[] time~%Pose[] position~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: quad_control/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%================================================================================~%MSG: quad_control/Vector3~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: quad_control/Wrench~%Vector3  force~%Vector3  torque~%================================================================================~%MSG: quad_control/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%================================================================================~%MSG: quad_control/Point~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: quad_control/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrajArray)))
  "Returns full string definition for message of type 'TrajArray"
  (cl:format cl:nil "Header header~%Twist[] velocity~%Wrench[] acceleration~%float64[] time~%Pose[] position~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: quad_control/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%================================================================================~%MSG: quad_control/Vector3~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: quad_control/Wrench~%Vector3  force~%Vector3  torque~%================================================================================~%MSG: quad_control/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%================================================================================~%MSG: quad_control/Point~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: quad_control/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrajArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'velocity) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'acceleration) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'time) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'position) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrajArray>))
  "Converts a ROS message object to a list"
  (cl:list 'TrajArray
    (cl:cons ':header (header msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':acceleration (acceleration msg))
    (cl:cons ':time (time msg))
    (cl:cons ':position (position msg))
))
