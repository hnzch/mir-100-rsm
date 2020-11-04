; Auto-generated. Do not edit!


(cl:in-package rsm_msgs-srv)


;//! \htmlinclude MoveWaypoint-request.msg.html

(cl:defclass <MoveWaypoint-request> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type cl:integer
    :initform 0)
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass MoveWaypoint-request (<MoveWaypoint-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveWaypoint-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveWaypoint-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rsm_msgs-srv:<MoveWaypoint-request> is deprecated: use rsm_msgs-srv:MoveWaypoint-request instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <MoveWaypoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rsm_msgs-srv:position-val is deprecated.  Use rsm_msgs-srv:position instead.")
  (position m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <MoveWaypoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rsm_msgs-srv:pose-val is deprecated.  Use rsm_msgs-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveWaypoint-request>) ostream)
  "Serializes a message object of type '<MoveWaypoint-request>"
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
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveWaypoint-request>) istream)
  "Deserializes a message object of type '<MoveWaypoint-request>"
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveWaypoint-request>)))
  "Returns string type for a service object of type '<MoveWaypoint-request>"
  "rsm_msgs/MoveWaypointRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveWaypoint-request)))
  "Returns string type for a service object of type 'MoveWaypoint-request"
  "rsm_msgs/MoveWaypointRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveWaypoint-request>)))
  "Returns md5sum for a message object of type '<MoveWaypoint-request>"
  "2707257014f8d83c4fab3f5f2f35968a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveWaypoint-request)))
  "Returns md5sum for a message object of type 'MoveWaypoint-request"
  "2707257014f8d83c4fab3f5f2f35968a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveWaypoint-request>)))
  "Returns full string definition for message of type '<MoveWaypoint-request>"
  (cl:format cl:nil "int64 position                      # Position in array of waypoint to be moved~%geometry_msgs/Pose pose				# New pose of the waypoint~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveWaypoint-request)))
  "Returns full string definition for message of type 'MoveWaypoint-request"
  (cl:format cl:nil "int64 position                      # Position in array of waypoint to be moved~%geometry_msgs/Pose pose				# New pose of the waypoint~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveWaypoint-request>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveWaypoint-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveWaypoint-request
    (cl:cons ':position (position msg))
    (cl:cons ':pose (pose msg))
))
;//! \htmlinclude MoveWaypoint-response.msg.html

(cl:defclass <MoveWaypoint-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass MoveWaypoint-response (<MoveWaypoint-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveWaypoint-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveWaypoint-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rsm_msgs-srv:<MoveWaypoint-response> is deprecated: use rsm_msgs-srv:MoveWaypoint-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <MoveWaypoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rsm_msgs-srv:success-val is deprecated.  Use rsm_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <MoveWaypoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rsm_msgs-srv:message-val is deprecated.  Use rsm_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveWaypoint-response>) ostream)
  "Serializes a message object of type '<MoveWaypoint-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveWaypoint-response>) istream)
  "Deserializes a message object of type '<MoveWaypoint-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveWaypoint-response>)))
  "Returns string type for a service object of type '<MoveWaypoint-response>"
  "rsm_msgs/MoveWaypointResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveWaypoint-response)))
  "Returns string type for a service object of type 'MoveWaypoint-response"
  "rsm_msgs/MoveWaypointResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveWaypoint-response>)))
  "Returns md5sum for a message object of type '<MoveWaypoint-response>"
  "2707257014f8d83c4fab3f5f2f35968a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveWaypoint-response)))
  "Returns md5sum for a message object of type 'MoveWaypoint-response"
  "2707257014f8d83c4fab3f5f2f35968a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveWaypoint-response>)))
  "Returns full string definition for message of type '<MoveWaypoint-response>"
  (cl:format cl:nil "bool success                        # Indicate successful run of triggered service~%string message                      # Informational, e.g. for error messages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveWaypoint-response)))
  "Returns full string definition for message of type 'MoveWaypoint-response"
  (cl:format cl:nil "bool success                        # Indicate successful run of triggered service~%string message                      # Informational, e.g. for error messages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveWaypoint-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveWaypoint-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveWaypoint-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MoveWaypoint)))
  'MoveWaypoint-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MoveWaypoint)))
  'MoveWaypoint-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveWaypoint)))
  "Returns string type for a service object of type '<MoveWaypoint>"
  "rsm_msgs/MoveWaypoint")