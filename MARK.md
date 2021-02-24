# Mark Development Scratchpad

```
=g -build-file %/sur/graph-store/hoon
=gu (update:g [%0 now [%add-graph [~timluc %timtime] *graph:g `%graph-validator-publish %.n]])
:graph-store &graph-update gu
:graph-store +dbug [%state 'validators']
```

## TODO
- write a generator that does Clay scry and graph-validator
