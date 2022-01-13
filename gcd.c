// gcd.c

#include <stdio.h>

int gcd(int x, int y);

int main(int argc, char **argv)
{
  // Töötle char array ümber arvuks
	if (argc >= 3){
	  char *x_s = argv[1];
    int x_i =0;
	  char *y_s = argv[2];
    int y_i =0;
    int x = 0;
    int y = 0;
    while(x_s[x_i]!=0){
      x *= 10;
      x += x_s[x_i++]-'0';
    }
    while(y_s[y_i]!=0){
      y *= 10;
      y += y_s[y_i++]-'0';
    }
    printf("Sisendina anti kaks positiivset arvu:\n\t\t x: %d y: %d\n", x, y);
    int z = gcd(x, y);
    printf("GCD(%d, %d) = %d\n", x, y, z);
  }
  else {
    printf("Palun anna 2 positiivset arvu argumentideks!\n");
    printf("./gcd <n1> <n2>\n");
  }
}