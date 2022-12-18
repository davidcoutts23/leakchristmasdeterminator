program greetings
  integer :: day, month, year
  call get_date(day, month, year)

  if (day == 26 .and. month == 12 .and. year == 2022) then
    write(*,*) "Merry Christmas Leak Family"
  else
    write(*,*) "It's not Christmas today. Check back next year"
  end if
end program greetings

subroutine get_date(day, month, year)
  integer, intent(out) :: day, month, year
  integer :: ierr
  character(len=24) :: date_string
  call getenv('DATE', date_string, ierr)
  if (ierr /= 0) then
    day = -1
    month = -1
    year = -1
  else
    day = int(date_string(1:2))
    month = int(date_string(4:5))
    year = int(date_string(7:10))
  end if
end subroutine get_date
This implementation of get_date uses the getenv intrinsic function to retrieve the current date from the operating system's environment variables. It then parses the date string and stores the day, month, and year in the output arguments day, month, and year, respectively.

Note that this implementation is specific to Unix-like operating systems, and may not work on other platforms.

I hope this helps! Let me know if you have any questions.




