import 'dart:io';

void main() {
   double valor1 = double.parse(stdin.readLineSync()!);
   double valor2 = double.parse(stdin.readLineSync()!);
   String operacao = stdin.readLineSync()!;
   Calculadora calculadora = new Calculadora(valor1, valor2); 
   
   num resultado;
   String operacaoString;

   if (operacao == "subtração") {
      resultado = calculadora.subtracao();
      operacaoString = "-";
   }  else if (operacao == "adição") {
      resultado = calculadora.somar();
      operacaoString = "+";
   } else if (operacao == "multiplicação") {
      resultado = calculadora.multiplicacao();
      operacaoString = "*";
   } else if (operacao == "divisão") {
      resultado = calculadora.divisao();
      operacaoString = "/";
   } else {
      resultado = 0;
      operacaoString = "#";
   }

   Tela tela = new Tela(resultado, valor1, valor2, operacaoString); 

   tela.show();
  
}

class Tela {  

   var resultado; 
   var valor1;  
   var valor2;
   var operacaoString;

   Tela(num resultado, double valor1, double valor2, String operacaoString) { 

      this.resultado = resultado;
      this.valor1 = valor1;
      this.valor2 = valor2;
      this.operacaoString = operacaoString;
   }

   void show() { 
      if (operacaoString == "#") {
        print ("Operação inválida");
      } else {
        print("Resultado de ${valor1.toString()} ${operacaoString} ${valor2.toString()} : ${resultado.toStringAsFixed(2)}");
      }
      
   }
   
}

class Calculadora {  

   var valor1;  

   var valor2;

   Calculadora(double valor1, double valor2) { 

      this.valor1 = valor1;
      this.valor2 = valor2;
   }

   double somar() { 
      return this.valor1 + this.valor2;
   }

   double subtracao() { 
      return this.valor1 - this.valor2;
   } 

   double multiplicacao() { 
      return this.valor1 * this.valor2;
   } 

   double divisao() { 
      return this.valor1 / this.valor2;
   } 
}