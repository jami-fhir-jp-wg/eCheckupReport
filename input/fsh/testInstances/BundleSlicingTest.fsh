Profile:        PatientA
Parent:         Patient
Id:             PatientA
* ^url = "http://PatientA"

Profile:        PatientB
Parent:         Patient
Id:             PatientB
* ^url = "http://PatientB"

Profile:        CompositionX
Parent:         Composition
Id:             CompositionX
* ^url = "http://CompositionX"

Profile: BundleTest
Parent: Bundle
Id: BundleTest
* ^url = "http://BundleTest"
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains patientAB 1..2 and compositionX 1..1
* entry[compositionX].resource only CompositionX
* entry[patientAB].resource only Patient

Instance: BundleTestInstance
InstanceOf: BundleTest
Usage: #example
* meta.profile = "http://BundleTest"
* type = #document
* timestamp = "2024-04-05T13:28:17.239+09:00"
* entry[0].fullUrl = "urn:uuid:fd13ba04-3b58-ac07-fad6-464cec87691d"
* entry[=].resource = CompositionXTest
* entry[+].fullUrl = "urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3"
* entry[=].resource = PatientATest
* entry[+].fullUrl = "urn:uuid:6c4ef273-df66-00ab-c021-d05c5a19e0ba"
* entry[=].resource = PatientBTest

Instance: CompositionXTest
InstanceOf: CompositionX
Usage: #inline
* meta.profile = "http://CompositionX"
* status = #final
* type = #1
* date = "2024-04-05T13:28:17+09:00"
* author = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* title = "test"

* section[0].title = "section"
* section[=].entry[0] = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* section[=].entry[+] = Reference(urn:uuid:6c4ef273-df66-00ab-c021-d05c5a19e0ba)

Instance: PatientATest
InstanceOf: PatientA
Usage: #inline
* meta.profile = "http://PatientA"
* identifier.value = "1"

Instance: PatientBTest
InstanceOf: PatientB
Usage: #inline
* meta.profile = "http://PatientB"
* identifier.value = "2"

