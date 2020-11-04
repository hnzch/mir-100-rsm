;; Auto-generated. Do not edit!


(when (boundp 'rsm_msgs::GetNavigationGoal)
  (if (not (find-package "RSM_MSGS"))
    (make-package "RSM_MSGS"))
  (shadow 'GetNavigationGoal (find-package "RSM_MSGS")))
(unless (find-package "RSM_MSGS::GETNAVIGATIONGOAL")
  (make-package "RSM_MSGS::GETNAVIGATIONGOAL"))
(unless (find-package "RSM_MSGS::GETNAVIGATIONGOALREQUEST")
  (make-package "RSM_MSGS::GETNAVIGATIONGOALREQUEST"))
(unless (find-package "RSM_MSGS::GETNAVIGATIONGOALRESPONSE")
  (make-package "RSM_MSGS::GETNAVIGATIONGOALRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass rsm_msgs::GetNavigationGoalRequest
  :super ros::object
  :slots ())

(defmethod rsm_msgs::GetNavigationGoalRequest
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

(defclass rsm_msgs::GetNavigationGoalResponse
  :super ros::object
  :slots (_goal _navigationMode _waypointPosition _routine ))

(defmethod rsm_msgs::GetNavigationGoalResponse
  (:init
   (&key
    ((:goal __goal) (instance geometry_msgs::Pose :init))
    ((:navigationMode __navigationMode) 0)
    ((:waypointPosition __waypointPosition) 0)
    ((:routine __routine) "")
    )
   (send-super :init)
   (setq _goal __goal)
   (setq _navigationMode (round __navigationMode))
   (setq _waypointPosition (round __waypointPosition))
   (setq _routine (string __routine))
   self)
  (:goal
   (&rest __goal)
   (if (keywordp (car __goal))
       (send* _goal __goal)
     (progn
       (if __goal (setq _goal (car __goal)))
       _goal)))
  (:navigationMode
   (&optional __navigationMode)
   (if __navigationMode (setq _navigationMode __navigationMode)) _navigationMode)
  (:waypointPosition
   (&optional __waypointPosition)
   (if __waypointPosition (setq _waypointPosition __waypointPosition)) _waypointPosition)
  (:routine
   (&optional __routine)
   (if __routine (setq _routine __routine)) _routine)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _goal
    (send _goal :serialization-length)
    ;; int8 _navigationMode
    1
    ;; int64 _waypointPosition
    8
    ;; string _routine
    4 (length _routine)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _goal
       (send _goal :serialize s)
     ;; int8 _navigationMode
       (write-byte _navigationMode s)
     ;; int64 _waypointPosition
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _waypointPosition (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _waypointPosition) (= (length (_waypointPosition . bv)) 2)) ;; bignum
              (write-long (ash (elt (_waypointPosition . bv) 0) 0) s)
              (write-long (ash (elt (_waypointPosition . bv) 1) -1) s))
             ((and (class _waypointPosition) (= (length (_waypointPosition . bv)) 1)) ;; big1
              (write-long (elt (_waypointPosition . bv) 0) s)
              (write-long (if (>= _waypointPosition 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _waypointPosition s)(write-long (if (>= _waypointPosition 0) 0 #xffffffff) s)))
     ;; string _routine
       (write-long (length _routine) s) (princ _routine s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _goal
     (send _goal :deserialize buf ptr-) (incf ptr- (send _goal :serialization-length))
   ;; int8 _navigationMode
     (setq _navigationMode (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _navigationMode 127) (setq _navigationMode (- _navigationMode 256)))
   ;; int64 _waypointPosition
#+(or :alpha :irix6 :x86_64)
      (setf _waypointPosition (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _waypointPosition (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; string _routine
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _routine (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass rsm_msgs::GetNavigationGoal
  :super ros::object
  :slots ())

(setf (get rsm_msgs::GetNavigationGoal :md5sum-) "a8db7cf04440217a23ad35e776985384")
(setf (get rsm_msgs::GetNavigationGoal :datatype-) "rsm_msgs/GetNavigationGoal")
(setf (get rsm_msgs::GetNavigationGoal :request) rsm_msgs::GetNavigationGoalRequest)
(setf (get rsm_msgs::GetNavigationGoal :response) rsm_msgs::GetNavigationGoalResponse)

(defmethod rsm_msgs::GetNavigationGoalRequest
  (:response () (instance rsm_msgs::GetNavigationGoalResponse :init)))

(setf (get rsm_msgs::GetNavigationGoalRequest :md5sum-) "a8db7cf04440217a23ad35e776985384")
(setf (get rsm_msgs::GetNavigationGoalRequest :datatype-) "rsm_msgs/GetNavigationGoalRequest")
(setf (get rsm_msgs::GetNavigationGoalRequest :definition-)
      "---
geometry_msgs/Pose goal 			# Goal for navigation
int8 navigationMode					# Mode of navigation (Exploration=0, Waypoint following=1 and Simple Goal=2)
int64 waypointPosition				# Position of waypoint in array
string routine						# Routine plugin name to be executed at waypoint

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

(setf (get rsm_msgs::GetNavigationGoalResponse :md5sum-) "a8db7cf04440217a23ad35e776985384")
(setf (get rsm_msgs::GetNavigationGoalResponse :datatype-) "rsm_msgs/GetNavigationGoalResponse")
(setf (get rsm_msgs::GetNavigationGoalResponse :definition-)
      "---
geometry_msgs/Pose goal 			# Goal for navigation
int8 navigationMode					# Mode of navigation (Exploration=0, Waypoint following=1 and Simple Goal=2)
int64 waypointPosition				# Position of waypoint in array
string routine						# Routine plugin name to be executed at waypoint

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



(provide :rsm_msgs/GetNavigationGoal "a8db7cf04440217a23ad35e776985384")


