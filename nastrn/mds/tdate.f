      SUBROUTINE TDATE (DATE)        
C        
C     VAX VERSION        
C     ===========        
C     (ALSO SiliconGraphics, DEC/ultrix, and SUN.        
C      CRAY AND HP DO NOT HAVE IDATE)        
C        
C     THIS ROUTINE OBTAINS THE MONTH, DAY AND YEAR, IN INTEGER FORMAT   
C        
      INTEGER DATE(3)        
      integer ndate(3)
C        
!      CALL IDATE (DATE(1),DATE(2),DATE(3))
C                 MONTH   DAY     YEAR        
      call idate(ndate)
!     day, month, and year

      DATE(1) = ndate(2)
      DATE(2) = ndate(1)
      DATE(3) = ndate(3)

      RETURN        
      END        
