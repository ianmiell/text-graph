```
root@962f0305791d:~/tmp# rel dot

digraph main {
  
  n2g0029ase [label="isaac"]; 
  nds002i3ha [label="ian"]; 

  
  nds002i3ha->n2g0029ase [
    label="parentof",
    dir=none
  ]; 
}
root@962f0305791d:~/tmp# rel link --neutral parentof | graph-easy 
Interrupt
                   from: ^C' not recognized by Graph::Easy::Parser at /usr/local/bin/graph-easy line 84.
root@962f0305791d:~/tmp# rel dot | graph-easy 
+----------+
|   ian    |
+----------+
  |
  |
  v
+----------+
| parentof |
+----------+
```
