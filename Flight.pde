class Flight
{
  public String filename;
  private CSVParser parser;
  
  Flight(String filename){
    this.filename = filename;
   }
   
  public void calculateArrDelayPercent(){
   float counter1 = 0;
   float counter2 = 0;
   int[] arrDelays = getArrDelays();
   for (int arrDelay : arrDelays){
     counter1 += 1;
     if (arrDelay>14){
       counter2 += 1;
     }
   }
   println("A14 OTP is " + ((1-(counter2/counter1))*100));
  }
  //get Departure Delays
  private int[] getDepDelays(){
  parser = new CSVParser(this.filename); 
  Table table = parser.makeDataTable();
  int arrayLength = table.getRowCount();
  int[] departureDelay = new int[arrayLength];
  for (int i = 0; i < arrayLength; i++) {
    TableRow row = table.getRow(i);
    departureDelay[i] = row.getInt("DepDelayMinutes");
  }
  return departureDelay;
  }
  
  //get Arrival Delays
  private int[] getArrDelays(){
  parser = new CSVParser(this.filename); 
  Table table = parser.makeDataTable();
  int arrayLength = table.getRowCount();
  int[] arrivalDelay = new int[arrayLength];
  for (int i = 0; i < arrayLength; i++) {
    TableRow row = table.getRow(i);
    arrivalDelay[i] = row.getInt("ArrDelayMinutes");
  }
  return arrivalDelay;
  }
  
}