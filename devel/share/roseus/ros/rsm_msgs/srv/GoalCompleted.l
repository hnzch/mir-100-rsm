;; Auto-generated. Do not edit!


(when (boundp 'rsm_msgs::GoalCompleted)
  (if (not (find-package "RSM_MSGS"))
    (make-package "RSM_MSGS"))
  (shadow 'GoalCompleted (find-package "RSM_MSGS")))
(unless (find-package "RSM_MSGS::GOALCOMPLETED")
  (make-package "RSM_MSGS::GOALCOMPLETED"))
(unless (find-package "RSM_MSGS::GOALCOMPLETEDREQUEST")
  (make-package "RSM_MSGS::GOALCOMPLETEDREQUEST"))
(unless (find-package "RSM_MSGS::GOALCOMPLETEDRESPONSE")
  (make-package "RSM_MSGS::GOALCOMPLETEDRESPONSE"))

(in-package "ROS")





(defclass rsm_msgs::GoalCompletedRequest
  :super ros::object
  :slots (_status ))

(defmethod rsm_msgs::GoalCompletedRequest
  (:init
   (&key
    ((:status __status) (instance rsm_msgs::GoalStatus :init))
    )
   (send-super :init)
   (setq _status __status)
   self)
  (:status
   (&rest __status)
   (if (keywordp (car __status))
       (send* _status __status)
     (progn
       (if __status (setq _status (car __status)))
       _status)))
  (:serialization-length
   ()
   (+
    ;; rsm_msgs/GoalStatus _status
    (send _status :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; rsm_msgs/GoalStatus _status
       (send _status :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; rsm_msgs/GoalStatus _status
     (send _status :deserialize buf ptr-) (incf ptr- (send _status :serialization-length))
   ;;
   self)
  )

(defclass rsm_msgs::GoalCompletedResponse
  :super ros::object
  :slots (_success _message ))

(defmethod rsm_msgs::GoalCompletedResponse
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

(defclass rsm_msgs::GoalCompleted
  :super ros::object
  :slots ())

(setf (get rsm_msgs::GoalCompleted :md5sum-) "a69cf0e7e0685d899e584ceb18804a9e")
(setf (get rsm_msgs::GoalCompleted :datatype-) "rsm_msgs/GoalCompleted")
(setf (get rsm_msgs::GoalCompleted :request) rsm_msgs::GoalCompletedRequest)
(setf (get rsm_msgs::GoalCompleted :response) rsm_msgs::GoalCompletedResponse)

(defmethod rsm_msgs::GoalCompletedRequest
  (:response () (instance rsm_msgs::GoalCompletedResponse :init)))

(setf (get rsm_msgs::GoalCompletedRequest :md5sum-) "a69cf0e7e0685d899e584ceb18804a9e")
(setf (get rsm_msgs::GoalCompletedRequest :datatype-) "rsm_msgs/GoalCompletedRequest")
(setf (get rsm_msgs::GoalCompletedRequest :definition-)
      "rsm_msgs/GoalStatus status			# Goal status

================================================================================
MSG: rsm_msgs/GoalStatus
#Information about currently active goal
geometry_msgs/Pose goal			 	# Goal in the map
uint8 goal_status					# Status of the goal 

uint8 ACTIVE = 0       				# Goal is still active
uint8 REACHED = 1       			# Goal was successfully reached
uint8 FAILED = 2        			# Failed to reach goal
uint8 ABORTED = 3        			# Aborted goal before completion
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

(setf (get rsm_msgs::GoalCompletedResponse :md5sum-) "a69cf0e7e0685d899e584ceb18804a9e")
(setf (get rsm_msgs::GoalCompletedResponse :datatype-) "rsm_msgs/GoalCompletedResponse")
(setf (get rsm_msgs::GoalCompletedResponse :definition-)
      "rsm_msgs/GoalStatus status			# Goal status

================================================================================
MSG: rsm_msgs/GoalStatus
#Information about currently active goal
geometry_msgs/Pose goal			 	# Goal in the map
uint8 goal_status					# Status of the goal 

uint8 ACTIVE = 0       				# Goal is still active
uint8 REACHED = 1       			# Goal was successfully reached
uint8 FAILED = 2        			# Failed to reach goal
uint8 ABORTED = 3        			# Aborted goal before completion
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



(provide :rsm_msgs/GoalCompleted "a69cf0e7e0685d899e584ceb18804a9e")


