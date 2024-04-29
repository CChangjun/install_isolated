; Auto-generated. Do not edit!


(cl:in-package dong_core-msg)


;//! \htmlinclude sensor.msg.html

(cl:defclass <sensor> (roslisp-msg-protocol:ros-message)
  ((left_encoder
    :reader left_encoder
    :initarg :left_encoder
    :type cl:float
    :initform 0.0)
   (right_encoder
    :reader right_encoder
    :initarg :right_encoder
    :type cl:float
    :initform 0.0)
   (yaw_angle
    :reader yaw_angle
    :initarg :yaw_angle
    :type cl:float
    :initform 0.0)
   (quest
    :reader quest
    :initarg :quest
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass sensor (<sensor>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <sensor>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'sensor)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dong_core-msg:<sensor> is deprecated: use dong_core-msg:sensor instead.")))

(cl:ensure-generic-function 'left_encoder-val :lambda-list '(m))
(cl:defmethod left_encoder-val ((m <sensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dong_core-msg:left_encoder-val is deprecated.  Use dong_core-msg:left_encoder instead.")
  (left_encoder m))

(cl:ensure-generic-function 'right_encoder-val :lambda-list '(m))
(cl:defmethod right_encoder-val ((m <sensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dong_core-msg:right_encoder-val is deprecated.  Use dong_core-msg:right_encoder instead.")
  (right_encoder m))

(cl:ensure-generic-function 'yaw_angle-val :lambda-list '(m))
(cl:defmethod yaw_angle-val ((m <sensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dong_core-msg:yaw_angle-val is deprecated.  Use dong_core-msg:yaw_angle instead.")
  (yaw_angle m))

(cl:ensure-generic-function 'quest-val :lambda-list '(m))
(cl:defmethod quest-val ((m <sensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dong_core-msg:quest-val is deprecated.  Use dong_core-msg:quest instead.")
  (quest m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <sensor>) ostream)
  "Serializes a message object of type '<sensor>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'left_encoder))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'right_encoder))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'yaw_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'quest) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <sensor>) istream)
  "Deserializes a message object of type '<sensor>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'left_encoder) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'right_encoder) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw_angle) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'quest) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<sensor>)))
  "Returns string type for a message object of type '<sensor>"
  "dong_core/sensor")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'sensor)))
  "Returns string type for a message object of type 'sensor"
  "dong_core/sensor")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<sensor>)))
  "Returns md5sum for a message object of type '<sensor>"
  "2e51394dd57ce1e429a6d473451795f5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'sensor)))
  "Returns md5sum for a message object of type 'sensor"
  "2e51394dd57ce1e429a6d473451795f5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<sensor>)))
  "Returns full string definition for message of type '<sensor>"
  (cl:format cl:nil "float64 left_encoder~%float64 right_encoder~%float64 yaw_angle~%~%bool quest~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'sensor)))
  "Returns full string definition for message of type 'sensor"
  (cl:format cl:nil "float64 left_encoder~%float64 right_encoder~%float64 yaw_angle~%~%bool quest~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <sensor>))
  (cl:+ 0
     8
     8
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <sensor>))
  "Converts a ROS message object to a list"
  (cl:list 'sensor
    (cl:cons ':left_encoder (left_encoder msg))
    (cl:cons ':right_encoder (right_encoder msg))
    (cl:cons ':yaw_angle (yaw_angle msg))
    (cl:cons ':quest (quest msg))
))
