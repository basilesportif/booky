# Mark Development Scratchpad

## create/add a graph and children
```
:graph-store|add-graph [our %my-books] `%graph-validator-library %.y
:graph-store|add-book [our %my-books]
:graph-store +dbug [%state 'graphs']
:graph-store +dbug [%state 'validators']
```

## View Generator Output
```
+graph-store/add-graph [our %my-books] `%graph-validator-publish %.y
+graph-store/add-book [our %my-books] 'Great Expectations'
```

## Add Nodes
- top level
- one chapter
```

```
