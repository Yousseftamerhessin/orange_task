import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> {
  String cardNumber = "**** **** **** ****";
  String cardHolderName = "Holder name";
  String cardExpiryDate = "12/26";
  String cardCVV = "***";

  PaymentCubit() : super(PaymentInitial());

  void changeCardHolderName(String name) {
    
      cardHolderName = name;
    emit(CardNameUpdate());
    
    
  }

  void changeCardNumber(String number) {
    
    cardNumber = number;
    emit(CardNumberUpdate());
  }

  void changeExpiryDate(String date) {
    cardExpiryDate = date;
    emit(CardDateUpdate());
  }

  void changeCVV(String cvv) {
    cardCVV = cvv;
    emit(CardCVVUpdate());
  }
}
