/-  *post
|_  i=indexed-post
++  grow
  |%
  ++  noun  i
  ::
  ::  TODO enumerate all options below
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
    ::  top level: book index
    ::  only content is the book title
    ::
        [@ ~]
      ?>  ?=([* ~] contents.p.ip)
      ?>  ?=(%text -.i.contents.p.ip)
      ip
    ::  container for chapters
    ::  null content
        [@ %chapters ~]
      ?>  ?=(~ contents.p.ip)
      ip
    ::  chapter
    ::  index is chapter number
    ::  first content is chapter title (can be blank)
    ::  second content is chapter content
    ::
        [@ %chapters @ud ~]
      ?>  ?=([* * ~] contents.p.ip)
      ?>  ?=(%text -.i.contents.p.ip)
      ?>  ?=(%text -.i.t.contents.p.ip)
      ip
    ::  container for bookmarks
        [@ %bookmarks ~]
      ?>  ?=(~ contents.p.ip)
      ip
    ::  container for annotations
        [@ %annotations ~]
      ?>  ?=(~ contents.p.ip)
      ip
    ::  container for table of contents
        [@ %toc ~]
      ?>  ?=(~ contents.p.ip)
      ip
    ==
  --
++  grad  %noun
--
