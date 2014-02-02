ArrayList <Platform> squares = new ArrayList <Platform>();
Platform actions = new Platform(500, 400, 0);

int currentBox = -1;
int lastBox = -1;

void setup() {
  size (1280, 720, P3D);
  //Serial Connection
  println(Serial.list());
  String portName = Serial.list()[4];
  myPort = new Serial(this, portName, 9600);
}

void keyPressed() {
  actions.moveCursor();  //move cursor around the screen
  actions.selectBox();
  actions.deleteBox();
  if(key == ' ') {
    squares.add(new Platform(160, 50, 160, actions.xPos, actions.yPos, actions.zPos));  //place the purple box object at the location of the cursor
    currentBox ++;  //Keep track of the current box  
    lastBox ++;    //Keep track of the total number of boxes
  }
}

void draw() { 
  background(255, 255, 30);
  actions.instructionsText();
  actions.lighting();
  actions.cursorBox();  //make a red box that serves as the cursor
  for (int i = 0; i< squares.size(); i++) {
    squares.get(i).createBox();  //build the purple box object
    squares.get(currentBox).highlightBox();  //color the active box differently then the others
    //squares.get(currentBox).setHeight(grow);    //grow the size of the purple box object
    squares.get(i).colorReset();
  }
  
}

 

