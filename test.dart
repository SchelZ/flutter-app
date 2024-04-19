var inix = 0, iniy = 0, rr = 0;

// clasele alea sunt practic struct-uri si valorile trebuie define by defaut 

class grp {
  String? line;
  bool? point;
  grp({required this.line, required this.point});
}

int poz(int x) {
  if (x < 0){ x = -x; }
  return x;
} 

class crd {   // trebuie definite valori 
  int? x;
  int? y;
  crd({required this.x, required this.y});
}

class ordered {
  int? orx;
  int? ory;
  ordered({required this.orx, required this.ory});
}


void main() {
  // runApp(const MyApp());
  // ordered.orx = 10;
    List<ordered> g = List.generate(20, (index) => ordered(orx: 0, ory: 0));
    g[0] = ordered(orx: 10, ory: 20);
    print('g[0].orx: ${g[0].orx}, g[0].ory: ${g[0].ory}');
}
