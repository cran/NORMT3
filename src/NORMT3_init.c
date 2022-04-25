#include <stdlib.h> // for NULL
#include <R_ext/Rdynload.h>

/* FIXME: 
   Check these declarations against the C/Fortran source code.
*/

/* .C calls */
extern void IPerfcvec(double *x, double *y, double *ansx, double *ansy,
	int *n, int *error);
extern void IPwofzvec(double *x, double *y, double *ansx, double *ansy, int *n, int *error);

static const R_CMethodDef CEntries[] = {
    {"IPerfcvec", (DL_FUNC) &IPerfcvec, 6},
    {"IPwofzvec", (DL_FUNC) &IPwofzvec, 6},
    {NULL, NULL, 0}
};

#include <R_ext/RS.h>
/* .Fortran calls */

void F77_NAME(wofz)(double *xi, double *yi, double *u, double *v, int *flag);

static const R_FortranMethodDef FortEntries[] = {
	{"wofz", (DL_FUNC) &F77_NAME(wofz), 5},
	{NULL, NULL, 0}
	};

void R_init_NORMT3(DllInfo *dll)
{
    R_registerRoutines(dll, CEntries, NULL, FortEntries, NULL);
    R_useDynamicSymbols(dll, FALSE);
}

