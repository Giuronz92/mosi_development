import 'package:app_bank/component/registration_section_field.dart';
import 'package:app_bank/component/registration_text_field.dart';
import 'package:flutter/material.dart';

enum SexModel {
  male,
  female,
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  SexModel? sex;
  double ral = 0;
  bool TermsAndConditionsAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(children: [
          header(),
          body(),
        ]),
      ),
    );
  }

  Widget header() => Image.network(
        "https://investiuser.blob.core.windows.net/public/img/art/lg/17072020163414Intesa-San-Paolo-chiude-il-primo-trimestre-del-2020.jpeg",
        width: double.infinity,
        height: 300,
        fit: BoxFit.cover,
      );

  Widget body() => Positioned(
        top: 230,
        bottom: 0,
        left: 0,
        right: 0,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.network(
                  "https://scontent-fco2-1.xx.fbcdn.net/v/t1.18169-9/21731275_1682799335064572_4069891249691020814_n.png?_nc_cat=103&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=pLoCKkUWNpwAX9N7oqS&_nc_ht=scontent-fco2-1.xx&oh=00_AfBV8d2SkjYy1OUewImkhXk-elzm2oqCpCdvCWVDnCzGQw&oe=63E50C94",
                  width: 100,
                  height: 100,
                ),
                RegistrationSection(
                  title: "Il tuo nome",
                  child: RegistrationTextField(
                    hintText: "Il tuo nome e cognome",
                  ),
                ),
                SizedBox(height: 10),
                RegistrationSection(
                  title: "la tua età",
                  child: RegistrationTextField(
                    hintText: "La tua età",
                    keyboardType: TextInputType.number,
                  ),
                ),
                SizedBox(height: 10),
                Divider(),
                RegistrationSection(
                  title: "Sesso",
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      RadioListTile<SexModel>(
                        title: Text("Uomo"),
                        value: SexModel.male,
                        groupValue: sex,
                        activeColor: Colors.green.shade900,
                        onChanged: (value) => setState(() => sex = value),
                      ),
                      RadioListTile<SexModel>(
                        title: Text("Donna"),
                        value: SexModel.female,
                        groupValue: sex,
                        activeColor: Colors.green.shade900,
                        onChanged: (value) => setState(() => sex = value),
                      ),
                      SizedBox(height: 10),
                      Divider(),
                      RegistrationSection(
                        title: "RAL",
                        child: Slider(
                          value: ral,
                          min: 0,
                          max: 100000,
                          divisions: 1000,
                          activeColor: Colors.green.shade800,
                          inactiveColor: Colors.green.shade300,
                          label: "${(ral / 1000).round()}k",
                          onChanged: (value) => setState(() => ral = value),
                        ),
                      ),
                      SizedBox(height: 10),
                      Divider(),
                      RegistrationSection(
                        title: "Termini e condizioni d'uso",
                        child: SwitchListTile(
                          title: Text(TermsAndConditionsAccepted
                              ? "Accetto"
                              : "Non Accetto"),
                          value: TermsAndConditionsAccepted,
                          activeColor: Colors.green.shade800,
                          onChanged: (value) => setState(
                              () => TermsAndConditionsAccepted = value),
                        ),
                      ),
                      SizedBox(height: 10),
                      Divider(),
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            minimumSize: MaterialStateProperty.all(
                              Size(double.infinity, 50),
                            ),
                            backgroundColor: MaterialStateProperty.all(
                                Colors.green.shade900),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ))),
                        child: Text("Apri il mio conto"),
                      ),
                      SizedBox(height: 32),
                      Center(
                        child: ListTile(
                          title: ("Copyright © 2023 Gruppo Intesa San Paolo"),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
