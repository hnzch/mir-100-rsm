; Auto-generated. Do not edit!


(cl:in-package rsm_msgs-msg)


;//! \htmlinclude WaypointArray.msg.html

(cl:defclass <WaypointArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (ns
    :reader ns
    :initarg :ns
    :type cl:string
    :initform "")
   (mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0)
   (reverse
    :reader reverse
    :initarg :reverse
    :type cl:boolean
    :initform cl:nil)
   (waypoints
    :reader waypoints
    :initarg :waypoints
    :type (cl:vector rsm_msgs-msg:Waypoint)
   :initform (cl:make-array 0 :element-type 'rsm_msgs-msg:Waypoint :initial-element (cl:make-instance 'rsm_msgs-msg:Waypoint)))
   (waypoints_size
    :reader waypoints_size
    :initarg :waypoints_size
    :type cl:integer
    :initform 0))
)

(cl:defclass WaypointArray (<WaypointArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaypointArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaypointArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rsm_msgs-msg:<WaypointArray> is deprecated: use rsm_msgs-msg:WaypointArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <WaypointArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rsm_msgs-msg:header-val is deprecated.  Use rsm_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'ns-val :lambda-list '(m))
(cl:defmethod ns-val ((m <WaypointArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rsm_msgs-msg:ns-val is deprecated.  Use rsm_msgs-msg:ns instead.")
  (ns m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <WaypointArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rsm_msgs-msg:mode-val is deprecated.  Use rsm_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'reverse-val :lambda-list '(m))
(cl:defmethod reverse-val ((m <WaypointArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rsm_msgs-msg:reverse-val is deprecated.  Use rsm_msgs-msg:reverse instead.")
  (reverse m))

(cl:ensure-generic-function 'waypoints-val :lambda-list '(m))
(cl:defmethod waypoints-val ((m <WaypointArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rsm_msgs-msg:waypoints-val is deprecated.  Use rsm_msgs-msg:waypoints instead.")
  (waypoints m))

(cl:ensure-generic-function 'waypoints_size-val :lambda-list '(m))
(cl:defmethod waypoints_size-val ((m <WaypointArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rsm_msgs-msg:waypoints_size-val is deprecated.  Use rsm_msgs-msg:waypoints_size instead.")
  (waypoints_size m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<WaypointArray>)))
    "Constants for message type '<WaypointArray>"
  '((:SINGLE . 0)
    (:ROUNDTRIP . 1)
    (:PATROL . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'WaypointArray)))
    "Constants for message type 'WaypointArray"
  '((:SINGLE . 0)
    (:ROUNDTRIP . 1)
    (:PATROL . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaypointArray>) ostream)
  "Serializes a message object of type '<WaypointArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ns))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ns))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reverse) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'waypoints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'waypoints))
  (cl:let* ((signed (cl:slot-value msg 'waypoints_size)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaypointArray>) istream)
  "Deserializes a message object of type '<WaypointArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ns) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ns) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'reverse) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'waypoints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'waypoints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rsm_msgs-msg:Waypoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'waypoints_size) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaypointArray>)))
  "Returns string type for a message object of type '<WaypointArray>"
  "rsm_msgs/WaypointArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointArray)))
  "Returns string type for a message object of type 'WaypointArray"
  "rsm_msgs/WaypointArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaypointArray>)))
  "Returns md5sum for a message object of type '<WaypointArray>"
  "5a09542c5f13ea180a4b1ecb5cbd9ab8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaypointArray)))
  "Returns md5sum for a message object of type 'WaypointArray"
  "5a09542c5f13ea180a4b1ecb5cbd9ab8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaypointArray>)))
  "Returns full string definition for message of type '<WaypointArray>"
  (cl:format cl:nil "# Describes an array of waypoints to follow~%std_msgs/Header header~%string ns~%~%uint8 mode              # Waypoint following mode~%~%uint8 SINGLE = 0        # Single trip from start to end~%uint8 ROUNDTRIP = 1     # Drive from start to end then to start again and repeat~%uint8 PATROL = 2        # Drive from start to end then in reverse and repeat~%~%bool reverse            # Driving from start to end (=false) or end to start (=true)~%~%Waypoint[] waypoints    # Array of all waypoints for following~%int32 waypoints_size     # Number of waypoints in the waypoint array~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: rsm_msgs/Waypoint~%#A waypoint for waypoint following~%geometry_msgs/Pose pose     # Pose of this waypoint~%bool visited                # True if the waypoint was already visited~%bool unreachable			# True if no path to this waypoint could be found~%string routine				# Routine to be executed on reaching waypoint~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaypointArray)))
  "Returns full string definition for message of type 'WaypointArray"
  (cl:format cl:nil "# Describes an array of waypoints to follow~%std_msgs/Header header~%string ns~%~%uint8 mode              # Waypoint following mode~%~%uint8 SINGLE = 0        # Single trip from start to end~%uint8 ROUNDTRIP = 1     # Drive from start to end then to start again and repeat~%uint8 PATROL = 2        # Drive from start to end then in reverse and repeat~%~%bool reverse            # Driving from start to end (=false) or end to start (=true)~%~%Waypoint[] waypoints    # Array of all waypoints for following~%int32 waypoints_size     # Number of waypoints in the waypoint array~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: rsm_msgs/Waypoint~%#A waypoint for waypoint following~%geometry_msgs/Pose pose     # Pose of this waypoint~%bool visited                # True if the waypoint was already visited~%bool unreachable			# True if no path to this waypoint could be found~%string routine				# Routine to be executed on reaching waypoint~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaypointArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'ns))
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'waypoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaypointArray>))
  "Converts a ROS message object to a list"
  (cl:list 'WaypointArray
    (cl:cons ':header (header msg))
    (cl:cons ':ns (ns msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':reverse (reverse msg))
    (cl:cons ':waypoints (waypoints msg))
    (cl:cons ':waypoints_size (waypoints_size msg))
))
