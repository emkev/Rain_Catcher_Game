
/* 2017.03.16 */

class Catcher {
  
  float size ;
  color clr ;
  float locX , locY ;
  
  Catcher( float tmpR ) {
    size = tmpR ;
    clr = color( 50 , 10 , 10 , 150 ) ;
    locX = 0 ;
    locY = 0 ;
  }
  
  void setLoc( float tmpX , float tmpY ) {
    locX = tmpX ;
    locY = tmpY ;
  }
  
  void display() {
    stroke(0) ;
    fill(clr) ;
    ellipse( locX , locY , size*2 , size*2 ) ;
  }
  
  
  boolean intersect( Drop dp ) {
    
    float distance = dist( locX , locY , dp.locX , dp.locY ) ;
    
    if( distance < (size + dp.r) ) 
      return true ;
    else
      return false ;
      
  }
  
}
