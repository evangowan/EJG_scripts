program interpolate_age
	
	! this assumes that the input file has increasing depth as positive, and it is
	! sorted before being read in

	implicit none

	character(len=255) :: file1, file2

	double precision, dimension(100000) :: depth_core, age_model
	double precision :: depth, age
	integer :: istat, number_points, counter


	call getarg(1,file1)
	call getarg(2,file2)

	open(unit=10, file=file1, access="sequential", form="formatted", status="old")

	number_points = 0
	read_model: do

		read(10,*, iostat=istat) depth, age

		if (istat /= 0) then
			exit read_model
		end if

		number_points = number_points + 1
		depth_core(number_points) = depth
		age_model(number_points) = age

	end do read_model

	close(unit=10)

	open(unit=20, file=file2, access="sequential", form="formatted", status="old")

	read_depths: do

		read(20,*, iostat=istat) depth
		if (istat /= 0) then
			exit read_depths
		end if

		age = 0.

		if(depth <= depth_core(1)) THEN
			age = return_age(age_model(2),age_model(1),depth_core(2),depth_core(1), depth)
		else if (depth >= depth_core(number_points)) THEN
			age = return_age(age_model(number_points),age_model(number_points-1),depth_core(number_points),depth_core(number_points-1), depth)
		else
			found_depth: do counter = 1, number_points - 1

				if (depth > depth_core(counter) .and. depth <= depth_core(counter+1)) THEN
					age = return_age(age_model(counter+1),age_model(counter),depth_core(counter+1),depth_core(counter), depth)
					exit found_depth
				end if

			end do found_depth
		end if

		write(6,*) depth, age

	end do read_depths

	close (unit=20)

contains

double precision function return_age(age1, age2, depth1, depth2, depth)
	double precision, intent(in) :: age1, age2, depth1, depth2, depth
	double precision :: slope, intercept

	slope = (age2 - age1) / (depth2 - depth1)
	intercept = age2 - slope*depth2

	return_age = slope * depth + intercept
end function return_age

end program interpolate_age
