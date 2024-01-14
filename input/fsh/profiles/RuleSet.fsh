RuleSet: obs_code_coding_slicing(obs_system, obs_cd)
* code.coding[obs_cd]
  * system = obs_system
  * code = obs_cd  (exactly)  

RuleSet:  relative_short_definition(note)
* ^short = {note}
* ^definition = {note}

RuleSet:  toplevel_short_definition(note)
* . ^short = {note}
* . ^definition = {note}

