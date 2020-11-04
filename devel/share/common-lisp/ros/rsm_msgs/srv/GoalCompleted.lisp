; Auto-generated. Do not edit!


(cl:in-package rsm_msgs-srv)


;//! \htmlinclude GoalCompleted-request.msg.html

(cl:defclass <GoalCompleted-request> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type rsm_msgs-msg:GoalStatus
    :initform (cl:make-instance 'rsm_msgs-msg:GoalStatus)))
)

(cl:defclass GoalCompleted-request (<GoalCompleted-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GoalCompleted-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GoalCompleted-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rsm_msgs-srv:<GoalCompleted-request> is deprecated: use rsm_msgs-srv:GoalCompleted-request instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <GoalCompleted-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rsm_msgs-srv:status-val is deprecated.  Use rsm_msgs-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GoalCompleted-request>) ostream)
  "Serializes a message object of type '<GoalCompleted-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'status) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GoalCompleted-request>) istream)
  "Deserializes a message object of type '<GoalCompleted-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'status) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GoalCompleted-request>)))
  "Returns string type for a service object of type '<GoalCompleted-request>"
  "rsm_msgs/GoalCompletedRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoalCompleted-request)))
  "Returns string type for a service object of type 'GoalCompleted-request"
  "rsm_msgs/GoalCompletedRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GoalCompleted-request>)))
  "Returns md5sum for a message object of type '<GoalCompleted-request>"
  "a69cf0e7e0685d899e584ceb18804a9e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GoalCompleted-request)))
  "Returns md5sum for a message object of type 'GoalCompleted-request"
  "a69cf0e7e0685d899e584ceb18804a9e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GoalCompleted-request>)))
  "Returns full string definition for message of type '<GoalCompleted-request>"
  (cl:format cl:nil "rsm_msgs/GoalStatus status			# Goal status~%~%================================================================================~%MSG: rsm_msgs/GoalStatus~%#Information about currently active goal~%geometry_msgs/Pose goal			 	# Goal in the map~%uint8 goal_status					# Status of the goal ~%~%uint8 ACTIVE = 0       				# Goal is still active~%uint8 REACHED = 1       			# Goal was successfully reached~%uint8 FAILED = 2        			# Failed to reach goal~%uint8 ABORTED = 3        			# Aborted goal before completion~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GoalCompleted-request)))
  "Returns full string definition for message of type 'GoalCompleted-request"
  (cl:format cl:nil "rsm_msgs/GoalStatus status			# Goal status~%~%================================================================================~%MSG: rsm_msgs/GoalStatus~%#Information about currently active goal~%geometry_msgs/Pose goal			 	# Goal in the map~%uint8 goal_status					# Status of the goal ~%~%uint8 ACTIVE = 0       				# Goal is still active~%uint8 REACHED = 1       			# Goal was successfully reached~%uint8 FAILED = 2        			# Failed to reach goal~%uint8 ABORTED = 3        			# Aborted goal before completion~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GoalCompleted-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GoalCompleted-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GoalCompleted-request
    (cl:cons ':status (status msg))
))
;//! \htmlinclude GoalCompleted-response.msg.html

(cl:defclass <GoalCompleted-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass GoalCompleted-response (<GoalCompleted-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GoalCompleted-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GoalCompleted-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rsm_msgs-srv:<GoalCompleted-response> is deprecated: use rsm_msgs-srv:GoalCompleted-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GoalCompleted-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rsm_msgs-srv:success-val is deprecated.  Use rsm_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GoalCompleted-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rsm_msgs-srv:message-val is deprecated.  Use rsm_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GoalCompleted-response>) ostream)
  "Serializes a message object of type '<GoalCompleted-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GoalCompleted-response>) istream)
  "Deserializes a message object of type '<GoalCompleted-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GoalCompleted-response>)))
  "Returns string type for a service object of type '<GoalCompleted-response>"
  "rsm_msgs/GoalCompletedResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoalCompleted-response)))
  "Returns string type for a service object of type 'GoalCompleted-response"
  "rsm_msgs/GoalCompletedResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GoalCompleted-response>)))
  "Returns md5sum for a message object of type '<GoalCompleted-response>"
  "a69cf0e7e0685d899e584ceb18804a9e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GoalCompleted-response)))
  "Returns md5sum for a message object of type 'GoalCompleted-response"
  "a69cf0e7e0685d899e584ceb18804a9e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GoalCompleted-response>)))
  "Returns full string definition for message of type '<GoalCompleted-response>"
  (cl:format cl:nil "bool success                        # Indicate successful run of triggered service~%string message                      # Informational, e.g. for error messages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GoalCompleted-response)))
  "Returns full string definition for message of type 'GoalCompleted-response"
  (cl:format cl:nil "bool success                        # Indicate successful run of triggered service~%string message                      # Informational, e.g. for error messages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GoalCompleted-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GoalCompleted-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GoalCompleted-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GoalCompleted)))
  'GoalCompleted-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GoalCompleted)))
  'GoalCompleted-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoalCompleted)))
  "Returns string type for a service object of type '<GoalCompleted>"
  "rsm_msgs/GoalCompleted")