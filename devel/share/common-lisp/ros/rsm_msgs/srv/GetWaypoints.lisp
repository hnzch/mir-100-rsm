; Auto-generated. Do not edit!


(cl:in-package rsm_msgs-srv)


;//! \htmlinclude GetWaypoints-request.msg.html

(cl:defclass <GetWaypoints-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetWaypoints-request (<GetWaypoints-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetWaypoints-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetWaypoints-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rsm_msgs-srv:<GetWaypoints-request> is deprecated: use rsm_msgs-srv:GetWaypoints-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetWaypoints-request>) ostream)
  "Serializes a message object of type '<GetWaypoints-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetWaypoints-request>) istream)
  "Deserializes a message object of type '<GetWaypoints-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetWaypoints-request>)))
  "Returns string type for a service object of type '<GetWaypoints-request>"
  "rsm_msgs/GetWaypointsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetWaypoints-request)))
  "Returns string type for a service object of type 'GetWaypoints-request"
  "rsm_msgs/GetWaypointsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetWaypoints-request>)))
  "Returns md5sum for a message object of type '<GetWaypoints-request>"
  "ea0a0717f7375d28edf3c4cefe8095da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetWaypoints-request)))
  "Returns md5sum for a message object of type 'GetWaypoints-request"
  "ea0a0717f7375d28edf3c4cefe8095da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetWaypoints-request>)))
  "Returns full string definition for message of type '<GetWaypoints-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetWaypoints-request)))
  "Returns full string definition for message of type 'GetWaypoints-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetWaypoints-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetWaypoints-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetWaypoints-request
))
;//! \htmlinclude GetWaypoints-response.msg.html

(cl:defclass <GetWaypoints-response> (roslisp-msg-protocol:ros-message)
  ((waypointArray
    :reader waypointArray
    :initarg :waypointArray
    :type rsm_msgs-msg:WaypointArray
    :initform (cl:make-instance 'rsm_msgs-msg:WaypointArray)))
)

(cl:defclass GetWaypoints-response (<GetWaypoints-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetWaypoints-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetWaypoints-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rsm_msgs-srv:<GetWaypoints-response> is deprecated: use rsm_msgs-srv:GetWaypoints-response instead.")))

(cl:ensure-generic-function 'waypointArray-val :lambda-list '(m))
(cl:defmethod waypointArray-val ((m <GetWaypoints-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rsm_msgs-srv:waypointArray-val is deprecated.  Use rsm_msgs-srv:waypointArray instead.")
  (waypointArray m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetWaypoints-response>) ostream)
  "Serializes a message object of type '<GetWaypoints-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'waypointArray) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetWaypoints-response>) istream)
  "Deserializes a message object of type '<GetWaypoints-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'waypointArray) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetWaypoints-response>)))
  "Returns string type for a service object of type '<GetWaypoints-response>"
  "rsm_msgs/GetWaypointsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetWaypoints-response)))
  "Returns string type for a service object of type 'GetWaypoints-response"
  "rsm_msgs/GetWaypointsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetWaypoints-response>)))
  "Returns md5sum for a message object of type '<GetWaypoints-response>"
  "ea0a0717f7375d28edf3c4cefe8095da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetWaypoints-response)))
  "Returns md5sum for a message object of type 'GetWaypoints-response"
  "ea0a0717f7375d28edf3c4cefe8095da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetWaypoints-response>)))
  "Returns full string definition for message of type '<GetWaypoints-response>"
  (cl:format cl:nil "rsm_msgs/WaypointArray waypointArray   # Array of all waypoints~%~%~%================================================================================~%MSG: rsm_msgs/WaypointArray~%# Describes an array of waypoints to follow~%std_msgs/Header header~%string ns~%~%uint8 mode              # Waypoint following mode~%~%uint8 SINGLE = 0        # Single trip from start to end~%uint8 ROUNDTRIP = 1     # Drive from start to end then to start again and repeat~%uint8 PATROL = 2        # Drive from start to end then in reverse and repeat~%~%bool reverse            # Driving from start to end (=false) or end to start (=true)~%~%Waypoint[] waypoints    # Array of all waypoints for following~%int32 waypoints_size     # Number of waypoints in the waypoint array~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: rsm_msgs/Waypoint~%#A waypoint for waypoint following~%geometry_msgs/Pose pose     # Pose of this waypoint~%bool visited                # True if the waypoint was already visited~%bool unreachable			# True if no path to this waypoint could be found~%string routine				# Routine to be executed on reaching waypoint~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetWaypoints-response)))
  "Returns full string definition for message of type 'GetWaypoints-response"
  (cl:format cl:nil "rsm_msgs/WaypointArray waypointArray   # Array of all waypoints~%~%~%================================================================================~%MSG: rsm_msgs/WaypointArray~%# Describes an array of waypoints to follow~%std_msgs/Header header~%string ns~%~%uint8 mode              # Waypoint following mode~%~%uint8 SINGLE = 0        # Single trip from start to end~%uint8 ROUNDTRIP = 1     # Drive from start to end then to start again and repeat~%uint8 PATROL = 2        # Drive from start to end then in reverse and repeat~%~%bool reverse            # Driving from start to end (=false) or end to start (=true)~%~%Waypoint[] waypoints    # Array of all waypoints for following~%int32 waypoints_size     # Number of waypoints in the waypoint array~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: rsm_msgs/Waypoint~%#A waypoint for waypoint following~%geometry_msgs/Pose pose     # Pose of this waypoint~%bool visited                # True if the waypoint was already visited~%bool unreachable			# True if no path to this waypoint could be found~%string routine				# Routine to be executed on reaching waypoint~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetWaypoints-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'waypointArray))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetWaypoints-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetWaypoints-response
    (cl:cons ':waypointArray (waypointArray msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetWaypoints)))
  'GetWaypoints-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetWaypoints)))
  'GetWaypoints-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetWaypoints)))
  "Returns string type for a service object of type '<GetWaypoints>"
  "rsm_msgs/GetWaypoints")