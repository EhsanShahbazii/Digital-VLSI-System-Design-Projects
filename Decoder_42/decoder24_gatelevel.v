/********************************************************************************
*	Author : Ehsan Shahbazi	
*	Description : 2-1 decoder gatelevel
********************************************************************************/

module decoder24_gatelevel(D, x, y, E);

	output [3:0] D;
	input x, y, E;
	
	wire nx, ny, nE;
	
	not no0(nx, x);
	not no1(ny, y);
	not no2(nE, E);
	
	nand n0(D[0], nx, ny, nE);
	nand n1(D[1], x, ny, nE);
	nand n2(D[2], nx, y, nE);
	nand n3(D[3], x, y, nE);
	
endmodule
