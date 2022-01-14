(defrule rule-A
   (HBsAg P)
   (anti-HDV P)
   =>
   (printout t crlf "The prediction is: Hepatitis B + D." crlf))

(defrule rule-E
   (HBsAg P)
   (anti-HDV N)
   (anti-HBc N)
   =>
   (printout t crlf "The prediction is: Uncertain Configuration." crlf))

(defrule rule-B
   (HBsAg P)
   (anti-HDV N)
   (anti-HBc P)
   (anti-HBs P)
   =>
   (printout t crlf "The prediction is: Uncertain Configuration." crlf))

(defrule rule-C
   (HBsAg P)
   (anti-HDV N)
   (anti-HBc P)
   (anti-HBs N)
   (IgManti-HBc P)
   =>
   (printout t crlf "The prediction is: Acute Infection." crlf))

(defrule rule-D
   (HBsAg P)
   (anti-HDV N)
   (anti-HBc P)
   (anti-HBs N)
   (IgManti-HBc N)
   =>
   (printout t crlf "The prediction is: Chronic Infection." crlf))

(defrule rule-F
   (HBsAg N)
   (anti-HBs P)
   (anti-HBc P)
   =>
   (printout t crlf "The prediction is: Cured." crlf))

(defrule rule-G
   (HBsAg N)
   (anti-HBs P)
   (anti-HBc N)
   =>
   (printout t crlf "The prediction is: Vaccinated." crlf))

(defrule rule-H
   (HBsAg N)
   (anti-HBs N)
   (anti-HBc P)
   =>
   (printout t crlf "The prediction is: Unclear (Possible Resolved)." crlf))

(defrule rule-I
   (HBsAg N)
   (anti-HBs N)
   (anti-HBc N)
   =>
   (printout t crlf "The prediction is: Healthy not vaccinated or suspicious." crlf))
   