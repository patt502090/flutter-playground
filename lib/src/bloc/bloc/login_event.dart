part of 'login_bloc.dart';
// file นี้ไว้ป้องกันการเกิด interfere ของกันระหว่าง event ต่าง ๆ ที่เกิดขึ้นใน bloc โดยใช้ @immutable เพื่อบอกว่า class นี้เป็น immutable และ sealed class เพื่อบอกว่า class นี้ไม่สามารถถูกสืบทอดได้
@immutable //ห้ามเปลี่ยนแปลงค่าใน class นี้
abstract class LoginEvent extends Equatable {
  @override
  List<Object?> get props => []; // track ว่ามีการเปลี่ยนแปลงของ event อะไรไหม
}
// ไว้นิยาวว่าเรามี event อะไรบ้างที่เราจะใช้ใน bloc ของเรา โดยแต่ละ event จะเป็น class ที่สืบทอดมาจาก LoginEvent
class LoginEventAdd extends LoginEvent {}
class LoginEventRemove extends LoginEvent {}