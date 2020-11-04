; Auto-generated. Do not edit!


(cl:in-package rsm_msgs-srv)


;//! \htmlinclude WaypointVisited-request.msg.html

(cl:defclass <WaypointVisited-request> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type cl:integer
    :initform 0))
)

(cl:defclass WaypointVisited-request (<WaypointVisited-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaypointVisited-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaypointVisited-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rsm_msgs-srv:<WaypointVisited-request> is deprecated: use rsm_msgs-srv:WaypointVisited-request instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <WaypointVisited-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rsm_msgs-srv:position-val is deprecated.  Use rsm_msgs-srv:position instead.")
  (position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaypointVisited-request>) ostream)
  "Serializes a message object of type '<WaypointVisited-request>"
  (cl:let* ((signed (cl:slot-value msg 'position)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaypointVisited-request>) istream)
  "Deserializes a message object of type '<WaypointVisited-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'position) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaypointVisited-request>)))
  "Returns string type for a service object of type '<WaypointVisited-request>"
  "rsm_msgs/WaypointVisitedRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointVisited-request)))
  "Returns string type for a service object of type 'WaypointVisited-request"
  "rsm_msgs/WaypointVisitedRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaypointVisited-request>)))
  "Returns md5sum for a message object of type '<WaypointVisited-request>"
  "3e07da95f3577b8955e235d4863c62b0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaypointVisited-request)))
  "Returns md5sum for a message object of type 'WaypointVisited-request"
  "3e07da95f3577b8955e235d4863c62b0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaypointVisited-request>)))
  "Returns full string definition for message of type '<WaypointVisited-request>"
  (cl:format cl:nil "int64 position                      # Position in array of unreachable waypoint~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaypointVisited-request)))
  "Returns full string definition for message of type 'WaypointVisited-request"
  (cl:format cl:nil "int64 position                      # Position in array of unreachable waypoint~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaypointVisited-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaypointVisited-request>))
  "Converts a ROS message object to a list"
  (cl:list 'WaypointVisited-request
    (cl:cons ':position (position msg))
))
;//! \htmlinclude WaypointVisited-response.msg.html

(cl:defclass <WaypointVisited-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass WaypointVisited-response (<WaypointVisited-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaypointVisited-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaypointVisited-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rsm_msgs-srv:<WaypointVisited-response> is deprecated: use rsm_msgs-srv:WaypointVisited-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <WaypointVisited-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rsm_msgs-srv:success-val is deprecated.  Use rsm_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <WaypointVisited-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rsm_msgs-srv:message-val is deprecated.  Use rsm_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaypointVisited-response>) ostream)
  "Serializes a message object of type '<WaypointVisited-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaypointVisited-response>) istream)
  "Deserializes a message object of type '<WaypointVisited-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaypointVisited-response>)))
  "Returns string type for a service object of type '<WaypointVisited-response>"
  "rsm_msgs/WaypointVisitedResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointVisited-response)))
  "Returns string type for a service object of type 'WaypointVisited-response"
  "rsm_msgs/WaypointVisitedResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaypointVisited-response>)))
  "Returns md5sum for a message object of type '<WaypointVisited-response>"
  "3e07da95f3577b8955e235d4863c62b0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaypointVisited-response)))
  "Returns md5sum for a message object of type 'WaypointVisited-response"
  "3e07da95f3577b8955e235d4863c62b0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaypointVisited-response>)))
  "Returns full string definition for message of type '<WaypointVisited-response>"
  (cl:format cl:nil "bool success                        # Indicate successful run of triggered service~%string message                      # Informational, e.g. for error messages~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaypointVisited-response)))
  "Returns full string definition for message of type 'WaypointVisited-response"
  (cl:format cl:nil "bool success                        # Indicate successful run of triggered service~%string message                      # Informational, e.g. for error messages~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaypointVisited-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaypointVisited-response>))
  "Converts a ROS message object to a list"
  (cl:list 'WaypointVisited-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'WaypointVisited)))
  'WaypointVisited-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'WaypointVisited)))
  'WaypointVisited-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointVisited)))
  "Returns string type for a service object of type '<WaypointVisited>"
  "rsm_msgs/WaypointVisited")