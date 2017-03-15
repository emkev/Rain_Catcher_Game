
/* 2017.03.16 
   a , start-time start up .
   b , when run to total-time , finish .
*/

class Timer {

  int savedTime ;
  int totalTime ;
  
  Timer( int tmpTotalTime ) {
    totalTime = tmpTotalTime ;
  }
  
  void start() {
    savedTime = millis() ;
  }
  
  boolean isFinished() {
    
    int passedTime = millis() - savedTime ;
    
    if( passedTime > totalTime ) 
      return true ;
    else
      return false ;
  }
  
}
