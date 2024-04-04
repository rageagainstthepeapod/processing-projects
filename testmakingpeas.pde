//  Base(float xx, float yy, float sizee, int unitss, int levell, int teamm, ) {
// Pee(float xx, float yy, float vxx, float vyy, int teamm, float sizee) {
Base base1;
Base base2;

Pee pee1;
Pee pee2;
void setup() {
  size(700, 450);
  // make 2 bases
  // make 2 pees
  base1=new Base(100, 60, 10,5, 1,1);
  base2=new Base(600, 60, 10,5,1,2);
  pee1=new Pee(200, 60, 0, 0, 1, 5);
  pee2=new Pee(600, 60, 0, 0, 2, 5);
}

void draw() {
  background(0);
  base1.show();
  base2.show();
  pee1.show();
  pee2.show();
}
