part of 'login_bloc.dart';

@immutable
class LoginState extends Equatable {
  final int count;

  const LoginState({this.count = 0}); // เป็นการสร้าง constructor ของ class LoginState โดยมี parameter count ซึ่งเป็น  ค่าที่ต้องการให้ state เก็บไว้ และใช้ required เพื่อบังคับให้ต้องมีค่า count เมื่อสร้าง instance ของ LoginState

  LoginState copyWith({int? count}) {
    return LoginState(count: count ?? this.count); // เป็นการสร้าง method copyWith เพื่อให้สามารถสร้าง instance ใหม่ของ LoginState โดยสามารถเปลี่ยนค่า count ได้ โดยใช้ค่า count ที่ส่งเข้ามาเป็น parameter ถ้าไม่ส่งค่ามา จะใช้ค่า count เดิมของ instance ปัจจุบัน
  }
  
  @override
  // TODO: implement props
  List<Object?> get props => [count]; // บาง UI เราต้องการให้ rebuild ใหม่เมื่อ state เปลี่ยนแปลง แต่บาง UI เราไม่ต้องการให้ rebuild ใหม่เมื่อ state เปลี่ยนแปลง เราสามารถใช้ props เพื่อกำหนดว่า state ไหนที่เราต้องการให้ rebuild ใหม่เมื่อ state เปลี่ยนแปลง
}

