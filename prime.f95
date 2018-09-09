!THIS PROGRAM PRINTING LIST OF NUMBERS IN BETWEEN LOWER AND UPPER RANGE

PROGRAM PRIME_PRINT
 IMPLICIT NONE
 INTEGER::LOW,UP,NO,I,J
 LOGICAL::PRIME_CHECK
PRINT*,"ENTER \'LOWER & UPPER RANGE'\ NUMBER"
READ*,LOW,UP

DO I=LOW,UP
  NO=I
  IF(PRIME_CHECK(NO) .EQV. .TRUE.)THEN
   PRINT*,NO
  ENDIF
 END DO
END PROGRAM PRIME_PRINT



LOGICAL FUNCTION PRIME_CHECK(N)
  IMPLICIT NONE
  INTEGER,INTENT(IN)::N
  INTEGER::I,J
  

  DO I=2,INT(SQRT(REAL(N)))
    IF (MOD(N,I) == 0) THEN
      PRIME_CHECK=.FALSE.
      EXIT
    ELSE
      PRIME_CHECK=.TRUE.
    ENDIF
  END DO

END FUNCTION PRIME_CHECK
ISIGN
