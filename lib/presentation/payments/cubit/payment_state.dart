part of 'payment_cubit.dart';

@immutable
sealed class PaymentState {}

final class PaymentInitial extends PaymentState {}

final class Paymentchoosingmethods extends PaymentState {}

final class CardNameUpdate extends PaymentState{}

final class CardDateUpdate extends PaymentState{}

final class CardNumberUpdate extends PaymentState{}

final class CardCVVUpdate extends PaymentState {}  