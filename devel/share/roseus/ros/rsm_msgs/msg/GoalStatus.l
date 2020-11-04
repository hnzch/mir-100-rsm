;; Auto-generated. Do not edit!


(when (boundp 'rsm_msgs::GoalStatus)
  (if (not (find-package "RSM_MSGS"))
    (make-package "RSM_MSGS"))
  (shadow 'GoalStatus (find-package "RSM_MSGS")))
(unless (find-package "RSM_MSGS::GOALSTATUS")
  (make-package "RSM_MSGS::GOALSTATUS"))

(in-package "ROS")
;;//! \htmlinclude GoalStatus.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*ACTIVE*" (find-package "RSM_MSGS::GOALSTATUS"))
(shadow '*ACTIVE* (find-package "RSM_MSGS::GOALSTATUS"))
(defconstant rsm_msgs::GoalStatus::*ACTIVE* 0)
(intern "*REACHED*" (find-package "RSM_MSGS::GOALSTATUS"))
(shadow '*REACHED* (find-package "RSM_MSGS::GOALSTATUS"))
(defconstant rsm_msgs::GoalStatus::*REACHED* 1)
(intern "*FAILED*" (find-package "RSM_MSGS::GOALSTATUS"))
(shadow '*FAILED* (find-package "RSM_MSGS::GOALSTATUS"))
(defconstant rsm_msgs::GoalStatus::*FAILED* 2)
(intern "*ABORTED*" (find-package "RSM_MSGS::GOALSTATUS"))
(shadow '*ABORTED* (find-package "RSM_MSGS::GOALSTATUS"))
(defconstant rsm_msgs::GoalStatus::*ABORTED* 3)
(defclass rsm_msgs::GoalStatus
  :super ros::object
  :slots (_goal _goal_status ))

(defmethod rsm_msgs::GoalStatus
  (:init
   (&key
    ((:goal __goal) (instance geometry_msgs::Pose :init))
    ((:goal_status __goal_status) 0)
    )
   (send-super :init)
   (setq _goal __goal)
   (setq _goal_status (round __goal_status))
   self)
  (:goal
   (&rest __goal)
   (if (keywordp (car __goal))
       (send* _goal __goal)
     (progn
       (if __goal (setq _goal (car __goal)))
       _goal)))
  (:goal_status
   (&optional __goal_status)
   (if __goal_status (setq _goal_status __goal_status)) _goal_status)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _goal
    (send _goal :serialization-length)
    ;; uint8 _goal_status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _goal
       (send _goal :serialize s)
     ;; uint8 _goal_status
       (write-byte _goal_status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _goal
     (send _goal :deserialize buf ptr-) (incf ptr- (send _goal :serialization-length))
   ;; uint8 _goal_status
     (setq _goal_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get rsm_msgs::GoalStatus :md5sum-) "d846ca20fc8170d57b2d738bb5885a3e")
(setf (get rsm_msgs::GoalStatus :datatype-) "rsm_msgs/GoalStatus")
(setf (get rsm_msgs::GoalStatus :definition-)
      "#Information about currently active goal
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

")



(provide :rsm_msgs/GoalStatus "d846ca20fc8170d57b2d738bb5885a3e")


