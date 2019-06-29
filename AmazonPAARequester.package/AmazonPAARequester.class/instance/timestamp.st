private
timestamp
	| timeNow timeString |
	timeNow := DateAndTime current asUTC.
	timeString := timeNow asString.
	timeString := timeString first: timeString size - 9.
	^ timeString , 'Z'
