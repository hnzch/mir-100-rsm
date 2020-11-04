; Auto-generated. Do not edit!


(cl:in-package rsm_msgs-msg)


;//! \htmlinclude GoalStatus.msg.html

(cl:defclass <GoalStatus> (roslisp-msg-protocol:ros-message)
  ((goal
    :reader goal
    :initarg :goal
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (goal_status
    :reader goal_status
    :initarg :goal_status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GoalStatus (<GoalStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GoalStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GoalStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rsm_msgs-msg:<GoalStatus> is deprecated: use rsm_msgs-msg:GoalStatus instead.")))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <GoalStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rsm_msgs-msg:goal-val is deprecated.  Use rsm_msgs-msg:goal instead.")
  (goal m))

(cl:ensure-generic-function 'goal_status-val :lambda-list '(m))
(cl:defmethod goal_status-val ((m <GoalStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rsm_msgs-msg:goal_status-val is deprecated.  Use rsm_msgs-msg:goal_status instead.")
  (goal_status m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<GoalStatus>)))
    "Constants for message type '<GoalStatus>"
  '((:ACTIVE . 0)
    (:REACHED . 1)
    (:FAILED . 2)
    (:ABORTED . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'GoalStatus)))
    "Constants for message type 'GoalStatus"
  '((:ACTIVE . 0)
    (:REACHED . 1)
    (:FAILED . 2)
    (:ABORTED . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GoalStatus>) ostream)
  "Serializes a message object of type '<GoalStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'goal_status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GoalStatus>) istream)
  "Deserializes a message object of type '<GoalStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'goal_status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GoalStatus>)))
  "Returns string type for a message object of type '<GoalStatus>"
  "rsm_msgs/GoalStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoalStatus)))
  "Returns string type for a message object of type 'GoalStatus"
  "rsm_msgs/GoalStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GoalStatus>)))
  "Returns md5sum for a message object of type '<GoalStatus>"
  "d846ca20fc8170d57b2d738bb5885a3e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GoalStatus)))
  "Returns md5sum for a message object of type 'GoalStatus"
  "d846ca20fc8170d57b2d738bb5885a3e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GoalStatus>)))
  "Returns full string definition for message of type '<GoalStatus>"
  (cl:format cl:nil "#Information about currently active goal~%geometry_msgs/Pose goal			 	# Goal in the map~%uint8 goal_status					# Status of the goal ~%~%uint8 ACTIVE = 0       				# Goal is still active~%uint8 REACHED = 1       			# Goal was successfully reached~%uint8 FAILED = 2        			# Failed to reach goal~%uint8 ABORTED = 3        			# Aborted goal before completion~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GoalStatus)))
  "Returns full string definition for message of type 'GoalStatus"
  (cl:format cl:nil "#Information about currently active goal~%geometry_msgs/Pose goal			 	# Goal in the map~%uint8 goal_status					# Status of the goal ~%~%uint8 ACTIVE = 0       				# Goal is still active~%uint8 REACHED = 1       			# Goal was successfully reached~%uint8 FAILED = 2        			# Failed to reach goal~%uint8 ABORTED = 3        			# Aborted goal before completion~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GoalStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GoalStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'GoalStatus
    (cl:cons ':goal (goal msg))
    (cl:cons ':goal_status (goal_status msg))
))
