(defrule Q1
   (initial-fact)
   =>
   (printout t crlf "Please indicate "P" for Positive / "N" for Negative." crlf)
   (printout t crlf "HBsAg test result: ")
   (assert (HBsAg (upcase(read)))))

(defrule Q2
   (HBsAg P)
   =>
   (printout t crlf "anti-HDV test result: ")
   (assert (anti-HDV (upcase(read)))))

(defrule Q3
   (HBsAg P)
   (anti-HDV N)
   =>
   (printout t crlf "anti-HBc test result: ")
   (assert (anti-HBc (upcase(read)))))

(defrule Q4
   (HBsAg P)
   (anti-HDV N)
   (anti-HBc P)
   =>
   (printout t crlf "anti-HBs test result: ")
   (assert (anti-HBs (upcase(read)))))

(defrule Q5
   (HBsAg P)
   (anti-HDV N)
   (anti-HBc P)
   (anti-HBs N)
   =>
   (printout t crlf "IgM anti-HBc test result: ")
   (assert (IgManti-HBc (upcase(read)))))

(defrule Q6
   (HBsAg N)
   =>
   (printout t crlf "anti-HBs test result: ")
   (assert (anti-HBs (upcase(read)))))

(defrule Q7
   (HBsAg N)
   (anti-HBs P)
   =>
   (printout t crlf "anti-HBc test result: ")
   (assert (anti-HBc (upcase(read)))))

(defrule Q8
   (HBsAg N)
   (anti-HBs N)
   =>
   (printout t crlf "anti-HBc test result: ")
   (assert (anti-HBc (upcase(read)))))
   