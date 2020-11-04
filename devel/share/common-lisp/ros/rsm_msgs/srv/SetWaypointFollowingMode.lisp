; Auto-generated. Do not edit!


(cl:in-package rsm_msgs-srv)


;//! \htmlinclude SetWaypointFollowingMode-request.msg.html

(cl:defclass <SetWaypointFollowingMode-request> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0)
   (reverse
    :reader reverse
    :initarg :reverse
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetWaypointFollowingMode-request (<SetWaypointFollowingMode-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetWaypointFollowingMode-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetWaypointFollowingMode-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rsm_msgs-srv:<SetWaypointFollowingMode-request> is deprecated: use rsm_msgs-srv:SetWaypointFollowingMode-request instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <SetWaypointFollowingMode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rsm_msgs-srv:mode-val is deprecated.  Use rsm_msgs-srv:mode instead.")
  (mode m))

(cl:ensure-generic-function 'reverse-val :lambda-list '(m))
(cl:defmethod reverse-val ((m <SetWaypointFollowingMode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rsm_msgs-srv:reverse-val is deprecated.  Use rsm_msgs-srv:reverse instead.")
  (reverse m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetWaypointFollowingMode-request>) ostream)
  "Serializes a message object of type '<SetWaypointFollowingMode-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reverse) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetWaypointFollowingMode-request>) istream)
  "Deserializes a message object of type '<SetWaypointFollowingMode-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'reverse) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetWaypointFollowingMode-request>)))
  "Returns string type for a service object of type '<SetWaypointFollowingMode-request>"
  "rsm_msgs/SetWaypointFollowingModeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetWaypointFollowingMode-request)))
  "Returns string type for a service object of type 'SetWaypointFollowingMode-request"
  "rsm_msgs/SetWaypointFollowingModeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetWaypointFollowingMode-request>)))
  "Returns md5sum for a message object of type '<SetWaypointFollowingMode-request>"
  "0d60594389c7f5a48533157b5965fc0d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetWaypointFollowingMode-request)))
  "Returns md5sum for a message object of type 'SetWaypointFollowingMode-request"
  "0d60594389c7f5a48533157b5965fc0d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetWaypointFollowingMode-request>)))
  "Returns full string definition for message of type '<SetWaypointFollowingMode-request>"
  (cl:format cl:nil "uint8 mode							# Waypoint following mode~%bool reverse						# Driving from start to end (=false) or end to start (=true)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetWaypointFollowingMode-request)))
  "Returns full string definition for message of type 'SetWaypointFollowingMode-request"
  (cl:format cl:nil "uint8 mode							# Waypoint following mode~%bool reverse						# Driving from start to end (=false) or end to start (=true)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetWaypointFollowingMode-request>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetWaypointFollowingMode-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetWaypointFollowingMode-request
    (cl:cons ':mode (mode msg))
    (cl:cons ':reverse (reverse msg))
))
;//! \htmlinclude SetWaypointFollowingMode-response.msg.html

(cl:defclass <SetWaypointFollowingMode-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass SetWaypointFollowingMode-response (<SetWaypointFollowingMode-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetWaypointFollowingMode-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetWaypointFollowingMode-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rsm_msgs-srv:<SetWaypointFollowingMode-response> is deprecated: use rsm_msgs-srv:SetWaypointFollowingMode-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetWaypointFollowingMode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rsm_msgs-srv:success-val is deprecated.  Use rsm_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetWaypointFollowingMode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rsm_msgs-srv:message-val is deprecated.  Use rsm_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetWaypointFollowingMode-response>) ostream)
  "Serializes a message object of type '<SetWaypointFollowingMode-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetWaypointFollowingMode-response>) istream)
  "Deserializes a message object of type '<SetWaypointFollowingMode-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetWaypointFollowingMode-response>)))
  "Returns string type for a service object of type '<SetWaypointFollowingMode-response>"
  "rsm_msgs/SetWaypointFollowingModeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetWaypointFollowingMode-response)))
  "Returns string type for a service object of type 'SetWaypointFollowingMode-response"
  "rsm_msgs/SetWaypointFollowingModeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetWaypointFollowingMode-response>)))
  "Returns md5sum for a message object of type '<SetWaypointFollowingMode-response>"
  "0d60594389c7f5a48533157b5965fc0d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetWaypointFollowingMode-response)))
  "Returns md5sum for a message object of type 'SetWaypointFollowingMode-response"
  "0d60594389c7f5a48533157b5965fc0d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetWaypointFollowingMode-response>)))
  "Returns full string definition for message of type '<SetWaypointFollowingMode-response>"
  (cl:format cl:nil "bool success                        # Indicate successful run of triggered service~%string message                      # Informational, e.g. for error messages~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetWaypointFollowingMode-response)))
  "Returns full string definition for message of type 'SetWaypointFollowingMode-response"
  (cl:format cl:nil "bool success                        # Indicate successful run of triggered service~%string message                      # Informational, e.g. for error messages~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetWaypointFollowingMode-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetWaypointFollowingMode-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetWaypointFollowingMode-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetWaypointFollowingMode)))
  'SetWaypointFollowingMode-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetWaypointFollowingMode)))
  'SetWaypointFollowingMode-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetWaypointFollowingMode)))
  "Returns string type for a service object of type '<SetWaypointFollowingMode>"
  "rsm_msgs/SetWaypointFollowingMode")