#include <math.h>

/*
 * IPerfcvec - compute erfc on a vector of complex values
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

void IPerfcvec(double *x, double *y, double *ansx, double *ansy, long *n,
	long *error)
{
long i;
int flag;
void IPerfc();
void wofz_();

for(i=0; i< *n; ++i)	{

	IPerfc( x+i, y+i, ansx+i, ansy+i, &flag);
/*
	wofz_( x+i, y+i, ansx+i, ansy+i, &flag);
*/


	if (flag != 0)	{
		*error = flag;
		return;
		}
	}
}

void IPerfc(double *a, double *b, double *outa, double *outb, long *error)
{
double f;
double g;
double d;
double e;
void wofz_();

*error =0l;

f = (*b)*(*b) - (*a)*(*a);
g = 2.0*(*a)*(*b);

/* Want to work out w(ia-b) */

*b = -(*b);

wofz_( b, a, &d, &e, error);

*b = -(*b);

if (*error != 0)
	return; 

*outa = exp(f)*(d*cos(g) + e*sin(g));
*outb = exp(f)*(-d*sin(g) + e*cos(g));
}
