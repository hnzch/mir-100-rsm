;; Auto-generated. Do not edit!


(when (boundp 'rsm_msgs::SetWaypointRoutine)
  (if (not (find-package "RSM_MSGS"))
    (make-package "RSM_MSGS"))
  (shadow 'SetWaypointRoutine (find-package "RSM_MSGS")))
(unless (find-package "RSM_MSGS::SETWAYPOINTROUTINE")
  (make-package "RSM_MSGS::SETWAYPOINTROUTINE"))
(unless (find-package "RSM_MSGS::SETWAYPOINTROUTINEREQUEST")
  (make-package "RSM_MSGS::SETWAYPOINTROUTINEREQUEST"))
(unless (find-package "RSM_MSGS::SETWAYPOINTROUTINERESPONSE")
  (make-package "RSM_MSGS::SETWAYPOINTROUTINERESPONSE"))

(in-package "ROS")





(defclass rsm_msgs::SetWaypointRoutineRequest
  :super ros::object
  :slots (_position _routine ))

(defmethod rsm_msgs::SetWaypointRoutineRequest
  (:init
   (&key
    ((:position __position) 0)
    ((:routine __routine) "")
    )
   (send-super :init)
   (setq _position (round __position))
   (setq _routine (string __routine))
   self)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:routine
   (&optional __routine)
   (if __routine (setq _routine __routine)) _routine)
  (:serialization-length
   ()
   (+
    ;; int64 _position
    8
    ;; string _routine
    4 (length _routine)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
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
     ;; string _routine
       (write-long (length _routine) s) (princ _routine s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
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
   ;; string _routine
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _routine (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass rsm_msgs::SetWaypointRoutineResponse
  :super ros::object
  :slots (_success _message ))

(defmethod rsm_msgs::SetWaypointRoutineResponse
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

(defclass rsm_msgs::SetWaypointRoutine
  :super ros::object
  :slots ())

(setf (get rsm_msgs::SetWaypointRoutine :md5sum-) "6e041540f9d404e36a7461b015bc51aa")
(setf (get rsm_msgs::SetWaypointRoutine :datatype-) "rsm_msgs/SetWaypointRoutine")
(setf (get rsm_msgs::SetWaypointRoutine :request) rsm_msgs::SetWaypointRoutineRequest)
(setf (get rsm_msgs::SetWaypointRoutine :response) rsm_msgs::SetWaypointRoutineResponse)

(defmethod rsm_msgs::SetWaypointRoutineRequest
  (:response () (instance rsm_msgs::SetWaypointRoutineResponse :init)))

(setf (get rsm_msgs::SetWaypointRoutineRequest :md5sum-) "6e041540f9d404e36a7461b015bc51aa")
(setf (get rsm_msgs::SetWaypointRoutineRequest :datatype-) "rsm_msgs/SetWaypointRoutineRequest")
(setf (get rsm_msgs::SetWaypointRoutineRequest :definition-)
      "int64 position                      # Position in array of waypoint to be moved
string routine						# Waypoint routine
---
bool success                        # Indicate successful run of triggered service
string message                      # Informational, e.g. for error messages

")

(setf (get rsm_msgs::SetWaypointRoutineResponse :md5sum-) "6e041540f9d404e36a7461b015bc51aa")
(setf (get rsm_msgs::SetWaypointRoutineResponse :datatype-) "rsm_msgs/SetWaypointRoutineResponse")
(setf (get rsm_msgs::SetWaypointRoutineResponse :definition-)
      "int64 position                      # Position in array of waypoint to be moved
string routine						# Waypoint routine
---
bool success                        # Indicate successful run of triggered service
string message                      # Informational, e.g. for error messages

")



(provide :rsm_msgs/SetWaypointRoutine "6e041540f9d404e36a7461b015bc51aa")


