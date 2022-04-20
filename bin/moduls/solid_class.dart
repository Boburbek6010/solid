

///S(Single Responsibility)
///Yagona Javobgarlik
class Human{
  late String name;
  late String id;
}
class Actions {
  void run() {
    print('I can Run');
  }
  void speak(){
    print('I can Speak');
  }
}
class Emotions{
  void happy(){
    print('I am Happy today');
  }
  void sad(){
    print('I am Sad today');
  }
  void shy(){
    print('I am so Shy');
  }
}




///O(Open-Close)
///Yanigi funksiya qoshish mumkin lekin Ozgartirish uchun yoqip
abstract class Robot{
  void walk() {
    print('Robot can Walk smoothly');
  }
}
class Robot1 implements Robot{
  @override
  void walk() {
    print('Robot can Walk smoothly');
  }
  void run(){
    print('Robot can Run also');
  }
  void speak(){
    print('This Robot now can Speak');
  }
}
class UpdatedRobot implements Robot1{
  @override
  void walk() {
    print('Robot can Walk smoothly');
  }
  @override
  void run(){
    print('Robot can Run also');
  }
  @override
  void speak(){
    print('This Robot now can Speak');
  }
  void feelings(){
    print('This Robot now Can have a feeling of smell');
  }
}






///L(Liskov Substitution)
///Parent Objectlarini Child Objectlari bn Almashtish buzmasdan
abstract class ForFlyerAnimal{
  void eat();
  void sleep();
  void fly();
}
abstract class ForNormalAnimal{
  void eat();
  void sleep();
}
abstract class ForFishes{
  void eat();
  void sleep();
  void swim();
}

class Bird implements ForFlyerAnimal{
  @override
  void eat() {
    print('Bird can Eat');
  }

  @override
  void fly() {
    print('Bird can Fly');
  }

  @override
  void sleep() {
    print('Bird can Sleep');
  }

}
class Cat implements ForNormalAnimal{
  @override
  void eat() {
    print('Cat can Eat');
  }

  @override
  void sleep() {
    print('Cat can Eat');
  }

}
class Shark implements ForFishes{
  @override
  void eat() {
    print('Shark can Eat');
  }

  @override
  void sleep() {
    print('Shark can Eat');
  }

  @override
  void swim() {
    print('Shark can Swim');
  }

}






///I(Interface Segregation)
///Interfeyslarni Ajratish
abstract class Windows{
  void support(){
    print('Windows supports Emulator only');
  }
}
abstract class Macs{
  void support1(){
    print('Macs supports Emulator');
  }
  void support2(){
    print('Macs supports Simulator');
  }
}

class NoteBook implements Windows{
  @override
  void support() {
    print('This Pc supports only Emulator');
  }
}
class NoteBook2 implements Macs{
  @override
  void support1(){
    print('This Pc supports Emulator');
  }
  @override
  void support2(){
    print('This Pc supports Simulator');
  }

}







///D(Dependency Inversion)
///Bogliqlik inversiyasi Tamoyili
abstract class Vehicle{
  void humanTransportation();
}

class Bus implements Vehicle{
  @override
  void humanTransportation() {
    print('This Type Of Public Vehicle Trans The Human From One Point To Another');
  }
  void runOnGround(){
    print('Bus Can Run In The City Streets');
  }
}
class Train implements Vehicle{
  @override
  void humanTransportation() {
    print('This Type Of Public Vehicle Trans The Human From One Point To Another');
  }
}
