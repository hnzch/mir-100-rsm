;; Auto-generated. Do not edit!


(when (boundp 'rsm_msgs::SetWaypointFollowingMode)
  (if (not (find-package "RSM_MSGS"))
    (make-package "RSM_MSGS"))
  (shadow 'SetWaypointFollowingMode (find-package "RSM_MSGS")))
(unless (find-package "RSM_MSGS::SETWAYPOINTFOLLOWINGMODE")
  (make-package "RSM_MSGS::SETWAYPOINTFOLLOWINGMODE"))
(unless (find-package "RSM_MSGS::SETWAYPOINTFOLLOWINGMODEREQUEST")
  (make-package "RSM_MSGS::SETWAYPOINTFOLLOWINGMODEREQUEST"))
(unless (find-package "RSM_MSGS::SETWAYPOINTFOLLOWINGMODERESPONSE")
  (make-package "RSM_MSGS::SETWAYPOINTFOLLOWINGMODERESPONSE"))

(in-package "ROS")





(defclass rsm_msgs::SetWaypointFollowingModeRequest
  :super ros::object
  :slots (_mode _reverse ))

(defmethod rsm_msgs::SetWaypointFollowingModeRequest
  (:init
   (&key
    ((:mode __mode) 0)
    ((:reverse __reverse) nil)
    )
   (send-super :init)
   (setq _mode (round __mode))
   (setq _reverse __reverse)
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:reverse
   (&optional __reverse)
   (if __reverse (setq _reverse __reverse)) _reverse)
  (:serialization-length
   ()
   (+
    ;; uint8 _mode
    1
    ;; bool _reverse
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _mode
       (write-byte _mode s)
     ;; bool _reverse
       (if _reverse (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _reverse
     (setq _reverse (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass rsm_msgs::SetWaypointFollowingModeResponse
  :super ros::object
  :slots (_success _message ))

(defmethod rsm_msgs::SetWaypointFollowingModeResponse
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

(defclass rsm_msgs::SetWaypointFollowingMode
  :super ros::object
  :slots ())

(setf (get rsm_msgs::SetWaypointFollowingMode :md5sum-) "0d60594389c7f5a48533157b5965fc0d")
(setf (get rsm_msgs::SetWaypointFollowingMode :datatype-) "rsm_msgs/SetWaypointFollowingMode")
(setf (get rsm_msgs::SetWaypointFollowingMode :request) rsm_msgs::SetWaypointFollowingModeRequest)
(setf (get rsm_msgs::SetWaypointFollowingMode :response) rsm_msgs::SetWaypointFollowingModeResponse)

(defmethod rsm_msgs::SetWaypointFollowingModeRequest
  (:response () (instance rsm_msgs::SetWaypointFollowingModeResponse :init)))

(setf (get rsm_msgs::SetWaypointFollowingModeRequest :md5sum-) "0d60594389c7f5a48533157b5965fc0d")
(setf (get rsm_msgs::SetWaypointFollowingModeRequest :datatype-) "rsm_msgs/SetWaypointFollowingModeRequest")
(setf (get rsm_msgs::SetWaypointFollowingModeRequest :definition-)
      "uint8 mode							# Waypoint following mode
bool reverse						# Driving from start to end (=false) or end to start (=true)
---
bool success                        # Indicate successful run of triggered service
string message                      # Informational, e.g. for error messages

")

(setf (get rsm_msgs::SetWaypointFollowingModeResponse :md5sum-) "0d60594389c7f5a48533157b5965fc0d")
(setf (get rsm_msgs::SetWaypointFollowingModeResponse :datatype-) "rsm_msgs/SetWaypointFollowingModeResponse")
(setf (get rsm_msgs::SetWaypointFollowingModeResponse :definition-)
      "uint8 mode							# Waypoint following mode
bool reverse						# Driving from start to end (=false) or end to start (=true)
---
bool success                        # Indicate successful run of triggered service
string message                      # Informational, e.g. for error messages

")



(provide :rsm_msgs/SetWaypointFollowingMode "0d60594389c7f5a48533157b5965fc0d")


