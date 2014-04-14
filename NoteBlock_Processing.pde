  import processing.serial.*;
  import themidibus.*;
  import java.nio.file.Files;
  import java.nio.file.Path;
  import java.nio.file.Paths;
  import java.nio.file.StandardOpenOption;
  import java.nio.charset.Charset;
  
  Serial port;
  
  void setup()
  {
    //declare new serial port
    println(Serial.list());
    port = new Serial(this, Serial.list()[0], 9600);  //port hardcoded here
    
    size(200, 200);
  }
  
  void writeFile(String aFile, String write){
    try{
    Path path = Paths.get(aFile);
    Files.write(path, write.getBytes(Charset.forName("UTF-8")), StandardOpenOption.APPEND);
    } catch (IOException e){
       //do nothing for now 
    }
  }
  
  void draw()
  {
    String inBuff = port.readStringUntil(10);
    if(!inBuff.equals("")){
      println(inBuff);
      writeFile ("test.txt", inBuff);
    }
    
  }
  
  void sendNote()
  {
    //Send a note.
  }

