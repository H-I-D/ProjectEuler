#include <tgmath.h>
#include <stdio.h>
#include <stdlib.h>

// 20s

// Euclidean Algorithm
int gcd(int x, int y){
	if(y < 1) exit(0);  // error
	int z;
	if(x < y){
		z = x;
		x = y;
		y = z;
	}
	if(x % y == 0) return y;
	return gcd(y, x % y);
}

int is_square(int a, int b, int c, int d){
	int lp_contains = ((a+c)*(b+d)/2) - (gcd(a,b) + gcd(b,c) + gcd(c,d) + gcd(d,a)) / 2 + 1;
	return pow((int)sqrt(lp_contains), 2) == lp_contains;
}
int main(){
	int m = 100;
	// printf("input m: "); scanf("%d", &m);
	int lp_square = 0; // answer
	for(int a = 1; a <= m; a++){
		for(int b = 1; b <= m; b++){
			for(int c = 1; c <= m; c++){
				for(int d = 1; d <= m; d++){
					if(is_square(a, b, c, d)) lp_square++;
				}
			}
		}
	}
	printf("answer: %d\n", lp_square);
}
