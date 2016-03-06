class CSVParser{
  
  public String filename;
  
  CSVParser(String filename){
    this.filename = filename;
  }
  
  Table makeDataTable(){
    Table table;
    table = loadTable(this.filename, "header");
    return table;
  }
  
  
  
}