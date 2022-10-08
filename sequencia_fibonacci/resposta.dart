import 'dart:io';

int Fib(int n){
  if(n<=1) //Base Condition
    return n;
  return Fib(n-1)+Fib(n-2);
}

void main () {
    final numero = int.parse(stdin.readLineSync()!);
    print(Fib(numero));
}