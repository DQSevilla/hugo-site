+++ 
draft = true
date = 2020-04-27T01:49:51-04:00
title = "Optimizing a Parallel Breadth First Search"
description = "Discoveries I made while trying to optimize a parallel BFS algorithm with CUDA"
slug = "" 
tags = ["CUDA", "C", "GPU"]
categories = ["Coursework"]
externalLink = ""
series = []
+++

Breadth-First search is a well-known graph traversal algorithm with psuedocode
like so:

```python
for vertex in Vertices:
    print("foo")
```

**Note there is apparently a featured image option**

```c {linenos=table,hl_lines=[4,"1-2"],linenostart=30}
#include <stdio.h>

int
main(void) {

    (void)printf("Hello World!\n");
}
```

https://gohugo.io/content-management/shortcodes/

Def need to read about shortcodes for sexier articles

```cuda
__global__ void
NaiveBFS(int source, int *edges, int *dest, int *visited, int *frontier) {
    int tid = blockDim.x * blockIdx.x + threadIdx.x;

    /* ... $G=(V,E)$ */
}
```

$G = (V, E)$

$$
\forall v \in V:
$$
$$
\text{do bar}
$$

$$
\int_0^{20} x^2 dx\\
x = 2
$$
