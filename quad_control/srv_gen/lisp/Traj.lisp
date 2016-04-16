; Auto-generated. Do not edit!


(cl:in-package quad_control-srv)


;//! \htmlinclude Traj-request.msg.html

(cl:defclass <Traj-request> (roslisp-msg-protocol:ros-message)
  ((init_pos
    :reader init_pos
    :initarg :init_pos
    :type cl:float
    :initform 0.0)
   (final_pos
    :reader final_pos
    :initarg :final_pos
    :type cl:float
    :initform 0.0)
   (init_vel
    :reader init_vel
    :initarg :init_vel
    :type cl:float
    :initform 0.0)
   (final_vel
    :reader final_vel
    :initarg :final_vel
    :type cl:float
    :initform 0.0)
   (init_acc
    :reader init_acc
    :initarg :init_acc
    :type cl:float
    :initform 0.0)
   (final_acc
    :reader final_acc
    :initarg :final_acc
    :type cl:float
    :initform 0.0)
   (init_time
    :reader init_time
    :initarg :init_time
    :type cl:float
    :initform 0.0)
   (final_time
    :reader final_time
    :initarg :final_time
    :type cl:float
    :initform 0.0)
   (sampling_rate
    :reader sampling_rate
    :initarg :sampling_rate
    :type cl:float
    :initform 0.0))
)

