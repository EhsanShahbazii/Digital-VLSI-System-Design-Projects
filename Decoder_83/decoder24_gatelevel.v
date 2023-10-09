/********************************************************************************
*	Author : Ehsan Shahbazi	
*	Description : 2-4 decoder gate level
********************************************************************************/

module decoder24_gatelevel(D, x, y, E);

	output [3:0] D;
	input x, y, E;
	
	wire nx, ny, nE;
	
	not no1(nx, x);
	not no2(ny, y);
	not no3(nE, E);
	
	nand n1(D[0], nx, ny, nE);
	nand n2(D[1], x, ny, nE);
	nand n3(D[2], nx, y, nE);
	nand n4(D[3], x, y, nE);
	
endmodule;
