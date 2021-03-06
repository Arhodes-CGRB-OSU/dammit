#!/usr/bin/env sh

DATA_DIR=dammit/tests/test-data
TEST_FILE=pom.single.fa
TEST_PEP=pep.fa

dammit annotate $DATA_DIR/$TEST_FILE
dammit annotate --evalue 10.0 $DATA_DIR/$TEST_FILE -o $TEST_FILE.dammit.evalue10
dammit annotate $DATA_DIR/$TEST_FILE --user-databases $DATA_DIR/$TEST_PEP -o $TEST_FILE.dammit.udb

cp $TEST_FILE.dammit/$TEST_FILE.dammit.fasta $DATA_DIR/
cp $TEST_FILE.dammit/$TEST_FILE.dammit.gff3 $DATA_DIR/

cp $TEST_FILE.dammit.evalue10/$TEST_FILE.dammit.fasta $DATA_DIR/$TEST_FILE.dammit.fasta.evalue10
cp $TEST_FILE.dammit.evalue10/$TEST_FILE.dammit.gff3 $DATA_DIR/$TEST_FILE.dammit.gff3.evalue10

cp $TEST_FILE.dammit.udb/$TEST_FILE.dammit.fasta $DATA_DIR/$TEST_FILE.dammit.fasta.udb
cp $TEST_FILE.dammit.udb/$TEST_FILE.dammit.gff3 $DATA_DIR/$TEST_FILE.dammit.gff3.udb
