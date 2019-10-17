#!/bin/bash
#Compile the CMUdict g014b2b trained model.
#The ARPA model included here has N=15 which is
# the point where the CMUdict partition maxed out
# in terms of Word Accuracy improvements
echo "fstcompile --ssymbols=g014b2b.ssyms --isymbols=g014b2b.isyms --keep_isymbols --osymbols=g014b2b.osyms --keep_osymbols g014b2b.fst.txt > g014b2b.fst"

fstcompile --ssymbols=g014b2b.ssyms --isymbols=g014b2b.isyms --keep_isymbols --osymbols=g014b2b.osyms --keep_osymbols g014b2b.fst.txt > g014b2b.fst