/*
Profile: JP_ServiceRequest
Parent:	ServiceRequest
Id:             JP-ServiceRequest
Description:    "JP-ServiceRequest　プロファイル"
* ^url = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_ServiceRequest"
* ^version = "1"
* ^status = #active
* ^date = "2024-09-14"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* ^fhirVersion = #4.0.1
* meta.lastUpdated 0.. MS
*/

/*
Profile: JP_Specimen
Parent:	Specimen
Id:             JP-Specimen
Description:    "JP-Specimen　プロファイル"
* ^url = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Specimen"
* ^version = "1"
* ^status = #active
* ^date = "2024-09-14"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* ^fhirVersion = #4.0.1
* meta.lastUpdated 0.. MS
*/

Profile:        JP_Observation_Common_eCS
Parent:			JP_Observation_Common
Id:             JP-Observation-eCS
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Observation_Common_eCS"
* ^version = "1"
* ^status = #active
* ^date = "2024-09-14"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* ^fhirVersion = #4.0.1
* ^language = #ja


* meta.lastUpdated 0.. MS

Profile:        JP_DocumentReference_CDAdocument
Parent:			JP_DocumentReference
Id:             JP-DocumentReference-CDAdocument
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_DocumentReference_CDAdocument"
* ^version = "1"
* ^status = #active
* ^date = "2024-09-14"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* ^fhirVersion = #4.0.1
* ^language = #ja

* meta.lastUpdated 0.. MS

/*
Profile:        JP_DocumentReference
Parent:			DocumentReference
Id:             JP-DocumentReference
Description:    "JP_DocumentReference　暫定プロファイル"
* ^url = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_DocumentReference"
* ^version = "1"
* ^status = #active
* ^date = "2024-09-14"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* ^fhirVersion = #4.0.1
* meta.lastUpdated 0.. MS
*/

Profile:        JP_DocumentReference_eCS
Parent:			JP_DocumentReference
Id:             JP-DocumentReference-eCS
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_DocumentReference_eCS"
* ^version = "1"
* ^status = #active
* ^date = "2024-09-14"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* ^fhirVersion = #4.0.1
* ^language = #ja

* meta.lastUpdated 0.. MS


/*
Profile:        JP_Immunization
Parent:			Immunization
Id:             JP-Immunization
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Immunization"
* ^version = "1"
* ^status = #active
* ^date = "2024-09-14"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* ^fhirVersion = #4.0.1
* meta.lastUpdated 0.. MS
*/

Profile:        JP_Immunization_eCS
Parent:			JP_Immunization
Id:             JP-Immunization-eCS
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Immunization_eCS"
* ^version = "1"
* ^status = #active
* ^date = "2024-09-14"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* ^fhirVersion = #4.0.1
* ^language = #ja

* meta.lastUpdated 0.. MS

/*
Profile:        JP_ImagingStudy_Radiology_eCS
Parent:			JP_ImagingStudy_Radiology
Id:             JP-ImagingStudy-Radiology-eCS
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_ImagingStudy_Radiology_eCS"
* meta.lastUpdated 0.. MS
*/
/*
Profile:        JP_MedicationStatement
Parent:			MedicationStatement
Id:             JP-MedicationStatement
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationStatement"
* meta.lastUpdated 0.. MS


Profile:        JP_MedicationStatement_eCS
Parent:			JP_MedicationStatement
Id:             JP-MedicationStatement-eCS
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_MedicationStatement_eCS"
* meta.lastUpdated 0.. MS
*/

Profile:        JP_Procedure_eCS
Parent:			JP_Procedure
Id:             JP-Procedure-eCS
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Procedure_eCS"
* ^version = "1"
* ^status = #active
* ^date = "2024-09-14"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* ^fhirVersion = #4.0.1
* ^language = #ja

* meta.lastUpdated 0.. MS


Profile:        JP_DeviceUseStatement
Parent:			DeviceUseStatement
Id:             JP-DeviceUseStatement
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_DeviceUseStatement"
* ^version = "1"
* ^status = #active
* ^date = "2024-09-14"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* ^fhirVersion = #4.0.1
* ^language = #ja

