import 'dart:io';

void main() {
   String nome_montadora = stdin.readLineSync()!;
   String modelo = stdin.readLineSync()!;
   String cor = stdin.readLineSync()!;
   double potencia_motor = double.parse(stdin.readLineSync()!);
   String tipo_combustivel = stdin.readLineSync()!;

   Car c = new Car(nome_montadora, modelo, cor, potencia_motor, tipo_combustivel); 
   
   c.disp(); 
  
}

class Car {  

   var nome_montadora;  

   var modelo;

   var cor;

   var potencia_motor;

   var tipo_combustivel;
   
   Car(String nome_montadora,
       String modelo,
       String cor,
       double potencia_motor,
       String tipo_combustivel) { 

      this.nome_montadora = nome_montadora;
      this.modelo = modelo;
      this.cor = cor;
      this.potencia_motor = potencia_motor;
      this.tipo_combustivel = tipo_combustivel;
   }

   void disp() { 
      print("Montadora: " + nome_montadora);
      print("Modelo: " + modelo);
      print("Cor: " + cor);
      print("Motor: " + potencia_motor.toStringAsFixed(1));
      print("Combustível: " + tipo_combustivel);
   } 
}