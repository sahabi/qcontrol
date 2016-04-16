; Auto-generated. Do not edit!


(cl:in-package quad_control-msg)


;//! \htmlinclude trajDataArray.msg.html

(cl:defclass <trajDataArray> (roslisp-msg-protocol:ros-message)
  ((trajectory
    :reader trajectory
    :initarg :trajectory
    :type (cl:vector quad_control-msg:trajData)
   :initform (cl:make-array 0 :element-type 'quad_control-msg:trajData :initial-element (cl:make-instance 'quad_control-msg:trajData))))
)

(cl:defclass trajDataArray (<trajDataArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <trajDataArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'trajDataArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name quad_control-msg:<trajDataArray> is deprecated: use quad_control-msg:trajDataArray instead.")))

(cl:ensure-generic-function 'trajectory-val :lambda-list '(m))
(cl:defmethod trajectory-val ((m <trajDataArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_control-msg:trajectory-val is deprecated.  Use quad_control-msg:trajectory instead.")
  (trajectory m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <trajDataArray>) ostream)
  "Serializes a message object of type '<trajDataArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'trajectory))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'trajectory))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <trajDataArray>) istream)
  "Deserializes a message object of type '<trajDataArray>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<trajDataArray>)))
  "Returns string type for a message object of type '<trajDataArray>"
  "quad_control/trajDataArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'trajDataArray)))
  "Returns string type for a message object of type 'trajDataArray"
  "quad_control/trajDataArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<trajDataArray>)))
  "Returns md5sum for a message object of type '<trajDataArray>"
  "6800fddd4bf810897f1a5feb2ba6d4b2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'trajDataArray)))
  "Returns md5sum for a message object of type 'trajDataArray"
  "6800fddd4bf810897f1a5feb2ba6d4b2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<trajDataArray>)))
  "Returns full string definition for message of type '<trajDataArray>"
  (cl:format cl:nil "trajData[] trajectory~%================================================================================~%MSG: quad_control/trajData~%float32 time~%float32 position~%float32 velocity~%float32 acceleration~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'trajDataArray)))
  "Returns full string definition for message of type 'trajDataArray"
  (cl:format cl:nil "trajData[] trajectory~%================================================================================~%MSG: quad_control/trajData~%float32 time~%float32 position~%float32 velocity~%float32 acceleration~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <trajDataArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'trajectory) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <trajDataArray>))
  "Converts a ROS message object to a list"
  (cl:list 'trajDataArray
    (cl:cons ':trajectory (trajectory msg))
))
