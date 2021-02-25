/-  *post
|_  i=indexed-post
++  grow
  |%
  ++  noun  i
  ::
  ++  graph-permissions-add
    ?+  index.p.i  !!
      [@ ~]        [%yes %yes %no]
    ==
  ::
  ++  graph-permissions-remove
    ?+  index.p.i  !!
      [@ ~]        [%yes %self %self]
    ==
  --
++  grab
  |%
  ++  noun
    |=  p=*
    =/  ip  ;;(indexed-post p)
    ?+    index.p.ip  !!
    ::  top level post
    ::  first content is the book title
    ::
        [@ ~]
      ?>  ?=([* ~] contents.p.ip)
::      ?>  ?=([%text -.i.contents.p.ip])
      ip
    ==
  --
++  grad  %noun
--
