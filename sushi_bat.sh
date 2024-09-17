#!/bin/bash
rm -r ~/.fhir
cp -r ~/.fhir_sushiVersion ~/.fhir
sushi -s .
rm -r ~/.fhir
cp -r ~/.fhir.validation ~/.fhir
#rm -rf fsh-generated