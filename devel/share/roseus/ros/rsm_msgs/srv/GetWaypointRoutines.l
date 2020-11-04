;; Auto-generated. Do not edit!


(when (boundp 'rsm_msgs::GetWaypointRoutines)
  (if (not (find-package "RSM_MSGS"))
    (make-package "RSM_MSGS"))
  (shadow 'GetWaypointRoutines (find-package "RSM_MSGS")))
(unless (find-package "RSM_MSGS::GETWAYPOINTROUTINES")
  (make-package "RSM_MSGS::GETWAYPOINTROUTINES"))
(unless (find-package "RSM_MSGS::GETWAYPOINTROUTINESREQUEST")
  (make-package "RSM_MSGS::GETWAYPOINTROUTINESREQUEST"))
(unless (find-package "RSM_MSGS::GETWAYPOINTROUTINESRESPONSE")
  (make-package "RSM_MSGS::GETWAYPOINTROUTINESRESPONSE"))

(in-package "ROS")





(defclass rsm_msgs::GetWaypointRoutinesRequest
  :super ros::object
  :slots ())

(defmethod rsm_msgs::GetWaypointRoutinesRequest
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

(defclass rsm_msgs::GetWaypointRoutinesResponse
  :super ros::object
  :slots (_waypointRoutines ))

(defmethod rsm_msgs::GetWaypointRoutinesResponse
  (:init
   (&key
    ((:waypointRoutines __waypointRoutines) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _waypointRoutines __waypointRoutines)
   self)
  (:waypointRoutines
   (&optional __waypointRoutines)
   (if __waypointRoutines (setq _waypointRoutines __waypointRoutines)) _waypointRoutines)
  (:serialization-length
   ()
   (+
    ;; string[] _waypointRoutines
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _waypointRoutines)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _waypointRoutines
     (write-long (length _waypointRoutines) s)
     (dolist (elem _waypointRoutines)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _waypointRoutines
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _waypointRoutines (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _waypointRoutines i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass rsm_msgs::GetWaypointRoutines
  :super ros::object
  :slots ())

(setf (get rsm_msgs::GetWaypointRoutines :md5sum-) "2b220fb1d6a56e5ac72aec59f32a9bf6")
(setf (get rsm_msgs::GetWaypointRoutines :datatype-) "rsm_msgs/GetWaypointRoutines")
(setf (get rsm_msgs::GetWaypointRoutines :request) rsm_msgs::GetWaypointRoutinesRequest)
(setf (get rsm_msgs::GetWaypointRoutines :response) rsm_msgs::GetWaypointRoutinesResponse)

(defmethod rsm_msgs::GetWaypointRoutinesRequest
  (:response () (instance rsm_msgs::GetWaypointRoutinesResponse :init)))

(setf (get rsm_msgs::GetWaypointRoutinesRequest :md5sum-) "2b220fb1d6a56e5ac72aec59f32a9bf6")
(setf (get rsm_msgs::GetWaypointRoutinesRequest :datatype-) "rsm_msgs/GetWaypointRoutinesRequest")
(setf (get rsm_msgs::GetWaypointRoutinesRequest :definition-)
      "---
string[] waypointRoutines		   		# Array of all waypoint routines available

")

(setf (get rsm_msgs::GetWaypointRoutinesResponse :md5sum-) "2b220fb1d6a56e5ac72aec59f32a9bf6")
(setf (get rsm_msgs::GetWaypointRoutinesResponse :datatype-) "rsm_msgs/GetWaypointRoutinesResponse")
(setf (get rsm_msgs::GetWaypointRoutinesResponse :definition-)
      "---
string[] waypointRoutines		   		# Array of all waypoint routines available

")



(provide :rsm_msgs/GetWaypointRoutines "2b220fb1d6a56e5ac72aec59f32a9bf6")


