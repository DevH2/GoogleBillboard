public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
public void setup(){
  System.out.println(e.length());
   for(int i = 2;i<250;i++){
     String digits = e.substring(i,i+10);
     double digitsAsNum = Double.parseDouble(digits);
     if(isPrime(digitsAsNum)== true){
       printl(digitsAsNum+"");
       return; //break would have worked as well
     } 
   }
}
public void printl(String str){
  System.out.println(str);
}
//dAN = digitsAsNum
public boolean isPrime(double dAN){
  if(dAN<2){
    return false;
  }
  for(int i = 2;i<=Math.sqrt(dAN);i++){
    if(dAN%i==0){
      return false;
    }
  }
  return true;
}
