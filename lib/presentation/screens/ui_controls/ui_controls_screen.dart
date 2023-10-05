import 'package:flutter/material.dart';

class UIcontrolsScreen extends StatelessWidget {
  static const name = 'ui_controls_screen';

  const UIcontrolsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("UI Controls")),
      body: _UIControlsMenu(),
    );
  }
}

class _UIControlsMenu extends StatefulWidget {
  const _UIControlsMenu({
    super.key,
  });

  @override
  State<_UIControlsMenu> createState() => _UIControlsMenuState();
}

enum Transportation { car, plane, submarine, boat }

class _UIControlsMenuState extends State<_UIControlsMenu> {
  bool developerMode = true;
  Transportation selectedTransport = Transportation.car;
  bool wantsBreakfast = false;
  bool wantsDinner = false;
  bool wantsLaunch = false;
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: Text("Developer Mode"),
          subtitle: Text("Controles adicionales"),
          value: developerMode,
          onChanged: (value) {
            setState(() {
              developerMode = !developerMode;
            });
          },
        ),
        ExpansionTile(
          title: Text("Vehiculos de Transporte"),
          subtitle: Text("$selectedTransport"),
          children: [
            RadioListTile(
              title: Text('Car'),
              subtitle: Text('Viajar en auto'),
              value: Transportation.car,
              groupValue: selectedTransport,
              onChanged: (value) => setState(() {
                selectedTransport = Transportation.car;
              }),
            ),
            RadioListTile(
              title: Text('Boat'),
              subtitle: Text('Viajar en barco'),
              value: Transportation.boat,
              groupValue: selectedTransport,
              onChanged: (value) => setState(() {
                selectedTransport = Transportation.boat;
              }),
            ),
            RadioListTile(
              title: Text('Plane'),
              subtitle: Text('Viajar en avion'),
              value: Transportation.plane,
              groupValue: selectedTransport,
              onChanged: (value) => setState(() {
                selectedTransport = Transportation.plane;
              }),
            ),
            RadioListTile(
              title: Text('Submarine'),
              subtitle: Text('Viajar en submarino'),
              value: Transportation.submarine,
              groupValue: selectedTransport,
              onChanged: (value) => setState(() {
                selectedTransport = Transportation.submarine;
              }),
            ),
          ],
        ),
        CheckboxListTile(
            title: Text("Quiere desayuno"),
            value: wantsBreakfast,
            onChanged: (value) => setState(() {
                  wantsBreakfast = !wantsBreakfast;
                })),
        CheckboxListTile(
            title: Text("Quiere almuerzo"),
            value: wantsLaunch,
            onChanged: (value) => setState(() {
                  wantsLaunch = !wantsLaunch;
                })),
        CheckboxListTile(
            title: Text("Quiere cena"),
            value: wantsDinner,
            onChanged: (value) => setState(() {
                  wantsDinner = !wantsDinner;
                })),
      ],
    );
  }
}
