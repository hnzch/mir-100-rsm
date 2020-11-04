;; Auto-generated. Do not edit!


(when (boundp 'rsm_msgs::Waypoint)
  (if (not (find-package "RSM_MSGS"))
    (make-package "RSM_MSGS"))
  (shadow 'Waypoint (find-package "RSM_MSGS")))
(unless (find-package "RSM_MSGS::WAYPOINT")
  (make-package "RSM_MSGS::WAYPOINT"))

(in-package "ROS")
;;//! \htmlinclude Waypoint.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass rsm_msgs::Waypoint
  :super ros::object
  :slots (_pose _visited _unreachable _routine ))

(defmethod rsm_msgs::Waypoint
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:visited __visited) nil)
    ((:unreachable __unreachable) nil)
    ((:routine __routine) "")
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _visited __visited)
   (setq _unreachable __unreachable)
   (setq _routine (string __routine))
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:visited
   (&optional __visited)
   (if __visited (setq _visited __visited)) _visited)
  (:unreachable
   (&optional __unreachable)
   (if __unreachable (setq _unreachable __unreachable)) _unreachable)
  (:routine
   (&optional __routine)
   (if __routine (setq _routine __routine)) _routine)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; bool _visited
    1
    ;; bool _unreachable
    1
    ;; string _routine
    4 (length _routine)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; bool _visited
       (if _visited (write-byte -1 s) (write-byte 0 s))
     ;; bool _unreachable
       (if _unreachable (write-byte -1 s) (write-byte 0 s))
     ;; string _routine
       (write-long (length _routine) s) (princ _routine s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; bool _visited
     (setq _visited (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _unreachable
     (setq _unreachable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _routine
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _routine (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get rsm_msgs::Waypoint :md5sum-) "e7f7105595f3a7bcd97c4dc459c67269")
(setf (get rsm_msgs::Waypoint :datatype-) "rsm_msgs/Waypoint")
(setf (get rsm_msgs::Waypoint :definition-)
      "#A waypoint for waypoint following
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



(provide :rsm_msgs/Waypoint "e7f7105595f3a7bcd97c4dc459c67269")


