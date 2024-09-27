class Car {
  String brand;
  String model;
  int year;

  Car(this.brand, this.model, this.year);

  int carAge() {
    DateTime currentDate = DateTime.now();
    int currentYear = currentDate.year;
    int age = currentYear - year;

    if (currentDate.month < DateTime(year).month ||
        (currentDate.month == DateTime(year).month &&
            currentDate.day < DateTime(year).day)) {
      age--;
    }

    return age;
  }
}