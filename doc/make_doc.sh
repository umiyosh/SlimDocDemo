#!/usr/bin/env bash

doxygen

for diagfile in doc/seqsrc/*
do
  imgfile=$(echo $diagfile| perl -pe 's/\.dat$/.png/g'|perl -pe 's{/seqsrc/}{/html/img/}g')
  seqdiag $diagfile -o $imgfile
done

for diagfile in doc/blocksrc/*
do
  imgfile=$(echo $diagfile| perl -pe 's/\.dat$/.png/g'|perl -pe 's{/blocksrc/}{/html/img/}g')
  blockdiag $diagfile -o $imgfile
done

