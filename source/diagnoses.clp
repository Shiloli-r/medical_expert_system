(defrule rule-A
   (HBsAg P)
   (anti-HDV P)
   =>
   (printout t crlf "The patient probably has both Hepatitis B and D." crlf))

(defrule rule-E
   (HBsAg P)
   (anti-HDV N)
   (anti-HBc N)
   =>
   (printout t crlf "Uncertain Configuration! Prediction Unknown" crlf))

(defrule rule-B
   (HBsAg P)
   (anti-HDV N)
   (anti-HBc P)
   (anti-HBs P)
   =>
   (printout t crlf "Uncertain Configuration! Prediction Unknown" crlf))

(defrule rule-C
   (HBsAg P)
   (anti-HDV N)
   (anti-HBc P)
   (anti-HBs N)
   (IgManti-HBc P)
   =>
   (printout t crlf "The patient probably has an Acute Infection." crlf))

(defrule rule-D
   (HBsAg P)
   (anti-HDV N)
   (anti-HBc P)
   (anti-HBs N)
   (IgManti-HBc N)
   =>
   (printout t crlf "The patient probably has  a Chronic Infection." crlf))

(defrule rule-F
   (HBsAg N)
   (anti-HBs P)
   (anti-HBc P)
   =>
   (printout t crlf "The patient is already Cured." crlf))

(defrule rule-G
   (HBsAg N)
   (anti-HBs P)
   (anti-HBc N)
   =>
   (printout t crlf "The patient has been Vaccinated." crlf))

(defrule rule-H
   (HBsAg N)
   (anti-HBs N)
   (anti-HBc P)
   =>
   (printout t crlf "The patient's problem is Unclear (Possible Resolved)." crlf))

(defrule rule-I
   (HBsAg N)
   (anti-HBs N)
   (anti-HBc N)
   =>
   (printout t crlf "The patient's status is: Healthy,  Not vaccinated or Suspicious." crlf))
   