part of 'login_bloc.dart';
// file นี้ไว้ป้องกันการเกิด interfere ของกันระหว่าง event ต่าง ๆ ที่เกิดขึ้นใน bloc โดยใช้ @immutable เพื่อบอกว่า class นี้เป็น immutable และ sealed class เพื่อบอกว่า class นี้ไม่สามารถถูกสืบทอดได้
@immutable
sealed class LoginEvent {}
