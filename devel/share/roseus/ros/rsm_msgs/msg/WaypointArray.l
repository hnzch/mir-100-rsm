;; Auto-generated. Do not edit!


(when (boundp 'rsm_msgs::WaypointArray)
  (if (not (find-package "RSM_MSGS"))
    (make-package "RSM_MSGS"))
  (shadow 'WaypointArray (find-package "RSM_MSGS")))
(unless (find-package "RSM_MSGS::WAYPOINTARRAY")
  (make-package "RSM_MSGS::WAYPOINTARRAY"))

(in-package "ROS")
;;//! \htmlinclude WaypointArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*SINGLE*" (find-package "RSM_MSGS::WAYPOINTARRAY"))
(shadow '*SINGLE* (find-package "RSM_MSGS::WAYPOINTARRAY"))
(defconstant rsm_msgs::WaypointArray::*SINGLE* 0)
(intern "*ROUNDTRIP*" (find-package "RSM_MSGS::WAYPOINTARRAY"))
(shadow '*ROUNDTRIP* (find-package "RSM_MSGS::WAYPOINTARRAY"))
(defconstant rsm_msgs::WaypointArray::*ROUNDTRIP* 1)
(intern "*PATROL*" (find-package "RSM_MSGS::WAYPOINTARRAY"))
(shadow '*PATROL* (find-package "RSM_MSGS::WAYPOINTARRAY"))
(defconstant rsm_msgs::WaypointArray::*PATROL* 2)
(defclass rsm_msgs::WaypointArray
  :super ros::object
  :slots (_header _ns _mode _reverse _waypoints _waypoints_size ))

(defmethod rsm_msgs::WaypointArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ns __ns) "")
    ((:mode __mode) 0)
    ((:reverse __reverse) nil)
    ((:waypoints __waypoints) (let (r) (dotimes (i 0) (push (instance rsm_msgs::Waypoint :init) r)) r))
    ((:waypoints_size __waypoints_size) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _ns (string __ns))
   (setq _mode (round __mode))
   (setq _reverse __reverse)
   (setq _waypoints __waypoints)
   (setq _waypoints_size (round __waypoints_size))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:ns
   (&optional __ns)
   (if __ns (setq _ns __ns)) _ns)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:reverse
   (&optional __reverse)
   (if __reverse (setq _reverse __reverse)) _reverse)
  (:waypoints
   (&rest __waypoints)
   (if (keywordp (car __waypoints))
       (send* _waypoints __waypoints)
     (progn
       (if __waypoints (setq _waypoints (car __waypoints)))
       _waypoints)))
  (:waypoints_size
   (&optional __waypoints_size)
   (if __waypoints_size (setq _waypoints_size __waypoints_size)) _waypoints_size)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _ns
    4 (length _ns)
    ;; uint8 _mode
    1
    ;; bool _reverse
    1
    ;; rsm_msgs/Waypoint[] _waypoints
    (apply #'+ (send-all _waypoints :serialization-length)) 4
    ;; int32 _waypoints_size
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _ns
       (write-long (length _ns) s) (princ _ns s)
     ;; uint8 _mode
       (write-byte _mode s)
     ;; bool _reverse
       (if _reverse (write-byte -1 s) (write-byte 0 s))
     ;; rsm_msgs/Waypoint[] _waypoints
     (write-long (length _waypoints) s)
     (dolist (elem _waypoints)
       (send elem :serialize s)
       )
     ;; int32 _waypoints_size
       (write-long _waypoints_size s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _ns
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ns (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _reverse
     (setq _reverse (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; rsm_msgs/Waypoint[] _waypoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _waypoints (let (r) (dotimes (i n) (push (instance rsm_msgs::Waypoint :init) r)) r))
     (dolist (elem- _waypoints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int32 _waypoints_size
     (setq _waypoints_size (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rsm_msgs::WaypointArray :md5sum-) "5a09542c5f13ea180a4b1ecb5cbd9ab8")
(setf (get rsm_msgs::WaypointArray :datatype-) "rsm_msgs/WaypointArray")
(setf (get rsm_msgs::WaypointArray :definition-)
      "# Describes an array of waypoints to follow
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



(provide :rsm_msgs/WaypointArray "5a09542c5f13ea180a4b1ecb5cbd9ab8")


