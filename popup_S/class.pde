class Platform {

  float boxWidth;
  int boxHeight;
  float boxDepth;
  float xPos;
  float yPos;
  float zPos;
  color r = 230;
  color g = 100;
  color b = 255;
  boolean selected = false;

  Platform (float tempBoxWidth, int tempBoxHeight, float tempBoxDepth, float tempXPos, float tempYPos, float tempZPos) {
    boxWidth  = tempBoxWidth;
    boxHeight = tempBoxHeight;
    boxDepth  = tempBoxDepth;
    xPos      = tempXPos;
    yPos      = tempYPos;
    zPos      = tempZPos;
  }
  Platform(float tempXPos, float tempYPos, float tempZPos) {
    xPos      = tempXPos;
    yPos      = tempYPos;
    zPos      = tempZPos;
  }


  void instructionsText() {                //Places the information text on the screen
    fill(130, 100, 230);
    textSize(12);
    text("Move the arrows to move cursor.", 10, 30);
    text("Press the space bar to place box.", 10, 60);
    text("Place your hand over the IR sensor and raise it to grow the cubes, lower it to shrink them.", 10, 90);
    text("Press 'A' to select the prior box, or 'D' to select the following box.", 10, 120);
    text("Press 'Q' to delete a box.", 10, 150);
  }


  void cursorBox() {                        //make a red box that serves as the cursor
    pushMatrix();
    strokeWeight(1);
    fill(250, 69, 100);
    translate(xPos, yPos, zPos);
    rotateX(-PI/6);
    //rotateY(PI/3);
    box(150, 10, 150);
    popMatrix();
  }

  void createBox() {                       //build the purple box object
    strokeWeight(3);
    fill(r, g, b);
    pushMatrix();
    translate(xPos, yPos, zPos);
    rotateX(-PI/6);
    //rotateY(PI/3);
    box(boxWidth, boxHeight, boxDepth);
    popMatrix();
  }


  int setHeight(int grow) {                  //grow the size of the purple box object
    boxHeight = grow;
    boxHeight = (255-boxHeight);             //take the boxHeight input that is higher when the hand is low, and invert it
    boxHeight *= 2;                          //Double the input to vary the box size more dramatically.
    println(boxHeight);                      
    return boxHeight;
    
    //if (boxHeight > 
  }

  void moveCursor() {                        //move the cursor across the screen
    if (keyCode == RIGHT) { 
      xPos += 160;
    }
    if (keyCode == LEFT) { 
      xPos -= 160;
    }
    if (keyCode == UP) { 
      zPos += 160;
    }
    if (keyCode == DOWN) { 
      zPos -= 160;
    }
  }

  void selectBox() {
    if (key == 'a' || key == 'A') {
      if (currentBox > 0) { 
        currentBox--;
      }
    }
    else if (key == 'd' || key == 'D') {
      if (currentBox < lastBox) { 
        currentBox++;
      }
    }
  }

  void highlightBox() {                      //Highlights the active box
    r = 230;
    g = 100;
    b = 255;
  }

  void colorReset() {                         //reset the color of the inactive boxes to purple
    r = 130; 
    g = 100;
    b = 230;
  }

  void deleteBox() {                         //delete the current box
    if (key == 'q' || key == 'Q') {
      if (currentBox >= 0) { 
        squares.remove(currentBox); 
        currentBox--;
        lastBox--;
      }
    }
  }

  void lighting() {                           //set the lights
    ambientLight(180, 180, 180);
    directionalLight(20, 150, 200, 500, 1000, 200);
  }
}

