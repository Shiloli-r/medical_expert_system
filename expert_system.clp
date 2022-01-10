(defrule load_questions "loads questions"
=>
(load "source/questions.clp"))

(defrule load_diagnoses "loads diagnoses"
=>
(load "source/diagnoses.clp"))

(defrule load_patient "loads patient info"
=>
(load "source/patient_info.clp"))

(defrule load_templates "loads templates"
=>
(load "source/templates.clp"))