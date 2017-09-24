#!/usr/bin/env nextflow
// TEST main
// Version 1.0.0
// Author: maurizio Polano
// E-mail: mauriziopolano@blu.it

// default modules
params.help = false
params.subsample = false

// default parameters
params.threads = 1
params.outdir = './results'



str2 = Channel.from('')
str = Channel.from('hello', 'hola', 'bonjour', 'ciao')

process printHello {

   input:
   val str 

   output: 
   stdout into result

   """
   echo $str
   """
}	


process samtools{

 input:
   val str2
 output:
 stdout into result2

 """
 samtools 
"""





}


result.subscribe { print it }
result2.subscribe { print it}

