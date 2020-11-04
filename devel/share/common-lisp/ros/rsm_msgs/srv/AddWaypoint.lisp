; Auto-generated. Do not edit!


(cl:in-package rsm_msgs-srv)


;//! \htmlinclude AddWaypoint-request.msg.html

(cl:defclass <AddWaypoint-request> (roslisp-msg-protocol:ros-message)
  ((waypoint
    :reader waypoint
    :initarg :waypoint
    :type rsm_msgs-msg:Waypoint
    :initform (cl:make-instance 'rsm_msgs-msg:Waypoint))
   (position
    :reader position
    :initarg :position
    :type cl:integer
    :initform 0))
)

(cl:defclass AddWaypoint-request (<AddWaypoint-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddWaypoint-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddWaypoint-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rsm_msgs-srv:<AddWaypoint-request> is deprecated: use rsm_msgs-srv:AddWaypoint-request instead.")))

(cl:ensure-generic-function 'waypoint-val :lambda-list '(m))
(cl:defmethod waypoint-val ((m <AddWaypoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rsm_msgs-srv:waypoint-val is deprecated.  Use rsm_msgs-srv:waypoint instead.")
  (waypoint m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <AddWaypoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rsm_msgs-srv:position-val is deprecated.  Use rsm_msgs-srv:position instead.")
  (position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddWaypoint-request>) ostream)
  "Serializes a message object of type '<AddWaypoint-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'waypoint) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddWaypoint-request>) istream)
  "Deserializes a message object of type '<AddWaypoint-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'waypoint) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddWaypoint-request>)))
  "Returns string type for a service object of type '<AddWaypoint-request>"
  "rsm_msgs/AddWaypointRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddWaypoint-request)))
  "Returns string type for a service object of type 'AddWaypoint-request"
  "rsm_msgs/AddWaypointRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddWaypoint-request>)))
  "Returns md5sum for a message object of type '<AddWaypoint-request>"
  "d88eb2b30f47caccaa78915d02fcd7a0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddWaypoint-request)))
  "Returns md5sum for a message object of type 'AddWaypoint-request"
  "d88eb2b30f47caccaa78915d02fcd7a0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddWaypoint-request>)))
  "Returns full string definition for message of type '<AddWaypoint-request>"
  (cl:format cl:nil "rsm_msgs/Waypoint waypoint # Waypoint to be added~%int64 position                      # Position in array where to add waypoint (-1 defaults to end of array)~%~%================================================================================~%MSG: rsm_msgs/Waypoint~%#A waypoint for waypoint following~%geometry_msgs/Pose pose     # Pose of this waypoint~%bool visited                # True if the waypoint was already visited~%bool unreachable			# True if no path to this waypoint could be found~%string routine				# Routine to be executed on reaching waypoint~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddWaypoint-request)))
  "Returns full string definition for message of type 'AddWaypoint-request"
  (cl:format cl:nil "rsm_msgs/Waypoint waypoint # Waypoint to be added~%int64 position                      # Position in array where to add waypoint (-1 defaults to end of array)~%~%================================================================================~%MSG: rsm_msgs/Waypoint~%#A waypoint for waypoint following~%geometry_msgs/Pose pose     # Pose of this waypoint~%bool visited                # True if the waypoint was already visited~%bool unreachable			# True if no path to this waypoint could be found~%string routine				# Routine to be executed on reaching waypoint~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddWaypoint-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'waypoint))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddWaypoint-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AddWaypoint-request
    (cl:cons ':waypoint (waypoint msg))
    (cl:cons ':position (position msg))
))
;//! \htmlinclude AddWaypoint-response.msg.html

(cl:defclass <AddWaypoint-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass AddWaypoint-response (<AddWaypoint-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddWaypoint-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddWaypoint-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rsm_msgs-srv:<AddWaypoint-response> is deprecated: use rsm_msgs-srv:AddWaypoint-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <AddWaypoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rsm_msgs-srv:success-val is deprecated.  Use rsm_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <AddWaypoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rsm_msgs-srv:message-val is deprecated.  Use rsm_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddWaypoint-response>) ostream)
  "Serializes a message object of type '<AddWaypoint-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddWaypoint-response>) istream)
  "Deserializes a message object of type '<AddWaypoint-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddWaypoint-response>)))
  "Returns string type for a service object of type '<AddWaypoint-response>"
  "rsm_msgs/AddWaypointResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddWaypoint-response)))
  "Returns string type for a service object of type 'AddWaypoint-response"
  "rsm_msgs/AddWaypointResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddWaypoint-response>)))
  "Returns md5sum for a message object of type '<AddWaypoint-response>"
  "d88eb2b30f47caccaa78915d02fcd7a0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddWaypoint-response)))
  "Returns md5sum for a message object of type 'AddWaypoint-response"
  "d88eb2b30f47caccaa78915d02fcd7a0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddWaypoint-response>)))
  "Returns full string definition for message of type '<AddWaypoint-response>"
  (cl:format cl:nil "bool success                        # Indicate successful run of triggered service~%string message                      # Informational, e.g. for error messages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddWaypoint-response)))
  "Returns full string definition for message of type 'AddWaypoint-response"
  (cl:format cl:nil "bool success                        # Indicate successful run of triggered service~%string message                      # Informational, e.g. for error messages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddWaypoint-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddWaypoint-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AddWaypoint-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AddWaypoint)))
  'AddWaypoint-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AddWaypoint)))
  'AddWaypoint-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddWaypoint)))
  "Returns string type for a service object of type '<AddWaypoint>"
  "rsm_msgs/AddWaypoint")