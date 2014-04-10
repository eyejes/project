var htmlImg1;
var htmlImg2;
var htmlImg3;

var answer1;
var answer2;

var next;


function setup() {

  //createCanvas(1440, 800);
  createCanvas(window.innerWidth, window.innerHeight);


  var text = createHTML("Created between 1960-70, this object was acquired by the Cooper Hewitt Museum in 1989 as part of The Henry and Ludmilla Shapiro Collection.");
  text.position(220, 50);
  text.size (1000);
  //text.id("jeopardy");
  text.style("font-family: monospace; background-color: #FFFFFF; color: #000000; font-size: 16pt; padding: 10px; text-align: center; line-height:150%;");
  
  var text = createHTML("What is Lenin Reading Pravda?");
  text.position(530, 200);
  text.style("font-family: monospace; background-color: #CC3300; color: #FFFFFF; font-size: 16pt; padding: 10px; ");
//red: #FF0000
//darker red: #CC0000
//red orange: #CC3300


  htmlImg1 = createHTMLImage("11491_5bdcaa94f5f46836_b.jpg");
  htmlImg1.size(250,250);
  htmlImg1.position (300,300);

  htmlImg2 = createHTMLImage("15684_50b5bc95d8d0161f_b.jpg");
  htmlImg2.size(250,250);
  htmlImg2.position (600,300);

  htmlImg3 = createHTMLImage("39874_4b9c65e109610ba3_b.jpg");
  htmlImg3.size(250,250);
  htmlImg3.position (900,300);

  answer1 = createHTML("A circular plate, with image of Lenin sitting at desk reading copy of Pravda newspaper; thin gilded band at edge. Dulevo Porcelain Factory was the manufacturer of this object.");
  answer1.position(230, 600);
  answer1.size (1000);
  answer1.style("font-family: monospace; background-color: #FFFFFF; color: #000000; font-size: 14pt; padding: 10px;");


  answer2 = createHTML("Its medium is: porcelain, enamel, gilding     |      Its dimensions are: Diameter: 23.9 cm (9 7/16 in.)");
  answer2.position(230, 660);
  answer2.style("font-family: monospace; background-color: #FFFFFF; color: #000000; font-size: 13pt; padding: 10px;");

  next = createHTML("KEEP PLAYING");
  next.position(670, 700);
  next.style ("font-family: monospace; background-color: #FFFFFF ; color: #CC3300; font-size: 13pt; padding: 10px;");

  answerHide();
}

function draw() {

  background(255);

  fill(125,125, 125, 50);
  noStroke();
  rect(290,290,270,270);
  rect(590,290,270,270);
  rect(890,290,270,270); 


   hmlImg1.mousePressed();
   //if
   
  print("mouseX" + mouseX);
  print("mouseY" + mouseY);

}

function answerShow(){
	answer1.show();
	answer2.show();
	next.show();
}


function answerHide(){
	answer1.hide();
	answer2.hide();
	next.hide();
}

function mousePressed(){
	answerShow();
}

  //text.hide();




