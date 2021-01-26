<?php  
class Shap {  
    function setOrder(){}
    function draw(){}  
}  
class Circle extends Shap  
{  
    function setOrder(){
        print "Order Number 1 ";  
    }
    function draw(){  
        print "Circle has been drawn.</br>";  
    }  
}  
class Triangle extends Shap {  
    function setOrder(){
        print "Order Number 2 ";  
    }
    function draw(){  
        print "Triangle has been drawn.</br>";  
    }  
}  
class Ellipse extends Shap{ 
    function setOrder(){
        print "Order Number 3 ";  
    } 
    function draw(){  
        print "Ellipse has been drawn.";  
    }  
}  
   
$Val=array();  
$Val[0]=new Circle();  
$Val[1]=new Triangle();  
$Val[2]=new Ellipse();  
  
for($i=0;$i<3;$i++){  
    echo $Val[$i]->setOrder().' '.$Val[$i]->draw();  
}  
?>