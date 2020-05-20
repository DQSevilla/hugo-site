+++ 
draft = true
date = 2020-04-27T01:49:51-04:00
title = "Optimizing a Parallel Breadth First Search (Test Post)"
description = "Discoveries I made while trying to optimize a parallel BFS algorithm with CUDA"
slug = "" 
tags = ["CUDA", "C", "GPU"]
categories = ["Coursework"]
externalLink = ""
series = []
+++

Breadth-First search is a well-known graph traversal algorithm with psuedocode
like so:

**Note there is apparently a featured image option**

```c {linenos=table,hl_lines=[4,"1-2"],linenostart=30}
#include <stdio.h>

int
main(void) {

    (void)printf("Hello World!\n");
}
```

```ocaml
open Ll
open Llutil
open Datastructures

(* control flow graphs ------------------------------------------------------ *)

(* This representation of control-flow graphs is more suited for dataflow
   analysis than the abstract syntax defined in Ll.fdecl

   - a cfg has:
         blocks - a map of labels to  Ll basic block, and
         preds  - a set of labels containing the blocks predecessors
         ret_ty - the Ll return type of the function
         args   - a list of function parameters with their types

   Representing cfgs as maps makes it simpler to look up information
   about the nodes in the graph.                                              *)

type cfg = {
  blocks : Ll.block LblM.t;
  preds  : LblS.t LblM.t;
  ret_ty : Ll.ty;
  args   : (Ll.uid * Ll.ty) list
}

let entry_lbl = "_entry"
```

---

This is nice:
--
https://gohugo.io/content-management/shortcodes/

Def need to read about shortcodes for sexier articles

```cuda
__global__ void
NaiveBFS(int source, int *edges, int *dest, int *visited, int *frontier) {
    int tid = blockDim.x * blockIdx.x + threadIdx.x;

    /* ... $G=(V,E)$ */
}
```

I love `tee(1)` so much.

> I like block quotes
> a lot

> Do they work with LaTeX?
> $G = (V, E)$
>
> Oh wow they do!

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

{{< figure src="/media/foo.jpg" 
    title="Foo Title"
    caption="A **Caption** for [foo](https://www.google.com)"
    attr="and Image attributed to **Ghandi** or something"
    attrlink="https://en.wikipedia.org/wiki/Mahatma_Gandhi"
    alt="foo image alt"
    link="https://www.google.com"
    target="_blank"
    rel="external"
    class="sample-figure-class"
    width="50%"
    height="100%"
>}}

I can add classes to the custom css in the config.toml and use the "class"
attribute for the above figure to further customize it if I want a nice unified
theme for figures (like a border or whatever). Apparently this doesn't work
with the public/custom.css I have though

---

[CMS Contribution Article]({{< ref "posts/lss-cms-api-contribution.ms" >}})

relref is relative to this page, and ref is absolute. You can use "path#id" to
go to header "id" in the target article.

With shortcodes you can also import:
- Tweets
- Insta posts
- Vimeo videos
- Youyube videos

---

{{< gist dqsevilla b82b25503d50229108e615e66fda50ce "ec2-backup" >}}
