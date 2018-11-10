#include "param.h"
#define CARRIER 5
#define CRUISER 4
#define DESTROYER 3
#define SUB 3
#define PATROL 2
#define SIZE 8


int main()
{
	int p1_battlespace[SIZE][SIZE];
	int p2_battlespace[SIZE][SIZE];
	int p1_guess[SIZE][SIZE];
	int p2_guess[SIZE][SIZE];
	int x, y;
	struct huff code[6];
	struct huff hcode[16];
	setup(hcode);
	init_board(p1_battlespace, p1_guess,size);
	init_board_auto(p2_battlespace, p2_guess);

	while(! gameover(p1_guess) && ! gameover(p2_guess)){

		get_guess(&x, &y); //player 1

		update(p2_battlespace, p1_guess, x, y);

		if(gameover(p1_guess)) // Done in asm
		break;

		get_guess_auto(&x, &y); // player 2
		update(p1_battlespace, p2_guess, x, y);
	}

return (0);
}
