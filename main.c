#include <stdlib.h>
#include <stdio.h>
#include <time.h>

#include "pq.h"
#include "m5ops.h"

int main(int argc, char *argv[])
{
  // Check for n on arguments
  if (argc < 2) {
    printf("Please inform a number n\n");
    return 1;
  }

  int i;
  const int n = atoi(argv[1]); // 10000;
  double *v = malloc(sizeof(double)*n);
  double **p = malloc(sizeof(double*)*n);
  pq *mypq;

  /* init */
  srand48(time(NULL));
  mypq = pq_create();
  for (i = 0; i < n; i++) {
    v[i] = drand48();
    p[i] = &v[i];
  }

  m5_dump_reset_stats(0, 0)

  /* begin sort */
  for (i = 0; i < n; i++) pq_push(&mypq, v[i], (void*)p[i]);
  for (i = 0; i < n; i++) p[i] = pq_pop(&mypq);
  /* end sort */

  m5_dump_reset_stats(0, 0)

  for (i = 0; i < n; i++) {
    if (p[i]) printf("%g\n", *p[i]);
  }

  pq_destroy(mypq);

  free(v);
  free(p);
  return 0;
}