(cl:defclass Traj-request (<Traj-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Traj-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Traj-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name quad_control-srv:<Traj-request> is deprecated: use quad_control-srv:Traj-request instead.")))

(cl:ensure-generic-function 'init_pos-val :lambda-list '(m))
(cl:defmethod init_pos-val ((m <Traj-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_control-srv:init_pos-val is deprecated.  Use quad_control-srv:init_pos instead.")
  (init_pos m))

(cl:ensure-generic-function 'final_pos-val :lambda-list '(m))
(cl:defmethod final_pos-val ((m <Traj-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_control-srv:final_pos-val is deprecated.  Use quad_control-srv:final_pos instead.")
  (final_pos m))

(cl:ensure-generic-function 'init_vel-val :lambda-list '(m))
(cl:defmethod init_vel-val ((m <Traj-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_control-srv:init_vel-val is deprecated.  Use quad_control-srv:init_vel instead.")
  (init_vel m))

(cl:ensure-generic-function 'final_vel-val :lambda-list '(m))
(cl:defmethod final_vel-val ((m <Traj-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_control-srv:final_vel-val is deprecated.  Use quad_control-srv:final_vel instead.")
  (final_vel m))

(cl:ensure-generic-function 'init_acc-val :lambda-list '(m))
(cl:defmethod init_acc-val ((m <Traj-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_control-srv:init_acc-val is deprecated.  Use quad_control-srv:init_acc instead.")
  (init_acc m))

(cl:ensure-generic-function 'final_acc-val :lambda-list '(m))
(cl:defmethod final_acc-val ((m <Traj-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_control-srv:final_acc-val is deprecated.  Use quad_control-srv:final_acc instead.")
  (final_acc m))

(cl:ensure-generic-function 'init_time-val :lambda-list '(m))
(cl:defmethod init_time-val ((m <Traj-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_control-srv:init_time-val is deprecated.  Use quad_control-srv:init_time instead.")
  (init_time m))

(cl:ensure-generic-function 'final_time-val :lambda-list '(m))
(cl:defmethod final_time-val ((m <Traj-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_control-srv:final_time-val is deprecated.  Use quad_control-srv:final_time instead.")
  (final_time m))

(cl:ensure-generic-function 'sampling_rate-val :lambda-list '(m))
(cl:defmethod sampling_rate-val ((m <Traj-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_control-srv:sampling_rate-val is deprecated.  Use quad_control-srv:sampling_rate instead.")
  (sampling_rate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Traj-request>) ostream)
  "Serializes a message object of type '<Traj-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'init_pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'final_pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'init_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'final_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'init_acc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'final_acc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'init_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'final_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'sampling_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Traj-request>) istream)
  "Deserializes a message object of type '<Traj-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'init_pos) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'final_pos) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'init_vel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'final_vel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'init_acc) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'final_acc) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'init_time) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'final_time) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sampling_rate) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Traj-request>)))
  "Returns string type for a service object of type '<Traj-request>"
  "quad_control/TrajRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Traj-request)))
  "Returns string type for a service object of type 'Traj-request"
  "quad_control/TrajRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Traj-request>)))
  "Returns md5sum for a message object of type '<Traj-request>"
  "b34c5671dcf19005ee626e993664b8b1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Traj-request)))
  "Returns md5sum for a message object of type 'Traj-request"
  "b34c5671dcf19005ee626e993664b8b1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Traj-request>)))
  "Returns full string definition for message of type '<Traj-request>"
  (cl:format cl:nil "float32 init_pos~%float32 final_pos~%float32 init_vel~%float32 final_vel~%float32 init_acc~%float32 final_acc~%float32 init_time~%float32 final_time~%float32 sampling_rate~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Traj-request)))
  "Returns full string definition for message of type 'Traj-request"
  (cl:format cl:nil "float32 init_pos~%float32 final_pos~%float32 init_vel~%float32 final_vel~%float32 init_acc~%float32 final_acc~%float32 init_time~%float32 final_time~%float32 sampling_rate~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Traj-request>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Traj-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Traj-request
    (cl:cons ':init_pos (init_pos msg))
    (cl:cons ':final_pos (final_pos msg))
    (cl:cons ':init_vel (init_vel msg))
    (cl:cons ':final_vel (final_vel msg))
    (cl:cons ':init_acc (init_acc msg))
    (cl:cons ':final_acc (final_acc msg))
    (cl:cons ':init_time (init_time msg))
    (cl:cons ':final_time (final_time msg))
    (cl:cons ':sampling_rate (sampling_rate msg))
))
;//! \htmlinclude Traj-response.msg.html

(cl:defclass <Traj-response> (roslisp-msg-protocol:ros-message)
  ((trajectory
    :reader trajectory
    :initarg :trajectory
    :type (cl:vector quad_control-msg:trajData)
   :initform (cl:make-array 0 :element-type 'quad_control-msg:trajData :initial-element (cl:make-instance 'quad_control-msg:trajData))))
)

(cl:defclass Traj-response (<Traj-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Traj-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Traj-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name quad_control-srv:<Traj-response> is deprecated: use quad_control-srv:Traj-response instead.")))

(cl:ensure-generic-function 'trajectory-val :lambda-list '(m))
(cl:defmethod trajectory-val ((m <Traj-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_control-srv:trajectory-val is deprecated.  Use quad_control-srv:trajectory instead.")
  (trajectory m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Traj-response>) ostream)
  "Serializes a message object of type '<Traj-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'trajectory))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'trajectory))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Traj-response>) istream)
  "Deserializes a message object of type '<Traj-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'trajectory) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'trajectory)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'quad_control-msg:trajData))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Traj-response>)))
  "Returns string type for a service object of type '<Traj-response>"
  "quad_control/TrajResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Traj-response)))
  "Returns string type for a service object of type 'Traj-response"
  "quad_control/TrajResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Traj-response>)))
  "Returns md5sum for a message object of type '<Traj-response>"
  "b34c5671dcf19005ee626e993664b8b1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Traj-response)))
  "Returns md5sum for a message object of type 'Traj-response"
  "b34c5671dcf19005ee626e993664b8b1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Traj-response>)))
  "Returns full string definition for message of type '<Traj-response>"
  (cl:format cl:nil "trajData[] trajectory~%~%================================================================================~%MSG: quad_control/trajData~%float32 time~%float32 position~%float32 velocity~%float32 acceleration~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Traj-response)))
  "Returns full string definition for message of type 'Traj-response"
  (cl:format cl:nil "trajData[] trajectory~%~%================================================================================~%MSG: quad_control/trajData~%float32 time~%float32 position~%float32 velocity~%float32 acceleration~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Traj-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'trajectory) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Traj-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Traj-response
    (cl:cons ':trajectory (trajectory msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Traj)))
  'Traj-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Traj)))
  'Traj-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Traj)))
  "Returns string type for a service object of type '<Traj>"
  "quad_control/Traj")