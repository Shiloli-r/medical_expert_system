(defrule read_patient_info "Reads in patient info"
=>
(printout t " *******   ENTER PATIENT INFORMATION ********" crlf)
(printout t "Enter patient Name: " )
(bind ?name (readline))
(printout t "Enter patient Age: " )
(bind ?age (readline))
(printout t "Enter patient Sex: ")
(bind ?sex (readline))
(assert (patient
		(name ?name)
	    (age ?age)
        (sex ?sex))
	    )
)