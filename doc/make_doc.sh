#!/usr/bin/env bash

doxygen

for diagfile in document/seqsrc/*
do
  imgfile=$(echo $diagfile| perl -pe 's/\.dat$/.png/g'|perl -pe 's{/seqsrc/}{/img/}g')
  seqdiag $diagfile -o $imgfile
done

for diagfile in document/blocksrc/*
do
  imgfile=$(echo $diagfile| perl -pe 's/\.dat$/.png/g'|perl -pe 's{/blocksrc/}{/img/}g')
  blockdiag $diagfile -o $imgfile
done

