;; Auto-generated. Do not edit!


(when (boundp 'project6::OddEvenCheck)
  (if (not (find-package "PROJECT6"))
    (make-package "PROJECT6"))
  (shadow 'OddEvenCheck (find-package "PROJECT6")))
(unless (find-package "PROJECT6::ODDEVENCHECK")
  (make-package "PROJECT6::ODDEVENCHECK"))
(unless (find-package "PROJECT6::ODDEVENCHECKREQUEST")
  (make-package "PROJECT6::ODDEVENCHECKREQUEST"))
(unless (find-package "PROJECT6::ODDEVENCHECKRESPONSE")
  (make-package "PROJECT6::ODDEVENCHECKRESPONSE"))

(in-package "ROS")





(defclass project6::OddEvenCheckRequest
  :super ros::object
  :slots (_number ))

(defmethod project6::OddEvenCheckRequest
  (:init
   (&key
    ((:number __number) 0)
    )
   (send-super :init)
   (setq _number (round __number))
   self)
  (:number
   (&optional __number)
   (if __number (setq _number __number)) _number)
  (:serialization-length
   ()
   (+
    ;; int32 _number
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _number
       (write-long _number s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _number
     (setq _number (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass project6::OddEvenCheckResponse
  :super ros::object
  :slots (_answer ))

(defmethod project6::OddEvenCheckResponse
  (:init
   (&key
    ((:answer __answer) "")
    )
   (send-super :init)
   (setq _answer (string __answer))
   self)
  (:answer
   (&optional __answer)
   (if __answer (setq _answer __answer)) _answer)
  (:serialization-length
   ()
   (+
    ;; string _answer
    4 (length _answer)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _answer
       (write-long (length _answer) s) (princ _answer s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _answer
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _answer (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass project6::OddEvenCheck
  :super ros::object
  :slots ())

(setf (get project6::OddEvenCheck :md5sum-) "4ff0b0ab1ed04611e3a2b4090af9ee4f")
(setf (get project6::OddEvenCheck :datatype-) "project6/OddEvenCheck")
(setf (get project6::OddEvenCheck :request) project6::OddEvenCheckRequest)
(setf (get project6::OddEvenCheck :response) project6::OddEvenCheckResponse)

(defmethod project6::OddEvenCheckRequest
  (:response () (instance project6::OddEvenCheckResponse :init)))

(setf (get project6::OddEvenCheckRequest :md5sum-) "4ff0b0ab1ed04611e3a2b4090af9ee4f")
(setf (get project6::OddEvenCheckRequest :datatype-) "project6/OddEvenCheckRequest")
(setf (get project6::OddEvenCheckRequest :definition-)
      "int32 number
---
string answer

")

(setf (get project6::OddEvenCheckResponse :md5sum-) "4ff0b0ab1ed04611e3a2b4090af9ee4f")
(setf (get project6::OddEvenCheckResponse :datatype-) "project6/OddEvenCheckResponse")
(setf (get project6::OddEvenCheckResponse :definition-)
      "int32 number
---
string answer

")



(provide :project6/OddEvenCheck "4ff0b0ab1ed04611e3a2b4090af9ee4f")


