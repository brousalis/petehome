Standard g014b2b training/testing run

Commands run from the 'script' subdirectory of a standard phonetisaurus distribution.

Setup
$ mkdir g014b2b

Aligner command (default)
$ ../m2m-aligner.py -s1 -s2 -wa g014b2b/g014b2b.corpus -a ../partitions/g014b2b.train.fix.bsf

Training command (mitlm)
$ ./train-model.py --smoothing FixModKN --dict ../partitions/g014b2b.train.fix.bsf --prefix g014b2b/g014b2b --noalign --palign --order 15

Evaluation command
$ ./evaluate.py --modelfile g014b2b/g014b2b.fst --testfile ../partitions/g014b2b.test.fix.bsf --prefix g014b2b/g014b2b
Words: 12000  Hyps: 12000 Refs: 12000
######################################################################
                          EVALUATION RESULTS                          
----------------------------------------------------------------------
(T)otal tokens in reference: 75777
(M)atches: 71705  (S)ubstitutions: 3629  (I)nsertions: 374  (D)eletions: 443
% Correct (M/T)           -- %94.63
% Token ER ((S+I+D)/T)    -- %5.87
% Accuracy 1.0-ER         -- %94.13
       --------------------------------------------------------       
(S)equences: 12000  (C)orrect sequences: 9060  (E)rror sequences: 2940
% Sequence ER (E/S)       -- %24.50
% Sequence Acc (1.0-E/S)  -- %75.50
######################################################################