* meta.lastUpdated 0.. MS

Profile:        JP_DeviceUseStatement_eCS
Parent:			JP_DeviceUseStatement
Id:             JP-DeviceUseStatement-eCS
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_DeviceUseStatement_eCS"
* ^version = "1"
* ^status = #active
* ^date = "2024-09-14"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* ^fhirVersion = #4.0.1
* ^language = #ja

* meta.lastUpdated 0.. MS


Profile:        JP_Device
Parent:			Device
Id:             JP-Device
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Device"
* ^version = "1"
* ^status = #active
* ^date = "2024-09-14"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* ^fhirVersion = #4.0.1
* ^language = #ja

* meta.lastUpdated 0.. MS


Profile:        JP_Device_eCS
Parent:			JP_Device
Id:             JP-Device-eCS
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Device_eCS"
* ^version = "1"
* ^status = #active
* ^date = "2024-09-14"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* ^fhirVersion = #4.0.1
* ^language = #ja

* meta.lastUpdated 0.. MS


Profile:        JP_Consent
Parent:			Consent
Id:             JP-Consent
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Consent"
* ^version = "1"
* ^status = #active
* ^date = "2024-09-14"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* ^fhirVersion = #4.0.1
* ^language = #ja

* meta.lastUpdated 0.. MS

Profile:        JP_Consent_eCS
Parent:			JP_Consent
Id:             JP-Consent-eCS
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Consent_eCS"
* ^version = "1"
* ^status = #active
* ^date = "2024-09-14"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* ^fhirVersion = #4.0.1
* ^language = #ja

* meta.lastUpdated 0.. MS

Profile:        JP_ResearchSubject
Parent:			ResearchSubject
Id:             JP-ResearchSubject
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_ResearchSubject"
* ^version = "1"
* ^status = #active
* ^date = "2024-09-14"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* ^fhirVersion = #4.0.1
* ^language = #ja

* meta.lastUpdated 0.. MS

Profile:        JP_ResearchSubject_eCS
Parent:			JP_ResearchSubject
Id:             JP-ResearchSubject-eCS
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_ResearchSubject_eCS"
* ^version = "1"
* ^status = #active
* ^date = "2024-09-14"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* ^fhirVersion = #4.0.1
* ^language = #ja

* meta.lastUpdated 0.. MS

Profile:        JP_ResearchStudy
Parent:			ResearchStudy
Id:             JP-ResearchStudy
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_ResearchStudy"
* ^version = "1"
* ^status = #active
* ^date = "2024-09-14"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* ^fhirVersion = #4.0.1
* ^language = #ja

* meta.lastUpdated 0.. MS

Profile:        JP_ResearchStudy_eCS
Parent:			JP_ResearchStudy
Id:             JP-ResearchStudy-
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_ResearchStudy_eCS"
* ^version = "1"
* ^status = #active
* ^date = "2024-09-14"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* ^fhirVersion = #4.0.1
* ^language = #ja

* meta.lastUpdated 0.. MS

Profile:        JP_RelatedPerson
Parent:			RelatedPerson
Id:             JP-RelatedPerson
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_RelatedPerson"
* ^version = "1"
* ^status = #active
* ^date = "2024-09-14"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* ^fhirVersion = #4.0.1
* ^language = #ja

* meta.lastUpdated 0.. MS

Profile:        JP_RelatedPerson_eCS
Parent:			JP_RelatedPerson
Id:             JP-RelatedPerson-eCS
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_RelatedPerson_eCS"
* ^version = "1"
* ^status = #active
* ^date = "2024-09-14"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* ^fhirVersion = #4.0.1
* ^language = #ja

* meta.lastUpdated 0.. MS

Profile:        JP_Binary
Parent:			Binary
Id:             JP-Binary
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Binary"
* ^version = "1"
* ^status = #active
* ^date = "2024-09-14"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* ^fhirVersion = #4.0.1
* ^language = #ja

* meta.lastUpdated 0.. MS
