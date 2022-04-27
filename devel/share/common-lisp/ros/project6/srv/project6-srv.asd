
(cl:in-package :asdf)

(defsystem "project6-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "OddEvenCheck" :depends-on ("_package_OddEvenCheck"))
    (:file "_package_OddEvenCheck" :depends-on ("_package"))
    (:file "TurnCamera" :depends-on ("_package_TurnCamera"))
    (:file "_package_TurnCamera" :depends-on ("_package"))
  ))