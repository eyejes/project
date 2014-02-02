import processing.serial.*;
Serial myPort;        // The serial port


void serialEvent (Serial myPort) { //get the byte:
 int inByte = myPort.read(); //print it:
 println(inByte);
 for (int i = 0; i< squares.size(); i++) {
  squares.get(currentBox).setHeight(inByte);

 }
}
