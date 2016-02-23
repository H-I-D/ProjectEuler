class Fibo{
	
	// 0.01362[ms]

	// 0, 1, 1, 2, 3, 5, 8, ...
	static int FIBO1(int n){
		if(n<=0) return 0;
		if(n == 1) return 1;
		return FIBO1(n-1) + FIBO1(n-2);
	}
  // O(n)
	static int FIBO2(int n){
		if(n == 0 || n == 1) return n;
		int x = 1, y = 1, z = 1, i = 2;
		while(i++ < n){
			z = x + y;
			x = y;
			y = z;
		}
		return z;
	}

	static int[][] A = {{1,1}, {1,0}};
	static int[][] A1 = {{1,1}, {1,0}};
	static int[][] B = new int[2][2];
	
	static void copy(int[][] a, int[][] b){
		for (int i = 0; i<2; i++) {
			for (int j = 0; j<2; j++) {
				a[i][j] = b[i][j];
			}
		}
	}
	
	static int[][] multiply(int[][] a, int[][] b){
		int[][] c = {{0,0},{0,0}};
		for(int i = 0; i<2; i++){
			for(int j = 0; j<2; j++){
				for(int k = 0; k<2; k++){
					c[i][j] += a[i][k] * b[k][j];
				}
			}
		}
		return c;
	}
	
	static int[][] A(int n){
		if(n == 0){
			int[][] fibo0 = {{0,0},{0,0}};
			return fibo0;
		}
		if(n != 1){
			if(n%2 == 0){
				copy(B,A(n/2));
				B = multiply(B,B);
				return B;
			}else{
				copy(B,A((n-1)/2));
				B = multiply(B,B);
				B = multiply(B,A1);
				return B;
			}
		}
		return A1;
	}
	// O(log(n)??)
	static int FIBO3(int n){
		int[][] result = A(n);
		return result[1][0];
	}
	////////////////////////////////////
	////////////////////////////////////
	
	public static void main(String[] args){
		long start_ns, stop_ns;
		start_ns = System.nanoTime();
		int sum_even = 0;
		int fibo;
		for(int i = 0; ; i++){
			// fibo = FIBO1(i);
			fibo = FIBO2(i);
			// fibo = FIBO3(i);
			if(fibo > 4000000) break;
			sum_even += (fibo%2 == 0) ? fibo : 0;
		}
		stop_ns = System.nanoTime();
		double time_ms = (double)(stop_ns-start_ns)/1000000;
		System.out.println("time: "+time_ms+"[ms]");
		System.out.println("sum: "+sum_even);
	}
}
