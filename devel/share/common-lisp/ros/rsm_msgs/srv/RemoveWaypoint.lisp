; Auto-generated. Do not edit!


(cl:in-package rsm_msgs-srv)


;//! \htmlinclude RemoveWaypoint-request.msg.html

(cl:defclass <RemoveWaypoint-request> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type cl:integer
    :initform 0))
)

(cl:defclass RemoveWaypoint-request (<RemoveWaypoint-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RemoveWaypoint-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RemoveWaypoint-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rsm_msgs-srv:<RemoveWaypoint-request> is deprecated: use rsm_msgs-srv:RemoveWaypoint-request instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <RemoveWaypoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rsm_msgs-srv:position-val is deprecated.  Use rsm_msgs-srv:position instead.")
  (position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RemoveWaypoint-request>) ostream)
  "Serializes a message object of type '<RemoveWaypoint-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RemoveWaypoint-request>) istream)
  "Deserializes a message object of type '<RemoveWaypoint-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RemoveWaypoint-request>)))
  "Returns string type for a service object of type '<RemoveWaypoint-request>"
  "rsm_msgs/RemoveWaypointRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RemoveWaypoint-request)))
  "Returns string type for a service object of type 'RemoveWaypoint-request"
  "rsm_msgs/RemoveWaypointRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RemoveWaypoint-request>)))
  "Returns md5sum for a message object of type '<RemoveWaypoint-request>"
  "3e07da95f3577b8955e235d4863c62b0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RemoveWaypoint-request)))
  "Returns md5sum for a message object of type 'RemoveWaypoint-request"
  "3e07da95f3577b8955e235d4863c62b0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RemoveWaypoint-request>)))
  "Returns full string definition for message of type '<RemoveWaypoint-request>"
  (cl:format cl:nil "int64 position                      # Position in array of waypoint to be removed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RemoveWaypoint-request)))
  "Returns full string definition for message of type 'RemoveWaypoint-request"
  (cl:format cl:nil "int64 position                      # Position in array of waypoint to be removed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RemoveWaypoint-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RemoveWaypoint-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RemoveWaypoint-request
    (cl:cons ':position (position msg))
))
;//! \htmlinclude RemoveWaypoint-response.msg.html

(cl:defclass <RemoveWaypoint-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass RemoveWaypoint-response (<RemoveWaypoint-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RemoveWaypoint-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RemoveWaypoint-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rsm_msgs-srv:<RemoveWaypoint-response> is deprecated: use rsm_msgs-srv:RemoveWaypoint-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <RemoveWaypoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rsm_msgs-srv:success-val is deprecated.  Use rsm_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <RemoveWaypoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rsm_msgs-srv:message-val is deprecated.  Use rsm_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RemoveWaypoint-response>) ostream)
  "Serializes a message object of type '<RemoveWaypoint-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RemoveWaypoint-response>) istream)
  "Deserializes a message object of type '<RemoveWaypoint-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RemoveWaypoint-response>)))
  "Returns string type for a service object of type '<RemoveWaypoint-response>"
  "rsm_msgs/RemoveWaypointResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RemoveWaypoint-response)))
  "Returns string type for a service object of type 'RemoveWaypoint-response"
  "rsm_msgs/RemoveWaypointResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RemoveWaypoint-response>)))
  "Returns md5sum for a message object of type '<RemoveWaypoint-response>"
  "3e07da95f3577b8955e235d4863c62b0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RemoveWaypoint-response)))
  "Returns md5sum for a message object of type 'RemoveWaypoint-response"
  "3e07da95f3577b8955e235d4863c62b0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RemoveWaypoint-response>)))
  "Returns full string definition for message of type '<RemoveWaypoint-response>"
  (cl:format cl:nil "bool success                        # Indicate successful run of triggered service~%string message                      # Informational, e.g. for error messages~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RemoveWaypoint-response)))
  "Returns full string definition for message of type 'RemoveWaypoint-response"
  (cl:format cl:nil "bool success                        # Indicate successful run of triggered service~%string message                      # Informational, e.g. for error messages~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RemoveWaypoint-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RemoveWaypoint-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RemoveWaypoint-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RemoveWaypoint)))
  'RemoveWaypoint-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RemoveWaypoint)))
  'RemoveWaypoint-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RemoveWaypoint)))
  "Returns string type for a service object of type '<RemoveWaypoint>"
  "rsm_msgs/RemoveWaypoint")