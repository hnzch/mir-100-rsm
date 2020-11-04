;; Auto-generated. Do not edit!


(when (boundp 'rsm_msgs::SetNavigationGoal)
  (if (not (find-package "RSM_MSGS"))
    (make-package "RSM_MSGS"))
  (shadow 'SetNavigationGoal (find-package "RSM_MSGS")))
(unless (find-package "RSM_MSGS::SETNAVIGATIONGOAL")
  (make-package "RSM_MSGS::SETNAVIGATIONGOAL"))
(unless (find-package "RSM_MSGS::SETNAVIGATIONGOALREQUEST")
  (make-package "RSM_MSGS::SETNAVIGATIONGOALREQUEST"))
(unless (find-package "RSM_MSGS::SETNAVIGATIONGOALRESPONSE")
  (make-package "RSM_MSGS::SETNAVIGATIONGOALRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass rsm_msgs::SetNavigationGoalRequest
  :super ros::object
  :slots (_goal _navigationMode _waypointPosition _routine ))

(defmethod rsm_msgs::SetNavigationGoalRequest
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

(defclass rsm_msgs::SetNavigationGoalResponse
  :super ros::object
  :slots (_success _message ))

(defmethod rsm_msgs::SetNavigationGoalResponse
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

(defclass rsm_msgs::SetNavigationGoal
  :super ros::object
  :slots ())

(setf (get rsm_msgs::SetNavigationGoal :md5sum-) "7f219f0d367008b829d419b8dccf0d16")
(setf (get rsm_msgs::SetNavigationGoal :datatype-) "rsm_msgs/SetNavigationGoal")
(setf (get rsm_msgs::SetNavigationGoal :request) rsm_msgs::SetNavigationGoalRequest)
(setf (get rsm_msgs::SetNavigationGoal :response) rsm_msgs::SetNavigationGoalResponse)

(defmethod rsm_msgs::SetNavigationGoalRequest
  (:response () (instance rsm_msgs::SetNavigationGoalResponse :init)))

(setf (get rsm_msgs::SetNavigationGoalRequest :md5sum-) "7f219f0d367008b829d419b8dccf0d16")
(setf (get rsm_msgs::SetNavigationGoalRequest :datatype-) "rsm_msgs/SetNavigationGoalRequest")
(setf (get rsm_msgs::SetNavigationGoalRequest :definition-)
      "geometry_msgs/Pose goal 			# Goal for navigation
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
---
bool success                        # Indicate successful run of triggered service
string message                      # Informational, e.g. for error messages
")

(setf (get rsm_msgs::SetNavigationGoalResponse :md5sum-) "7f219f0d367008b829d419b8dccf0d16")
(setf (get rsm_msgs::SetNavigationGoalResponse :datatype-) "rsm_msgs/SetNavigationGoalResponse")
(setf (get rsm_msgs::SetNavigationGoalResponse :definition-)
      "geometry_msgs/Pose goal 			# Goal for navigation
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
---
bool success                        # Indicate successful run of triggered service
string message                      # Informational, e.g. for error messages
")



(provide :rsm_msgs/SetNavigationGoal "7f219f0d367008b829d419b8dccf0d16")


