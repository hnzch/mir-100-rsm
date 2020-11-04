; Auto-generated. Do not edit!


(cl:in-package rsm_msgs-srv)


;//! \htmlinclude GetRobotPose-request.msg.html

(cl:defclass <GetRobotPose-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetRobotPose-request (<GetRobotPose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetRobotPose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetRobotPose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rsm_msgs-srv:<GetRobotPose-request> is deprecated: use rsm_msgs-srv:GetRobotPose-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetRobotPose-request>) ostream)
  "Serializes a message object of type '<GetRobotPose-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetRobotPose-request>) istream)
  "Deserializes a message object of type '<GetRobotPose-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetRobotPose-request>)))
  "Returns string type for a service object of type '<GetRobotPose-request>"
  "rsm_msgs/GetRobotPoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRobotPose-request)))
  "Returns string type for a service object of type 'GetRobotPose-request"
  "rsm_msgs/GetRobotPoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetRobotPose-request>)))
  "Returns md5sum for a message object of type '<GetRobotPose-request>"
  "f192399f711a48924df9a394d37edd67")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetRobotPose-request)))
  "Returns md5sum for a message object of type 'GetRobotPose-request"
  "f192399f711a48924df9a394d37edd67")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetRobotPose-request>)))
  "Returns full string definition for message of type '<GetRobotPose-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetRobotPose-request)))
  "Returns full string definition for message of type 'GetRobotPose-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetRobotPose-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetRobotPose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetRobotPose-request
))
;//! \htmlinclude GetRobotPose-response.msg.html

(cl:defclass <GetRobotPose-response> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass GetRobotPose-response (<GetRobotPose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetRobotPose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetRobotPose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rsm_msgs-srv:<GetRobotPose-response> is deprecated: use rsm_msgs-srv:GetRobotPose-response instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <GetRobotPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rsm_msgs-srv:pose-val is deprecated.  Use rsm_msgs-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetRobotPose-response>) ostream)
  "Serializes a message object of type '<GetRobotPose-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetRobotPose-response>) istream)
  "Deserializes a message object of type '<GetRobotPose-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetRobotPose-response>)))
  "Returns string type for a service object of type '<GetRobotPose-response>"
  "rsm_msgs/GetRobotPoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRobotPose-response)))
  "Returns string type for a service object of type 'GetRobotPose-response"
  "rsm_msgs/GetRobotPoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetRobotPose-response>)))
  "Returns md5sum for a message object of type '<GetRobotPose-response>"
  "f192399f711a48924df9a394d37edd67")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetRobotPose-response)))
  "Returns md5sum for a message object of type 'GetRobotPose-response"
  "f192399f711a48924df9a394d37edd67")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetRobotPose-response>)))
  "Returns full string definition for message of type '<GetRobotPose-response>"
  (cl:format cl:nil "geometry_msgs/Pose pose 			# Current robot pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetRobotPose-response)))
  "Returns full string definition for message of type 'GetRobotPose-response"
  (cl:format cl:nil "geometry_msgs/Pose pose 			# Current robot pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetRobotPose-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetRobotPose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetRobotPose-response
    (cl:cons ':pose (pose msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetRobotPose)))
  'GetRobotPose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetRobotPose)))
  'GetRobotPose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRobotPose)))
  "Returns string type for a service object of type '<GetRobotPose>"
  "rsm_msgs/GetRobotPose")