program misbox


	integer ::   tmin, tmax, istat, unit_number
	real :: ytext, tavg, ymin, ymax, ytext2
	character(len=80) :: input, mis

	logical :: isblue

	call get_command_argument(1,input)
	read(input,*) ymin
	call get_command_argument(2,input)
	read(input,*) ymax

	ytext = ymin + (ymax - ymin) / 10.0
	ytext2 = ymin + (ymax - ymin) / 6


	open(unit=10, file="mis_boundaries.txt", form="formatted", access="sequential", status="old")
	open(unit=20, file="cold_mis.txt", form="formatted", access="sequential", status="replace")
	open(unit=30, file="warm_mis.txt", form="formatted", access="sequential", status="replace")
	open(unit=40, file="mis_text.txt", form="formatted", access="sequential", status="replace")

	isblue = .false.

	reading_file: do

		read(10,*, iostat=istat) mis, tmin, tmax
		if (istat /= 0) THEN
			exit reading_file
		end if

		tavg = (real(tmax) + real(tmin)) /2.0

		if (trim(mis) == "5b" .or. trim(mis) == "5d") THEN
			write(40,*) tavg, ytext2, mis
		else
			write(40,*) tavg, ytext, mis
		endif

		if(isblue) THEN
			unit_number = 20
		else
			unit_number = 30
		end if

		write(unit_number,'(A1)') ">"
		write(unit_number,*) tmax, ymin
		write(unit_number,*) tmax, ymax
		write(unit_number,*) tmin, ymax
		write(unit_number,*) tmin, ymin

		isblue = .not. isblue

	end do reading_file

	close(unit=10)
	close(unit=20)
	close(unit=30)
	close(unit=40)

end program misbox
