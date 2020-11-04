;; Auto-generated. Do not edit!


(when (boundp 'rsm_msgs::GetWaypoints)
  (if (not (find-package "RSM_MSGS"))
    (make-package "RSM_MSGS"))
  (shadow 'GetWaypoints (find-package "RSM_MSGS")))
(unless (find-package "RSM_MSGS::GETWAYPOINTS")
  (make-package "RSM_MSGS::GETWAYPOINTS"))
(unless (find-package "RSM_MSGS::GETWAYPOINTSREQUEST")
  (make-package "RSM_MSGS::GETWAYPOINTSREQUEST"))
(unless (find-package "RSM_MSGS::GETWAYPOINTSRESPONSE")
  (make-package "RSM_MSGS::GETWAYPOINTSRESPONSE"))

(in-package "ROS")





(defclass rsm_msgs::GetWaypointsRequest
  :super ros::object
  :slots ())

(defmethod rsm_msgs::GetWaypointsRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass rsm_msgs::GetWaypointsResponse
  :super ros::object
  :slots (_waypointArray ))

(defmethod rsm_msgs::GetWaypointsResponse
  (:init
   (&key
    ((:waypointArray __waypointArray) (instance rsm_msgs::WaypointArray :init))
    )
   (send-super :init)
   (setq _waypointArray __waypointArray)
   self)
  (:waypointArray
   (&rest __waypointArray)
   (if (keywordp (car __waypointArray))
       (send* _waypointArray __waypointArray)
     (progn
       (if __waypointArray (setq _waypointArray (car __waypointArray)))
       _waypointArray)))
  (:serialization-length
   ()
   (+
    ;; rsm_msgs/WaypointArray _waypointArray
    (send _waypointArray :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; rsm_msgs/WaypointArray _waypointArray
       (send _waypointArray :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; rsm_msgs/WaypointArray _waypointArray
     (send _waypointArray :deserialize buf ptr-) (incf ptr- (send _waypointArray :serialization-length))
   ;;
   self)
  )

(defclass rsm_msgs::GetWaypoints
  :super ros::object
  :slots ())

(setf (get rsm_msgs::GetWaypoints :md5sum-) "ea0a0717f7375d28edf3c4cefe8095da")
(setf (get rsm_msgs::GetWaypoints :datatype-) "rsm_msgs/GetWaypoints")
(setf (get rsm_msgs::GetWaypoints :request) rsm_msgs::GetWaypointsRequest)
(setf (get rsm_msgs::GetWaypoints :response) rsm_msgs::GetWaypointsResponse)

(defmethod rsm_msgs::GetWaypointsRequest
  (:response () (instance rsm_msgs::GetWaypointsResponse :init)))

(setf (get rsm_msgs::GetWaypointsRequest :md5sum-) "ea0a0717f7375d28edf3c4cefe8095da")
(setf (get rsm_msgs::GetWaypointsRequest :datatype-) "rsm_msgs/GetWaypointsRequest")
(setf (get rsm_msgs::GetWaypointsRequest :definition-)
      "---
rsm_msgs/WaypointArray waypointArray   # Array of all waypoints


================================================================================
MSG: rsm_msgs/WaypointArray
# Describes an array of waypoints to follow
std_msgs/Header header
string ns

uint8 mode              # Waypoint following mode

uint8 SINGLE = 0        # Single trip from start to end
uint8 ROUNDTRIP = 1     # Drive from start to end then to start again and repeat
uint8 PATROL = 2        # Drive from start to end then in reverse and repeat

bool reverse            # Driving from start to end (=false) or end to start (=true)

Waypoint[] waypoints    # Array of all waypoints for following
int32 waypoints_size     # Number of waypoints in the waypoint array

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: rsm_msgs/Waypoint
#A waypoint for waypoint following
geometry_msgs/Pose pose     # Pose of this waypoint
bool visited                # True if the waypoint was already visited
bool unreachable			# True if no path to this waypoint could be found
string routine				# Routine to be executed on reaching waypoint
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")

(setf (get rsm_msgs::GetWaypointsResponse :md5sum-) "ea0a0717f7375d28edf3c4cefe8095da")
(setf (get rsm_msgs::GetWaypointsResponse :datatype-) "rsm_msgs/GetWaypointsResponse")
(setf (get rsm_msgs::GetWaypointsResponse :definition-)
      "---
rsm_msgs/WaypointArray waypointArray   # Array of all waypoints


================================================================================
MSG: rsm_msgs/WaypointArray
# Describes an array of waypoints to follow
std_msgs/Header header
string ns

uint8 mode              # Waypoint following mode

uint8 SINGLE = 0        # Single trip from start to end
uint8 ROUNDTRIP = 1     # Drive from start to end then to start again and repeat
uint8 PATROL = 2        # Drive from start to end then in reverse and repeat

bool reverse            # Driving from start to end (=false) or end to start (=true)

Waypoint[] waypoints    # Array of all waypoints for following
int32 waypoints_size     # Number of waypoints in the waypoint array

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: rsm_msgs/Waypoint
#A waypoint for waypoint following
geometry_msgs/Pose pose     # Pose of this waypoint
bool visited                # True if the waypoint was already visited
bool unreachable			# True if no path to this waypoint could be found
string routine				# Routine to be executed on reaching waypoint
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")



(provide :rsm_msgs/GetWaypoints "ea0a0717f7375d28edf3c4cefe8095da")


