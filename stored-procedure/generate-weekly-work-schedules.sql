CREATE PROCEDURE `generateWeeklyWorkSchedules` ()
BEGIN
SET @count = 0;

	WHILE @count < 7 DO
		
		INSERT INTO esthetic.WORK_SCHEDULE (start_date, end_date)
		SELECT
			DATE_ADD(CURRENT_DATE(), INTERVAL FLOOR(@count) DAY) + INTERVAL '09:30:00' HOUR_SECOND AS start_date,
			DATE_ADD(CURRENT_DATE(), INTERVAL FLOOR(@count) DAY) + INTERVAL '18:30:00' HOUR_SECOND AS end_date;
			
		SET @count = @count + 1;
	END WHILE;
END
