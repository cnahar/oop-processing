# oop-processing

Class Flights
  properties - flightnum, flight date, carrier, origin, dest, crsDepTime, actualDepTime, crsArrTime, actualArrTime, carrierDelay,     weatherDelay, nasDelay, securityDelay, lateAircraftDelay
  methods - calculateDelay(), checkDelayCauseEqualsTotalDelay(), getDelay(), getprimaryDelayType()

Class Airlines
  inherits Class Flights
  properties - airlineID, airlineCode
  methods - caculateOnTimePercent(airport(default=all), period(default=all)), totalFlightCount(airport(default=all), period(default=all)), delayedFlightCount(airport(default=all), period(default=all))
  
Class Airports
inherits Class Flights
  properties - airlineID, airlineCode, stateCode
  methods - caculateOnTimePercent(airline(default=all), period(default=all)), totalFlightCount(airline(default=all), period(default=all)), delayedFlightCount(airline(default=all), period(default=all))

Class CSVParser
  properties - filepath, filename
  methods - readCSV(filepath, filename)
