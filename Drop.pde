
/* 2017.03.16 */

class Drop {

  float locX , locY ;
  float speed ;
  color clr ;
  float r ;
  
  Drop() {
    r = 8 ;
    
    locX = random(width) ;
    locY = -(r*4) ;
    
    speed = random(1 , 5) ;   // speed range 1 to 5 
    clr = color( 50 , 100 , 150 ) ;
    
  }
  
  // add add add speed to y !
  void move() {
    locY += speed ;
  }
  
  boolean reachedBottom() {
    if( locY > (height + r*4) ) 
      return true ;
    else 
      return false ;
  }
  
  void display() {
    fill(clr) ;
    noStroke() ;
    for( int i = 2 ; i < r ; i++ ) {
      ellipse( locX , locY+i*4 , i*2 , i*2 ) ;
    }
  }
  
  void caught() {
    speed = 0 ;
    locY = -1000 ;
  }
  
}
