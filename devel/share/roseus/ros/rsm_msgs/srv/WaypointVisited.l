;; Auto-generated. Do not edit!


(when (boundp 'rsm_msgs::WaypointVisited)
  (if (not (find-package "RSM_MSGS"))
    (make-package "RSM_MSGS"))
  (shadow 'WaypointVisited (find-package "RSM_MSGS")))
(unless (find-package "RSM_MSGS::WAYPOINTVISITED")
  (make-package "RSM_MSGS::WAYPOINTVISITED"))
(unless (find-package "RSM_MSGS::WAYPOINTVISITEDREQUEST")
  (make-package "RSM_MSGS::WAYPOINTVISITEDREQUEST"))
(unless (find-package "RSM_MSGS::WAYPOINTVISITEDRESPONSE")
  (make-package "RSM_MSGS::WAYPOINTVISITEDRESPONSE"))

(in-package "ROS")





(defclass rsm_msgs::WaypointVisitedRequest
  :super ros::object
  :slots (_position ))

(defmethod rsm_msgs::WaypointVisitedRequest
  (:init
   (&key
    ((:position __position) 0)
    )
   (send-super :init)
   (setq _position (round __position))
   self)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:serialization-length
   ()
   (+
    ;; int64 _position
    8
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
   ;;
   self)
  )

(defclass rsm_msgs::WaypointVisitedResponse
  :super ros::object
  :slots (_success _message ))

(defmethod rsm_msgs::WaypointVisitedResponse
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

(defclass rsm_msgs::WaypointVisited
  :super ros::object
  :slots ())

(setf (get rsm_msgs::WaypointVisited :md5sum-) "3e07da95f3577b8955e235d4863c62b0")
(setf (get rsm_msgs::WaypointVisited :datatype-) "rsm_msgs/WaypointVisited")
(setf (get rsm_msgs::WaypointVisited :request) rsm_msgs::WaypointVisitedRequest)
(setf (get rsm_msgs::WaypointVisited :response) rsm_msgs::WaypointVisitedResponse)

(defmethod rsm_msgs::WaypointVisitedRequest
  (:response () (instance rsm_msgs::WaypointVisitedResponse :init)))

(setf (get rsm_msgs::WaypointVisitedRequest :md5sum-) "3e07da95f3577b8955e235d4863c62b0")
(setf (get rsm_msgs::WaypointVisitedRequest :datatype-) "rsm_msgs/WaypointVisitedRequest")
(setf (get rsm_msgs::WaypointVisitedRequest :definition-)
      "int64 position                      # Position in array of unreachable waypoint
---
bool success                        # Indicate successful run of triggered service
string message                      # Informational, e.g. for error messages

")

(setf (get rsm_msgs::WaypointVisitedResponse :md5sum-) "3e07da95f3577b8955e235d4863c62b0")
(setf (get rsm_msgs::WaypointVisitedResponse :datatype-) "rsm_msgs/WaypointVisitedResponse")
(setf (get rsm_msgs::WaypointVisitedResponse :definition-)
      "int64 position                      # Position in array of unreachable waypoint
---
bool success                        # Indicate successful run of triggered service
string message                      # Informational, e.g. for error messages

")



(provide :rsm_msgs/WaypointVisited "3e07da95f3577b8955e235d4863c62b0")


