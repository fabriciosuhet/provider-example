import 'package:flutter/material.dart';

class ProviderController extends ChangeNotifier {
  String name = 'Nome';
  String imgAvatar =
      'https://yt3.googleusercontent.com/LOsnm6sCS_o5T3RijFEa2f_3tcu2o_Q5bJZ4qfMxQzBqvHAOq_s-pl6_hDKK4pMHX8pCaO2W1w=s900-c-k-c0x00ffffff-no-rj';
  String birthDate = 'Data';

  void alterarDados() {
    name = 'Fabrício Suhet';
    imgAvatar =
        'https://img.wattpad.com/514be0dadf8ecfdabde1ef15568fb68ce740e249/68747470733a2f2f73332e616d617a6f6e6177732e636f6d2f776174747061642d6d656469612d736572766963652f53746f7279496d6167652f6c6d7a31543674617745574e79513d3d2d313333353431313233392e313735616439363139653138636630363939393130353139353531332e6a7067';
    birthDate = '15/03/2000';
    notifyListeners();
  }

  void alterarNome() {
    name = 'Fabrício Silva';
    notifyListeners();
  }
}
