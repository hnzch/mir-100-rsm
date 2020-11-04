; Auto-generated. Do not edit!


(cl:in-package rsm_msgs-srv)


;//! \htmlinclude SetNavigationGoal-request.msg.html

(cl:defclass <SetNavigationGoal-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetNavigationGoal-request (<SetNavigationGoal-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetNavigationGoal-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetNavigationGoal-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rsm_msgs-srv:<SetNavigationGoal-request> is deprecated: use rsm_msgs-srv:SetNavigationGoal-request instead.")))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <SetNavigationGoal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rsm_msgs-srv:goal-val is deprecated.  Use rsm_msgs-srv:goal instead.")
  (goal m))

(cl:ensure-generic-function 'navigationMode-val :lambda-list '(m))
(cl:defmethod navigationMode-val ((m <SetNavigationGoal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rsm_msgs-srv:navigationMode-val is deprecated.  Use rsm_msgs-srv:navigationMode instead.")
  (navigationMode m))

(cl:ensure-generic-function 'waypointPosition-val :lambda-list '(m))
(cl:defmethod waypointPosition-val ((m <SetNavigationGoal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rsm_msgs-srv:waypointPosition-val is deprecated.  Use rsm_msgs-srv:waypointPosition instead.")
  (waypointPosition m))

(cl:ensure-generic-function 'routine-val :lambda-list '(m))
(cl:defmethod routine-val ((m <SetNavigationGoal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rsm_msgs-srv:routine-val is deprecated.  Use rsm_msgs-srv:routine instead.")
  (routine m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetNavigationGoal-request>) ostream)
  "Serializes a message object of type '<SetNavigationGoal-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetNavigationGoal-request>) istream)
  "Deserializes a message object of type '<SetNavigationGoal-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetNavigationGoal-request>)))
  "Returns string type for a service object of type '<SetNavigationGoal-request>"
  "rsm_msgs/SetNavigationGoalRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetNavigationGoal-request)))
  "Returns string type for a service object of type 'SetNavigationGoal-request"
  "rsm_msgs/SetNavigationGoalRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetNavigationGoal-request>)))
  "Returns md5sum for a message object of type '<SetNavigationGoal-request>"
  "7f219f0d367008b829d419b8dccf0d16")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetNavigationGoal-request)))
  "Returns md5sum for a message object of type 'SetNavigationGoal-request"
  "7f219f0d367008b829d419b8dccf0d16")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetNavigationGoal-request>)))
  "Returns full string definition for message of type '<SetNavigationGoal-request>"
  (cl:format cl:nil "geometry_msgs/Pose goal 			# Goal for navigation~%int8 navigationMode					# Mode of navigation (Exploration=0, Waypoint following=1 and Simple Goal=2)~%int64 waypointPosition				# Position of waypoint in array~%string routine						# Routine plugin name to be executed at waypoint~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetNavigationGoal-request)))
  "Returns full string definition for message of type 'SetNavigationGoal-request"
  (cl:format cl:nil "geometry_msgs/Pose goal 			# Goal for navigation~%int8 navigationMode					# Mode of navigation (Exploration=0, Waypoint following=1 and Simple Goal=2)~%int64 waypointPosition				# Position of waypoint in array~%string routine						# Routine plugin name to be executed at waypoint~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetNavigationGoal-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
     1
     8
     4 (cl:length (cl:slot-value msg 'routine))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetNavigationGoal-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetNavigationGoal-request
    (cl:cons ':goal (goal msg))
    (cl:cons ':navigationMode (navigationMode msg))
    (cl:cons ':waypointPosition (waypointPosition msg))
    (cl:cons ':routine (routine msg))
))
;//! \htmlinclude SetNavigationGoal-response.msg.html

(cl:defclass <SetNavigationGoal-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetNavigationGoal-response (<SetNavigationGoal-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetNavigationGoal-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetNavigationGoal-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rsm_msgs-srv:<SetNavigationGoal-response> is deprecated: use rsm_msgs-srv:SetNavigationGoal-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetNavigationGoal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rsm_msgs-srv:success-val is deprecated.  Use rsm_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetNavigationGoal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rsm_msgs-srv:message-val is deprecated.  Use rsm_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetNavigationGoal-response>) ostream)
  "Serializes a message object of type '<SetNavigationGoal-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetNavigationGoal-response>) istream)
  "Deserializes a message object of type '<SetNavigationGoal-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetNavigationGoal-response>)))
  "Returns string type for a service object of type '<SetNavigationGoal-response>"
  "rsm_msgs/SetNavigationGoalResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetNavigationGoal-response)))
  "Returns string type for a service object of type 'SetNavigationGoal-response"
  "rsm_msgs/SetNavigationGoalResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetNavigationGoal-response>)))
  "Returns md5sum for a message object of type '<SetNavigationGoal-response>"
  "7f219f0d367008b829d419b8dccf0d16")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetNavigationGoal-response)))
  "Returns md5sum for a message object of type 'SetNavigationGoal-response"
  "7f219f0d367008b829d419b8dccf0d16")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetNavigationGoal-response>)))
  "Returns full string definition for message of type '<SetNavigationGoal-response>"
  (cl:format cl:nil "bool success                        # Indicate successful run of triggered service~%string message                      # Informational, e.g. for error messages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetNavigationGoal-response)))
  "Returns full string definition for message of type 'SetNavigationGoal-response"
  (cl:format cl:nil "bool success                        # Indicate successful run of triggered service~%string message                      # Informational, e.g. for error messages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetNavigationGoal-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetNavigationGoal-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetNavigationGoal-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetNavigationGoal)))
  'SetNavigationGoal-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetNavigationGoal)))
  'SetNavigationGoal-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetNavigationGoal)))
  "Returns string type for a service object of type '<SetNavigationGoal>"
  "rsm_msgs/SetNavigationGoal")