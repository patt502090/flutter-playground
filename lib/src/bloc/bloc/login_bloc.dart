import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_demo_0/src/models/user.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

// ไว้นืยาม logic
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState()) {
    // on listener ใช้ในการดักฟัง event ที่เกิดขึ้นใน bloc และทำการเปลี่ยนแปลง state ตาม event ที่เกิดขึ้น
    // Add
    on<LoginEventAdd>((event, emit) async {
      // execute something
      // อาจจะไป feed ข้้อมูลจาก api หรือ database ก่อนที่จะ emit state ใหม่ออกมา
      // emit เหมือนการยิง signal ไปบอก bloc ว่า state เปลี่ยนแปลงแล้ว มันจะสามารถเปลี่ยนแปลง value ของ state ได้
      await Future.delayed(Duration(seconds: 1));
      emit(state.copyWith(count: state.count + 1));
    });
    // Remove
    on<LoginEventRemove>((event, emit) async {
      // execute something
      // emit เหมือนการยิง signal ไปบอก bloc ว่า state เปลี่ยนแปลงแล้ว มันจะสามารถเปลี่ยนแปลง value ของ state ได้
      await Future.delayed(Duration(seconds: 1));
      emit(state.copyWith(count: state.count - 1));
    });
    on<LoginEventLogin>((event, emit) async {
      // execute something
      // emit เหมือนการยิง signal ไปบอก bloc ว่า state เปลี่ยนแปลงแล้ว มันจะสามารถเปลี่ยนแปลง value ของ state ได้
      emit(state.copyWith(isAuthenticated: true));
    });
  }
}
