#!/bin/bash
rm -r ~/.fhir
cp -r ~/.fhir_sushiVersion ~/.fhir
sushi -s .
cd fsh-generated
mv resources package
cp ../forPackageRelease/package-diff.json package/package.json
mkdir -p ../ExampleJson
rm -rf ../ExampleJson
mkdir ../ExampleJson
mv package/*GOFSH* ../ExampleJson/
gtar czf jp-eChekupReport.r4.tgz package
rm ../packages_snapshot/jp-eChekupReport.r4.tgz
rm ../pkgValidation/jp-eChekupReport.r4.tgz
cp jp-eChekupReport.r4.tgz ../packages_snapshot
cp jp-eChekupReport.r4.tgz ../pkgValidation
cd ..
rm -r ~/.fhir
cp -r ~/.fhir.validation ~/.fhir
#rm -rf fsh-generated