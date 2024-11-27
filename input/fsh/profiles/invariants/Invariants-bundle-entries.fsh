/*
Invariant: bundle-entries-valid
Severity: #error
Description: "bundleリソースを構成するentryがすべて妥当なリソースインスタンスから構成されている"
Expression: 
*/
/*
* entry[patient].resource only JP_Patient_eMunicipalCheckup
* entry[practitionerRole].resource only JP_PractitionerRole_eMunicipalCheckup
* entry[organizationProvider].resource only JP_Organization_eMunicipalCheckup_Provider
* entry[practitioner].resource only JP_Practitioner_eMunicipalCheckup
* entry[encounter].resource only JP_Encounter_eMunicipalCheckup
* entry[coverage].resource only JP_Coverage_eMunicipalCheckup
* entry[organizationInsurer].resource only JP_Organization_eMunicipalCheckup_Insurer
* entry[observationGroup].resource only JP_Observation_eMunicipalCheckup_Group
* entry[observation].resource only JP_Observation_eMunicipalCheckup
* entry[specimen].resource only JP_Specimen_eMunicipalCheckup
* entry[diagnosticReport].resource only JP_DiagnosticReport_eMunicipalCheckup
* entry[media].resource only JP_Media_eMunicipalCheckup
* entry[documentReference].resource only JP_DocumentReference_eMunicipalCheckup
*/
/* entry contains
    composition 1..1 MS and 
    patient 1..1 MS and
    practitionerRole 1..1 MS and
    organizationProvider 1..1 MS and
    practitioner 1..1 MS and
    encounter 1..1 MS and
    coverage 0..1 MS and
    organizationInsurer 0..1 MS and
    observationGroup 0..* MS and
    observation 0..* MS and
    specimen 0..* MS and
    diagnosticReport 0..* MS and
    media 0..* MS and
    documentReference 0..* MS
*/

Invariant: bundle-entry0-JP-Composition-eCheckupGeneral
Severity: #error
Description: "bundleリソースを構成するentry[0]にmeta.profileがJP_Composition_eCheckupGeneralであるCompositionリソースがなければならない。"
Expression: "entry[0].resource.meta.profile.where($this.indexOf('|')>0 and ($this.indexOf('|')>0 implies ($this.substring(0,$this.indexOf('|'))='http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Composition_eCheckupGeneral'))).exists() or entry[0].resource.meta.profile.where($this='http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Composition_eCheckupGeneral').exists()"
/*Expression: "(entry[0].resource.meta.profile.where($this.indexOf('|')>0 and ($this.indexOf('|')>0 implies ($this.substring(0,$this.indexOf('|'))='http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Composition_eCheckupGeneral'))).exists()) or (entry[0].resource.meta.profile.where($this='http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Composition_eCheckupGeneral').exists())"
*/

Invariant: exist-entry0-no-version
Severity: #error
Description: "exist-entry0-no-version"
Expression: "entry[0].resource.meta.profile.where($this='http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Composition_eCheckupGeneral').exists()"

Invariant: exist-entry0-with-version
Severity: #error
Description: "exist-entry0-with-version"
Expression: "entry[0].resource.meta.profile.where($this.indexOf('|')>0 and ($this.indexOf('|')>0 implies ($this.substring(0,$this.indexOf('|'))='http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Composition_eCheckupGeneral'))).exists()"

Invariant: exist-entry0-no-version-first
Severity: #error
Description: "exist-entry0-no-version"
Expression: "entry.first().resource.meta.profile.where($this='http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Composition_eCheckupGeneral').exists()"

Invariant: exist-entry0-with-version-first
Severity: #error
Description: "exist-entry0-with-version"
Expression: "entry.first().resource.meta.profile.where($this.indexOf('|')>0 and ($this.indexOf('|')>0 implies ($this.substring(0,$this.indexOf('|'))='http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Composition_eCheckupGeneral'))).exists()"


Invariant: bundle-entry-JP-Patient-eCheckupGeneral
Severity: #error
Description: "bundleリソースを構成するentryにmeta.profileがJP_Patient_eCheckupGeneralであるPatientリソースがなければならない。"
Expression: "entry.resource.meta.profile.where($this.indexOf('|')>0 and ($this.indexOf('|')>0 implies ($this.substring(0,$this.indexOf('|'))='http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Patient_eCheckupGeneral'))).exists() or entry.resource.meta.profile.where($this='http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Patient_eCheckupGeneral').exists()"

//http://jpfhir.jp/fhir/clins/StructureDefinition/JP_Patient_eCheckupGeneral
Invariant: bundle-entry-JP-Patient-CLINS-eCheckupGeneral
Severity: #error
Description: "bundleリソースを構成するentryにmeta.profileがJP_Patient_CLINS_eCheckupGeneralであるPatientリソースがなければならない。"
Expression: "entry.resource.meta.profile.where($this.indexOf('|')>0 and ($this.indexOf('|')>0 implies ($this.substring(0,$this.indexOf('|'))='http://jpfhir.jp/fhir/clins/StructureDefinition/JP_Patient_eCheckupGeneral'))).exists() or entry.resource.meta.profile.where($this='http://jpfhir.jp/fhir/clins/StructureDefinition/JP_Patient_eCheckupGeneral').exists()"


Invariant: bundle-entry-JP-OrganizationReporter-eCheckupGeneral
Severity: #error
Description: "bundleリソースを構成するentryにmeta.profileがJP_Organization_eCheckupGeneralであるOrganizationリソースがなければならない。"
Expression: "entry.resource.meta.profile.where($this.indexOf('|')>0 and ($this.indexOf('|')>0 implies ($this.substring(0,$this.indexOf('|'))='http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Organization_eCheckupGeneral'))).exists() or entry.resource.meta.profile.where($this='http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Organization_eCheckupGeneral').exists()"


Invariant: bundle-entry-JP-PractitionerReporter-eCheckupGeneral
Severity: #error
Description: "bundleリソースを構成するentryにmeta.profileがJP_Practitioner_eCheckupGeneralであｒｙPractitionerリソースがなければならない。"
Expression: "entry.resource.meta.profile.where($this.indexOf('|')>0 and ($this.indexOf('|')>0 implies ($this.substring(0,$this.indexOf('|'))='http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Practitioner_eCheckupGeneral'))).exists() or entry.resource.meta.profile.where($this='http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Practitioner_eCheckupGeneral').exists()"



Invariant: bundle-entry-JP-Encounter-eCheckupGeneral
Severity: #error
Description: "bundleリソースを構成するentryにmeta.profileがJP_Encounter_eCheckupGeneralであるEncounterリソースがなければならない。"
Expression: "entry.resource.meta.profile.where($this.indexOf('|')>0 and ($this.indexOf('|')>0 implies ($this.substring(0,$this.indexOf('|'))='http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Encounter_eCheckupGeneral'))).exists() or entry.resource.meta.profile.where($this='http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Encounter_eCheckupGeneral').exists()"

