; Auto-generated. Do not edit!


(cl:in-package quad_control-msg)


;//! \htmlinclude trajData.msg.html

(cl:defclass <trajData> (roslisp-msg-protocol:ros-message)
  ((time
    :reader time
    :initarg :time
    :type cl:float
    :initform 0.0)
   (position
    :reader position
    :initarg :position
    :type cl:float
    :initform 0.0)
   (velocity
    :reader velocity
    :initarg :velocity
    :type cl:float
    :initform 0.0)
   (acceleration
    :reader acceleration
    :initarg :acceleration
    :type cl:float
    :initform 0.0))
)

(cl:defclass trajData (<trajData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <trajData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'trajData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name quad_control-msg:<trajData> is deprecated: use quad_control-msg:trajData instead.")))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <trajData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_control-msg:time-val is deprecated.  Use quad_control-msg:time instead.")
  (time m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <trajData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_control-msg:position-val is deprecated.  Use quad_control-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <trajData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_control-msg:velocity-val is deprecated.  Use quad_control-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'acceleration-val :lambda-list '(m))
(cl:defmethod acceleration-val ((m <trajData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_control-msg:acceleration-val is deprecated.  Use quad_control-msg:acceleration instead.")
  (acceleration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <trajData>) ostream)
  "Serializes a message object of type '<trajData>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'acceleration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <trajData>) istream)
  "Deserializes a message object of type '<trajData>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'acceleration) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<trajData>)))
  "Returns string type for a message object of type '<trajData>"
  "quad_control/trajData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'trajData)))
  "Returns string type for a message object of type 'trajData"
  "quad_control/trajData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<trajData>)))
  "Returns md5sum for a message object of type '<trajData>"
  "1566d8b3c3f4d4ccd8818fec810e6523")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'trajData)))
  "Returns md5sum for a message object of type 'trajData"
  "1566d8b3c3f4d4ccd8818fec810e6523")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<trajData>)))
  "Returns full string definition for message of type '<trajData>"
  (cl:format cl:nil "float32 time~%float32 position~%float32 velocity~%float32 acceleration~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'trajData)))
  "Returns full string definition for message of type 'trajData"
  (cl:format cl:nil "float32 time~%float32 position~%float32 velocity~%float32 acceleration~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <trajData>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <trajData>))
  "Converts a ROS message object to a list"
  (cl:list 'trajData
    (cl:cons ':time (time msg))
    (cl:cons ':position (position msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':acceleration (acceleration msg))
))
