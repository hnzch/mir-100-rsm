; Auto-generated. Do not edit!


(cl:in-package rsm_msgs-srv)


;//! \htmlinclude GetNavigationGoal-request.msg.html

(cl:defclass <GetNavigationGoal-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetNavigationGoal-request (<GetNavigationGoal-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetNavigationGoal-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetNavigationGoal-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rsm_msgs-srv:<GetNavigationGoal-request> is deprecated: use rsm_msgs-srv:GetNavigationGoal-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetNavigationGoal-request>) ostream)
  "Serializes a message object of type '<GetNavigationGoal-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetNavigationGoal-request>) istream)
  "Deserializes a message object of type '<GetNavigationGoal-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetNavigationGoal-request>)))
  "Returns string type for a service object of type '<GetNavigationGoal-request>"
  "rsm_msgs/GetNavigationGoalRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetNavigationGoal-request)))
  "Returns string type for a service object of type 'GetNavigationGoal-request"
  "rsm_msgs/GetNavigationGoalRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetNavigationGoal-request>)))
  "Returns md5sum for a message object of type '<GetNavigationGoal-request>"
  "a8db7cf04440217a23ad35e776985384")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetNavigationGoal-request)))
  "Returns md5sum for a message object of type 'GetNavigationGoal-request"
  "a8db7cf04440217a23ad35e776985384")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetNavigationGoal-request>)))
  "Returns full string definition for message of type '<GetNavigationGoal-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetNavigationGoal-request)))
  "Returns full string definition for message of type 'GetNavigationGoal-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetNavigationGoal-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetNavigationGoal-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetNavigationGoal-request
))
;//! \htmlinclude GetNavigationGoal-response.msg.html

(cl:defclass <GetNavigationGoal-response> (roslisp-msg-protocol:ros-message)
  ((goal
    :reader goal
    :initarg :goal
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (navigationMode
    :reader navigationMode
    :initarg :navigationMode
    :type cl:fixnum
    :initform 0)
   (waypointPosition
    :reader waypointPosition
    :initarg :waypointPosition
    :type cl:integer
    :initform 0)
   (routine
    :reader routine
    :initarg :routine
    :type cl:string
    :initform ""))
)

(cl:defclass GetNavigationGoal-response (<GetNavigationGoal-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetNavigationGoal-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetNavigationGoal-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rsm_msgs-srv:<GetNavigationGoal-response> is deprecated: use rsm_msgs-srv:GetNavigationGoal-response instead.")))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <GetNavigationGoal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rsm_msgs-srv:goal-val is deprecated.  Use rsm_msgs-srv:goal instead.")
  (goal m))

(cl:ensure-generic-function 'navigationMode-val :lambda-list '(m))
(cl:defmethod navigationMode-val ((m <GetNavigationGoal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rsm_msgs-srv:navigationMode-val is deprecated.  Use rsm_msgs-srv:navigationMode instead.")
  (navigationMode m))

(cl:ensure-generic-function 'waypointPosition-val :lambda-list '(m))
(cl:defmethod waypointPosition-val ((m <GetNavigationGoal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rsm_msgs-srv:waypointPosition-val is deprecated.  Use rsm_msgs-srv:waypointPosition instead.")
  (waypointPosition m))

(cl:ensure-generic-function 'routine-val :lambda-list '(m))
(cl:defmethod routine-val ((m <GetNavigationGoal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rsm_msgs-srv:routine-val is deprecated.  Use rsm_msgs-srv:routine instead.")
  (routine m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetNavigationGoal-response>) ostream)
  "Serializes a message object of type '<GetNavigationGoal-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
  (cl:let* ((signed (cl:slot-value msg 'navigationMode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'waypointPosition)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'routine))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'routine))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetNavigationGoal-response>) istream)
  "Deserializes a message object of type '<GetNavigationGoal-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'navigationMode) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'waypointPosition) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'routine) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'routine) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetNavigationGoal-response>)))
  "Returns string type for a service object of type '<GetNavigationGoal-response>"
  "rsm_msgs/GetNavigationGoalResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetNavigationGoal-response)))
  "Returns string type for a service object of type 'GetNavigationGoal-response"
  "rsm_msgs/GetNavigationGoalResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetNavigationGoal-response>)))
  "Returns md5sum for a message object of type '<GetNavigationGoal-response>"
  "a8db7cf04440217a23ad35e776985384")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetNavigationGoal-response)))
  "Returns md5sum for a message object of type 'GetNavigationGoal-response"
  "a8db7cf04440217a23ad35e776985384")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetNavigationGoal-response>)))
  "Returns full string definition for message of type '<GetNavigationGoal-response>"
  (cl:format cl:nil "geometry_msgs/Pose goal 			# Goal for navigation~%int8 navigationMode					# Mode of navigation (Exploration=0, Waypoint following=1 and Simple Goal=2)~%int64 waypointPosition				# Position of waypoint in array~%string routine						# Routine plugin name to be executed at waypoint~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetNavigationGoal-response)))
  "Returns full string definition for message of type 'GetNavigationGoal-response"
  (cl:format cl:nil "geometry_msgs/Pose goal 			# Goal for navigation~%int8 navigationMode					# Mode of navigation (Exploration=0, Waypoint following=1 and Simple Goal=2)~%int64 waypointPosition				# Position of waypoint in array~%string routine						# Routine plugin name to be executed at waypoint~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetNavigationGoal-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
     1
     8
     4 (cl:length (cl:slot-value msg 'routine))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetNavigationGoal-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetNavigationGoal-response
    (cl:cons ':goal (goal msg))
    (cl:cons ':navigationMode (navigationMode msg))
    (cl:cons ':waypointPosition (waypointPosition msg))
    (cl:cons ':routine (routine msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetNavigationGoal)))
  'GetNavigationGoal-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetNavigationGoal)))
  'GetNavigationGoal-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetNavigationGoal)))
  "Returns string type for a service object of type '<GetNavigationGoal>"
  "rsm_msgs/GetNavigationGoal")