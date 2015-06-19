      COMPLEX FUNCTION TRAILE (X,J,N,P,M,BOXL)        
C        
C     ROUTINE TO FIND PHI FOR TRAILING EDGE        
C        
      DIMENSION N(1)        
      COMPLEX P(3,M)        
C        
C     CHECK TO SEE IF TRAILING EDGE HAS BEEN COMPUTED        
C        
      IF (N(J) .GE. 0) GO TO 300        
 200  TRAILE = P(1,J)        
      RETURN        
C        
 300  XA = X/BOXL + 0.5 - FLOAT(N(J))        
      IF (REAL(P(2,J)) .EQ. 0.0) GO TO 200        
      TRAILE = P(1,J) + XA*(P(1,J) - P(2,J))        
      RETURN        
      END        