      subroutine identifiererror1(
     1   n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,n13,n14,
     2   d1,d2,
     3   narr1,narr2,narr3,narr4,narr5,
     4   darr1,darr2,darr3,darr4,darr5,darr6,darr7,darr8,darr9,
     5   dcarr1,dcarr2,dcarr3,dcarr4,dcarr5,dcarr6,dcarr7,dcarr8,dcarr9)
c-------------------------------------------------------------------
      implicit none
c
      integer n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,n13,n14
c
      double precision d1,d2
c
      integer narr1(n3),narr2(8,n2),narr3(2,n2),narr4(n10),narr5(n10)
c
      double precision darr1(3,n2),darr2(n9),darr3(n10),darr4(n10)
      double precision darr5(0:n8,0:n8,-n8:n8),darr6(0:n8,0:n8,-n8:n8)
      double precision darr7(5,n13),darr8(0:n8,0:n8,n10),darr9(0:n8)
c
      double complex dcarr1(n6,n13,n2,6),dcarr2(n6,n13),dcarr3(n6,n13)
      double complex dcarr4(n6,n13,16),dcarr5(-5:5,n13),dcarr6(-5:5,n13)
      double complex dcarr7(n14),dcarr8(n6,n12,2),dcarr9(n6,n12)
      
      
      end subroutine identifiererror1

      subroutine identifiererror2(  
     1   n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,n13,n14,
     2   d1,d2,
     3   narr1,narr2,narr3,narr4,narr5,
     4   darr1,darr2,darr3,darr4,darr5,darr6,darr7,darr8,darr9,
     5   dcarr1,dcarr2,dcarr3,dcarr4,dcarr5,dcarr6,dcarr7,dcarr8,dcarr9,
     6   dcarr10)
c-------------------------------------------------------------------
      implicit none
c
      integer n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,n13,n14
c
      double precision d1,d2
c
      integer narr1(n3),narr2(8,n2),narr3(2,n2),narr4(n10),narr5(n10)
c
      double precision darr1(3,n2),darr2(n9),darr3(n10),darr4(n10)
      double precision darr5(0:n8,0:n8,-n8:n8),darr6(0:n8,0:n8,-n8:n8)
      double precision darr7(5,n13),darr8(0:n8,0:n8,n10),darr9(0:n8)
c
      double complex dcarr1(n6,n13,n2,6),dcarr2(n6,n13),dcarr3(n6,n13)
      double complex dcarr4(n6,n13,16),dcarr5(-5:5,n13),dcarr6(-5:5,n13)
      double complex dcarr7(n14),dcarr8(n6,n12,2),dcarr9(n6,n12)
      double complex dcarr10(n6,n12)
      
      end subroutine identifiererror2