;; Auto-generated. Do not edit!


(when (boundp 'rsm_msgs::AddWaypoint)
  (if (not (find-package "RSM_MSGS"))
    (make-package "RSM_MSGS"))
  (shadow 'AddWaypoint (find-package "RSM_MSGS")))
(unless (find-package "RSM_MSGS::ADDWAYPOINT")
  (make-package "RSM_MSGS::ADDWAYPOINT"))
(unless (find-package "RSM_MSGS::ADDWAYPOINTREQUEST")
  (make-package "RSM_MSGS::ADDWAYPOINTREQUEST"))
(unless (find-package "RSM_MSGS::ADDWAYPOINTRESPONSE")
  (make-package "RSM_MSGS::ADDWAYPOINTRESPONSE"))

(in-package "ROS")





(defclass rsm_msgs::AddWaypointRequest
  :super ros::object
  :slots (_waypoint _position ))

(defmethod rsm_msgs::AddWaypointRequest
  (:init
   (&key
    ((:waypoint __waypoint) (instance rsm_msgs::Waypoint :init))
    ((:position __position) 0)
    )
   (send-super :init)
   (setq _waypoint __waypoint)
   (setq _position (round __position))
   self)
  (:waypoint
   (&rest __waypoint)
   (if (keywordp (car __waypoint))
       (send* _waypoint __waypoint)
     (progn
       (if __waypoint (setq _waypoint (car __waypoint)))
       _waypoint)))
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:serialization-length
   ()
   (+
    ;; rsm_msgs/Waypoint _waypoint
    (send _waypoint :serialization-length)
    ;; int64 _position
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; rsm_msgs/Waypoint _waypoint
       (send _waypoint :serialize s)
     ;; int64 _position
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _position (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _position) (= (length (_position . bv)) 2)) ;; bignum
              (write-long (ash (elt (_position . bv) 0) 0) s)
              (write-long (ash (elt (_position . bv) 1) -1) s))
             ((and (class _position) (= (length (_position . bv)) 1)) ;; big1
              (write-long (elt (_position . bv) 0) s)
              (write-long (if (>= _position 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _position s)(write-long (if (>= _position 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; rsm_msgs/Waypoint _waypoint
     (send _waypoint :deserialize buf ptr-) (incf ptr- (send _waypoint :serialization-length))
   ;; int64 _position
#+(or :alpha :irix6 :x86_64)
      (setf _position (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _position (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass rsm_msgs::AddWaypointResponse
  :super ros::object
  :slots (_success _message ))

(defmethod rsm_msgs::AddWaypointResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass rsm_msgs::AddWaypoint
  :super ros::object
  :slots ())

(setf (get rsm_msgs::AddWaypoint :md5sum-) "d88eb2b30f47caccaa78915d02fcd7a0")
(setf (get rsm_msgs::AddWaypoint :datatype-) "rsm_msgs/AddWaypoint")
(setf (get rsm_msgs::AddWaypoint :request) rsm_msgs::AddWaypointRequest)
(setf (get rsm_msgs::AddWaypoint :response) rsm_msgs::AddWaypointResponse)

(defmethod rsm_msgs::AddWaypointRequest
  (:response () (instance rsm_msgs::AddWaypointResponse :init)))

(setf (get rsm_msgs::AddWaypointRequest :md5sum-) "d88eb2b30f47caccaa78915d02fcd7a0")
(setf (get rsm_msgs::AddWaypointRequest :datatype-) "rsm_msgs/AddWaypointRequest")
(setf (get rsm_msgs::AddWaypointRequest :definition-)
      "rsm_msgs/Waypoint waypoint # Waypoint to be added
int64 position                      # Position in array where to add waypoint (-1 defaults to end of array)

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
---
bool success                        # Indicate successful run of triggered service
string message                      # Informational, e.g. for error messages
")

(setf (get rsm_msgs::AddWaypointResponse :md5sum-) "d88eb2b30f47caccaa78915d02fcd7a0")
(setf (get rsm_msgs::AddWaypointResponse :datatype-) "rsm_msgs/AddWaypointResponse")
(setf (get rsm_msgs::AddWaypointResponse :definition-)
      "rsm_msgs/Waypoint waypoint # Waypoint to be added
int64 position                      # Position in array where to add waypoint (-1 defaults to end of array)

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
---
bool success                        # Indicate successful run of triggered service
string message                      # Informational, e.g. for error messages
")



(provide :rsm_msgs/AddWaypoint "d88eb2b30f47caccaa78915d02fcd7a0")


