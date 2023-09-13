void main() {
  
  String fruta = "Morango";
  double peso = 1.5;
  int diasDesdeColheita = 15;
  int diasParaFicarMadura = 30;
  bool isMadura;
  String estaMadura = "";

  if (diasDesdeColheita >= diasParaFicarMadura){
    isMadura = true;
  }else{
    isMadura = false;
  }

  if (isMadura == true){
    estaMadura = "está madura!";
  }else{
    estaMadura = "não está madura";
  }

  print("A ${fruta} pesa ${peso} gramas! Ela foi colhida há ${diasDesdeColheita} dias e precisa de ${diasParaFicarMadura} para amadurecer, logo, a ${fruta} ${estaMadura}");
}

String toString(
    {required String nome,
    required double peso,
    required diasDesdeColheita,
    int diasParaMadura = 30,
    bool? isMadura}) {
  if (isMadura == null) {
    isMadura = diasDesdeColheita >= diasParaMadura;
  }

  String maduraString = "";
  if (isMadura != null && !isMadura) {
    maduraString = "não ";
  }

  String result =
      "A $nome pesa $peso gramas! Ela foi colhida há  $diasDesdeColheita dias e precisa de  $diasParaMadura dias para amadurecer, logo, a $nome ${maduraString}está madura!";

  return result;
}

