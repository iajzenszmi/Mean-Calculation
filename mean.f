        real daily(7) 
        real mean 
        real weeksum
        integer i
        weeksum = 0
        mean = 0.0  
        daily(1)=7.0
        daily(2) =6.0
        daily(3) = 5.0
        daily(4) =4.0
        daily(5) =3.0
        daily(6)=2.0
        daily(7)=1.0
        do i = 1,7,1
        weeksum = weeksum + daily(i)
        end do
        print *, "weeksum ",weeksum
        mean = weeksum / 7.0
        print *, "mean ",mean
        print *, " daily ", daily
        end program
        
