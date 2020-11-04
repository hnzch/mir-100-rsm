; Auto-generated. Do not edit!


(cl:in-package rsm_msgs-srv)


;//! \htmlinclude SetOperationMode-request.msg.html

(cl:defclass <SetOperationMode-request> (roslisp-msg-protocol:ros-message)
  ((operationMode
    :reader operationMode
    :initarg :operationMode
    :type rsm_msgs-msg:OperationMode
    :initform (cl:make-instance 'rsm_msgs-msg:OperationMode)))
)

(cl:defclass SetOperationMode-request (<SetOperationMode-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetOperationMode-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetOperationMode-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rsm_msgs-srv:<SetOperationMode-request> is deprecated: use rsm_msgs-srv:SetOperationMode-request instead.")))

(cl:ensure-generic-function 'operationMode-val :lambda-list '(m))
(cl:defmethod operationMode-val ((m <SetOperationMode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rsm_msgs-srv:operationMode-val is deprecated.  Use rsm_msgs-srv:operationMode instead.")
  (operationMode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetOperationMode-request>) ostream)
  "Serializes a message object of type '<SetOperationMode-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'operationMode) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetOperationMode-request>) istream)
  "Deserializes a message object of type '<SetOperationMode-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'operationMode) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetOperationMode-request>)))
  "Returns string type for a service object of type '<SetOperationMode-request>"
  "rsm_msgs/SetOperationModeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetOperationMode-request)))
  "Returns string type for a service object of type 'SetOperationMode-request"
  "rsm_msgs/SetOperationModeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetOperationMode-request>)))
  "Returns md5sum for a message object of type '<SetOperationMode-request>"
  "2760717e8c5a5aefc48015322fde6db7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetOperationMode-request)))
  "Returns md5sum for a message object of type 'SetOperationMode-request"
  "2760717e8c5a5aefc48015322fde6db7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetOperationMode-request>)))
  "Returns full string definition for message of type '<SetOperationMode-request>"
  (cl:format cl:nil "rsm_msgs/OperationMode operationMode	#Info about operation mode including emergency stop~%~%================================================================================~%MSG: rsm_msgs/OperationMode~%#Operation mode including information about emergency stop~%bool emergencyStop					# Is emergency stop activated~%~%uint8 STOPPED = 0        			# Robot is stopped~%uint8 AUTONOMOUS = 1     			# Robot is controlled by the autonomy cmd vel topic	~%uint8 TELEOPERATION = 2        		# Robot is controlled by the teleoperation cmd vel topic	~%~%uint8 mode							# Operation mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetOperationMode-request)))
  "Returns full string definition for message of type 'SetOperationMode-request"
  (cl:format cl:nil "rsm_msgs/OperationMode operationMode	#Info about operation mode including emergency stop~%~%================================================================================~%MSG: rsm_msgs/OperationMode~%#Operation mode including information about emergency stop~%bool emergencyStop					# Is emergency stop activated~%~%uint8 STOPPED = 0        			# Robot is stopped~%uint8 AUTONOMOUS = 1     			# Robot is controlled by the autonomy cmd vel topic	~%uint8 TELEOPERATION = 2        		# Robot is controlled by the teleoperation cmd vel topic	~%~%uint8 mode							# Operation mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetOperationMode-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'operationMode))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetOperationMode-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetOperationMode-request
    (cl:cons ':operationMode (operationMode msg))
))
;//! \htmlinclude SetOperationMode-response.msg.html

(cl:defclass <SetOperationMode-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetOperationMode-response (<SetOperationMode-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetOperationMode-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetOperationMode-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rsm_msgs-srv:<SetOperationMode-response> is deprecated: use rsm_msgs-srv:SetOperationMode-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetOperationMode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rsm_msgs-srv:success-val is deprecated.  Use rsm_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetOperationMode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rsm_msgs-srv:message-val is deprecated.  Use rsm_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetOperationMode-response>) ostream)
  "Serializes a message object of type '<SetOperationMode-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetOperationMode-response>) istream)
  "Deserializes a message object of type '<SetOperationMode-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetOperationMode-response>)))
  "Returns string type for a service object of type '<SetOperationMode-response>"
  "rsm_msgs/SetOperationModeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetOperationMode-response)))
  "Returns string type for a service object of type 'SetOperationMode-response"
  "rsm_msgs/SetOperationModeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetOperationMode-response>)))
  "Returns md5sum for a message object of type '<SetOperationMode-response>"
  "2760717e8c5a5aefc48015322fde6db7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetOperationMode-response)))
  "Returns md5sum for a message object of type 'SetOperationMode-response"
  "2760717e8c5a5aefc48015322fde6db7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetOperationMode-response>)))
  "Returns full string definition for message of type '<SetOperationMode-response>"
  (cl:format cl:nil "bool success                       				# Indicate successful run of triggered service~%string message                      			# Informational, e.g. for error messages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetOperationMode-response)))
  "Returns full string definition for message of type 'SetOperationMode-response"
  (cl:format cl:nil "bool success                       				# Indicate successful run of triggered service~%string message                      			# Informational, e.g. for error messages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetOperationMode-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetOperationMode-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetOperationMode-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetOperationMode)))
  'SetOperationMode-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetOperationMode)))
  'SetOperationMode-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetOperationMode)))
  "Returns string type for a service object of type '<SetOperationMode>"
  "rsm_msgs/SetOperationMode")