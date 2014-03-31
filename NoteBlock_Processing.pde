import processing.serial.*;
import themidibus.*;

Serial port;

void setup()
{
  //declare new serial port
  println(Serial.list());
  port = new Serial(this, Serial.list()[0], 9600);  //port hardcoded here
  
  size(200, 200);
}

void draw()
{
  String inBuff = port.readString();
  if(!inBuff.equals(""))
    println(inBuff);
  
}

void sendNote()
{
  //Send a note.
}

