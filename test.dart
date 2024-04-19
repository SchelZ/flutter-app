var inix = 0, iniy = 0, rr = 0;

// clasele alea sunt practic struct-uri si valorile trebuie define by defaut 

class grp {
  String? line;
  bool? point;
  grp({required this.line, required this.point});
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

int poz(int x) {
  if (x < 0){ x = -x; }
  return x;
} 

int? lne(String x) {
  switch(x){
    case '-':
     return 1;
    case '|':
     return 2;
    case '/':
     return 3;
    case '(':
     return 4;
  }
}

int? axis(String x){
  switch(x){
    case 't':
      return 1;
    case 'p':
      return 2;
    case 'v':
      return 3;
  }
}


void main() {
  int n, i, j, ok = 0, nmx, nmy, u = 1, ok2 = 0, ok3 = 0;
  int ofx,ofy;
  int ciclica;
  int all,other;
  String axa1, axa2,cother;
  // runApp(const MyApp());
  // ordered.orx = 10;
  List<grp> g = List.generate(20, (index) => grp(line: "", point: false));    // grp g[20];
  List<crd> cr = List.generate(20, (index) => crd(x: 0, y: 0));    // crd cr[20];

  int cx = 0, cy = 0;
  int px = 0, py = 0;

  // print('g[0].orx: ${g[0].orx}, g[0].ory: ${g[0].ory}');
}
