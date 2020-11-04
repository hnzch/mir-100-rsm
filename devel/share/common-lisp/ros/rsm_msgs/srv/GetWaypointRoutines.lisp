; Auto-generated. Do not edit!


(cl:in-package rsm_msgs-srv)


;//! \htmlinclude GetWaypointRoutines-request.msg.html

(cl:defclass <GetWaypointRoutines-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetWaypointRoutines-request (<GetWaypointRoutines-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetWaypointRoutines-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetWaypointRoutines-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rsm_msgs-srv:<GetWaypointRoutines-request> is deprecated: use rsm_msgs-srv:GetWaypointRoutines-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetWaypointRoutines-request>) ostream)
  "Serializes a message object of type '<GetWaypointRoutines-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetWaypointRoutines-request>) istream)
  "Deserializes a message object of type '<GetWaypointRoutines-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetWaypointRoutines-request>)))
  "Returns string type for a service object of type '<GetWaypointRoutines-request>"
  "rsm_msgs/GetWaypointRoutinesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetWaypointRoutines-request)))
  "Returns string type for a service object of type 'GetWaypointRoutines-request"
  "rsm_msgs/GetWaypointRoutinesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetWaypointRoutines-request>)))
  "Returns md5sum for a message object of type '<GetWaypointRoutines-request>"
  "2b220fb1d6a56e5ac72aec59f32a9bf6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetWaypointRoutines-request)))
  "Returns md5sum for a message object of type 'GetWaypointRoutines-request"
  "2b220fb1d6a56e5ac72aec59f32a9bf6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetWaypointRoutines-request>)))
  "Returns full string definition for message of type '<GetWaypointRoutines-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetWaypointRoutines-request)))
  "Returns full string definition for message of type 'GetWaypointRoutines-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetWaypointRoutines-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetWaypointRoutines-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetWaypointRoutines-request
))
;//! \htmlinclude GetWaypointRoutines-response.msg.html

(cl:defclass <GetWaypointRoutines-response> (roslisp-msg-protocol:ros-message)
  ((waypointRoutines
    :reader waypointRoutines
    :initarg :waypointRoutines
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass GetWaypointRoutines-response (<GetWaypointRoutines-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetWaypointRoutines-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetWaypointRoutines-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rsm_msgs-srv:<GetWaypointRoutines-response> is deprecated: use rsm_msgs-srv:GetWaypointRoutines-response instead.")))

(cl:ensure-generic-function 'waypointRoutines-val :lambda-list '(m))
(cl:defmethod waypointRoutines-val ((m <GetWaypointRoutines-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rsm_msgs-srv:waypointRoutines-val is deprecated.  Use rsm_msgs-srv:waypointRoutines instead.")
  (waypointRoutines m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetWaypointRoutines-response>) ostream)
  "Serializes a message object of type '<GetWaypointRoutines-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'waypointRoutines))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'waypointRoutines))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetWaypointRoutines-response>) istream)
  "Deserializes a message object of type '<GetWaypointRoutines-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'waypointRoutines) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'waypointRoutines)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetWaypointRoutines-response>)))
  "Returns string type for a service object of type '<GetWaypointRoutines-response>"
  "rsm_msgs/GetWaypointRoutinesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetWaypointRoutines-response)))
  "Returns string type for a service object of type 'GetWaypointRoutines-response"
  "rsm_msgs/GetWaypointRoutinesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetWaypointRoutines-response>)))
  "Returns md5sum for a message object of type '<GetWaypointRoutines-response>"
  "2b220fb1d6a56e5ac72aec59f32a9bf6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetWaypointRoutines-response)))
  "Returns md5sum for a message object of type 'GetWaypointRoutines-response"
  "2b220fb1d6a56e5ac72aec59f32a9bf6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetWaypointRoutines-response>)))
  "Returns full string definition for message of type '<GetWaypointRoutines-response>"
  (cl:format cl:nil "string[] waypointRoutines		   		# Array of all waypoint routines available~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetWaypointRoutines-response)))
  "Returns full string definition for message of type 'GetWaypointRoutines-response"
  (cl:format cl:nil "string[] waypointRoutines		   		# Array of all waypoint routines available~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetWaypointRoutines-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'waypointRoutines) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetWaypointRoutines-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetWaypointRoutines-response
    (cl:cons ':waypointRoutines (waypointRoutines msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetWaypointRoutines)))
  'GetWaypointRoutines-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetWaypointRoutines)))
  'GetWaypointRoutines-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetWaypointRoutines)))
  "Returns string type for a service object of type '<GetWaypointRoutines>"
  "rsm_msgs/GetWaypointRoutines")