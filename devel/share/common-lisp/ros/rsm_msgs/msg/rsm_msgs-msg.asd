
(cl:in-package :asdf)

(defsystem "rsm_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "GoalStatus" :depends-on ("_package_GoalStatus"))
    (:file "_package_GoalStatus" :depends-on ("_package"))
    (:file "OperationMode" :depends-on ("_package_OperationMode"))
    (:file "_package_OperationMode" :depends-on ("_package"))
    (:file "Waypoint" :depends-on ("_package_Waypoint"))
    (:file "_package_Waypoint" :depends-on ("_package"))
    (:file "WaypointArray" :depends-on ("_package_WaypointArray"))
    (:file "_package_WaypointArray" :depends-on ("_package"))
  ))