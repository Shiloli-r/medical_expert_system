(defrule Q1
   (initial-fact)
   =>
   (printout t crlf "Please indicate "P" for Positive / "N" for Negative." crlf)
   (printout t crlf "Enter Patient's HBsAg test result (N or P): ")
   (assert (HBsAg (upcase(read)))))

(defrule Q2
   (HBsAg P)
   =>
   (printout t crlf "Enter Patient's anti-HDV test result (N or P): ")
   (assert (anti-HDV (upcase(read)))))

(defrule Q3
   (HBsAg P)
   (anti-HDV N)
   =>
   (printout t crlf "Enter Patient's anti-HBc test result (N or P): ")
   (assert (anti-HBc (upcase(read)))))

(defrule Q4
   (HBsAg P)
   (anti-HDV N)
   (anti-HBc P)
   =>
   (printout t crlf "Enter Patient's anti-HBs test result (N or P): ")
   (assert (anti-HBs (upcase(read)))))

(defrule Q5
   (HBsAg P)
   (anti-HDV N)
   (anti-HBc P)
   (anti-HBs N)
   =>
   (printout t crlf "Enter Patient's IgM anti-HBc test result (N or P): ")
   (assert (IgManti-HBc (upcase(read)))))

(defrule Q6
   (HBsAg N)
   =>
   (printout t crlf "Enter Patient's anti-HBs test result (N or P): ")
   (assert (anti-HBs (upcase(read)))))

(defrule Q7
   (HBsAg N)
   (anti-HBs P)
   =>
   (printout t crlf Enter Patient's "anti-HBc test result (N or P): ")
   (assert (anti-HBc (upcase(read)))))

(defrule Q8
   (HBsAg N)
   (anti-HBs N)
   =>
   (printout t crlf "Enter Patient's anti-HBc test result (N or P): ")
   (assert (anti-HBc (upcase(read)))))
   