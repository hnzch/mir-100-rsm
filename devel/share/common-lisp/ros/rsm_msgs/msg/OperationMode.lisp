; Auto-generated. Do not edit!


(cl:in-package rsm_msgs-msg)


;//! \htmlinclude OperationMode.msg.html

(cl:defclass <OperationMode> (roslisp-msg-protocol:ros-message)
  ((emergencyStop
    :reader emergencyStop
    :initarg :emergencyStop
    :type cl:boolean
    :initform cl:nil)
   (mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass OperationMode (<OperationMode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OperationMode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OperationMode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rsm_msgs-msg:<OperationMode> is deprecated: use rsm_msgs-msg:OperationMode instead.")))

(cl:ensure-generic-function 'emergencyStop-val :lambda-list '(m))
(cl:defmethod emergencyStop-val ((m <OperationMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rsm_msgs-msg:emergencyStop-val is deprecated.  Use rsm_msgs-msg:emergencyStop instead.")
  (emergencyStop m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <OperationMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rsm_msgs-msg:mode-val is deprecated.  Use rsm_msgs-msg:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<OperationMode>)))
    "Constants for message type '<OperationMode>"
  '((:STOPPED . 0)
    (:AUTONOMOUS . 1)
    (:TELEOPERATION . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'OperationMode)))
    "Constants for message type 'OperationMode"
  '((:STOPPED . 0)
    (:AUTONOMOUS . 1)
    (:TELEOPERATION . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OperationMode>) ostream)
  "Serializes a message object of type '<OperationMode>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'emergencyStop) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OperationMode>) istream)
  "Deserializes a message object of type '<OperationMode>"
    (cl:setf (cl:slot-value msg 'emergencyStop) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OperationMode>)))
  "Returns string type for a message object of type '<OperationMode>"
  "rsm_msgs/OperationMode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OperationMode)))
  "Returns string type for a message object of type 'OperationMode"
  "rsm_msgs/OperationMode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OperationMode>)))
  "Returns md5sum for a message object of type '<OperationMode>"
  "3a2b892239d01889665a0278d874ed60")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OperationMode)))
  "Returns md5sum for a message object of type 'OperationMode"
  "3a2b892239d01889665a0278d874ed60")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OperationMode>)))
  "Returns full string definition for message of type '<OperationMode>"
  (cl:format cl:nil "#Operation mode including information about emergency stop~%bool emergencyStop					# Is emergency stop activated~%~%uint8 STOPPED = 0        			# Robot is stopped~%uint8 AUTONOMOUS = 1     			# Robot is controlled by the autonomy cmd vel topic	~%uint8 TELEOPERATION = 2        		# Robot is controlled by the teleoperation cmd vel topic	~%~%uint8 mode							# Operation mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OperationMode)))
  "Returns full string definition for message of type 'OperationMode"
  (cl:format cl:nil "#Operation mode including information about emergency stop~%bool emergencyStop					# Is emergency stop activated~%~%uint8 STOPPED = 0        			# Robot is stopped~%uint8 AUTONOMOUS = 1     			# Robot is controlled by the autonomy cmd vel topic	~%uint8 TELEOPERATION = 2        		# Robot is controlled by the teleoperation cmd vel topic	~%~%uint8 mode							# Operation mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OperationMode>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OperationMode>))
  "Converts a ROS message object to a list"
  (cl:list 'OperationMode
    (cl:cons ':emergencyStop (emergencyStop msg))
    (cl:cons ':mode (mode msg))
))
