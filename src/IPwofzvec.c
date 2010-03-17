#include <math.h>

/*
 * IPwofzvec - compute Faddeeva function, w(z) on a vector of complex values
 *
 *
 * Input:	x + iy	(x and y are double vectors containing the real
			and imaginary parts of the complex vector that
			you wish to transform)

 * Output:	ansx + i ansy (ansx and ansy are double vectors containing
			the real and imaginary parts of the transformed vector)

 * Other variables:
 *
 *	n:	Length of each of the vectors x, y, ansx, ansy
 *
 *	error:	Error code from the routine that computes Faddeva's function
		(computed by TOMS routine 680). Zero means no error.
 */

void IPwofzvec(double *x, double *y, double *ansx, double *ansy, int *n,
	int *error)
{
	int i, flag;
	void IPwofz();
	void wofz_();

	for(i=0; i< *n; ++i)	{
		wofz_( x+i, y+i, ansx+i, ansy+i, &flag);

		if (flag != 0)	{
			*error = flag;
			return;
		}
	}
}

void IPwofz(double *a, double *b, double *outa, double *outb, int *error)
{

	double d, e;
	void wofz_();

	*error =0l;

	/* Want to work out w(ia+b) */

	wofz_( a, b, &d, &e, error);
	if (*error) return; 

	*outa = d;
	*outb = e;
}
