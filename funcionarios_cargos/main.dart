class Employee {

  final hours_month = 220.0;
  final multiplier_hour_extra = 1.5;

  var registration;
  var name;
  var last_name;
  var salary;
  var worked_hours;
  var salary_final;

  Employee(this.registration, this.name, this.last_name, this.salary,
      this.worked_hours);

  double calculate_salary(){
    double hour_value = calculate_hour_value();

    double hours_extra = this.worked_hours - this.hours_month;

    double salary_extra = hour_value * this.multiplier_hour_extra * hours_extra;

    return this.salary + salary_extra;
  }

  double calculate_hour_value(){
    return this.salary / this.hours_month;
  }

  void show_info(){
    print ("\nMatrícula: ${this.registration}");
    print ("Nome: ${this.name} ${this.last_name}" );
    print ("Horas trabalhadas no mês: ${this.worked_hours.toStringAsFixed(2)}");
    print ("Salário: R\$ ${this.calculate_salary().toStringAsFixed(2)}");
  }
}

class Cashier extends Employee {

  Cashier(super.registration, super.name, super.last_name, super.salary,
      super.worked_hours);
}

class Seller extends Employee {

  Seller(super.registration, super.name, super.last_name, super.salary,
      super.worked_hours);

  final commission = 1.20;

  @override
  double calculate_salary(){
    return super.calculate_salary() * commission;
  } 
}

class Manager extends Employee {

  Manager(super.registration, super.name, super.last_name, super.salary,
      super.worked_hours);

  final commission = 1.35;

  @override
  double calculate_salary(){
    return super.calculate_salary() * commission;
  } 
}


void main() { 

  final cashier = Cashier('1579', 'Ana', 'Oliveira', 1212, 230);
  final seller = Seller('1601', 'João', 'Silva', 1212, 230);
  final manager = Manager('1603', 'Maria', 'Souza', 1212, 230);

  cashier.show_info();
  seller.show_info();
  manager.show_info();
}

