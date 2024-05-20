cwlVersion: v1.0
steps:
  read-potential-cases-fhir:
    run: read-potential-cases-fhir.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  coronary-cardiovascular-disease-psoriasis-association-study-with-cvd---primary:
    run: coronary-cardiovascular-disease-psoriasis-association-study-with-cvd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-fhir/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-myocard---primary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-myocard---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: coronary-cardiovascular-disease-psoriasis-association-study-with-cvd---primary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-hemorrhage---primary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-hemorrhage---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-myocard---primary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-unspecif---primary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-unspecif---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-hemorrhage---primary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-cereb---primary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-cereb---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-unspecif---primary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-arrest---primary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-arrest---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-cereb---primary/output
  inferolateral-cardiovascular-disease-psoriasis-association-study-with-cvd---primary:
    run: inferolateral-cardiovascular-disease-psoriasis-association-study-with-cvd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-arrest---primary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-angina---primary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-angina---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: inferolateral-cardiovascular-disease-psoriasis-association-study-with-cvd---primary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-ruptur---primary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-ruptur---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-angina---primary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-basal---primary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-basal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-ruptur---primary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-middle---primary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-middle---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-basal---primary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-capsule---primary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-capsule---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-middle---primary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-infarctn---primary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-infarctn---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-capsule---primary/output
  intraventricular-cardiovascular-disease-psoriasis-association-study-with-cvd---primary:
    run: intraventricular-cardiovascular-disease-psoriasis-association-study-with-cvd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-infarctn---primary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-precerebr---primary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-precerebr---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: intraventricular-cardiovascular-disease-psoriasis-association-study-with-cvd---primary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-cardiac---primary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-cardiac---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-precerebr---primary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-localized---primary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-localized---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-cardiac---primary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-infarct---primary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-infarct---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-localized---primary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-inferoposterior---primary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-inferoposterior---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-infarct---primary/output
  bilateral-cardiovascular-disease-psoriasis-association-study-with-cvd---primary:
    run: bilateral-cardiovascular-disease-psoriasis-association-study-with-cvd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-inferoposterior---primary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-lacunar---primary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-lacunar---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: bilateral-cardiovascular-disease-psoriasis-association-study-with-cvd---primary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-chordae---primary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-chordae---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-lacunar---primary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-occlusn---primary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-occlusn---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-chordae---primary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-elevation---primary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-elevation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-occlusn---primary/output
  nonpyogenic-cardiovascular-disease-psoriasis-association-study-with-cvd---primary:
    run: nonpyogenic-cardiovascular-disease-psoriasis-association-study-with-cvd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-elevation---primary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-generalised---primary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-generalised---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: nonpyogenic-cardiovascular-disease-psoriasis-association-study-with-cvd---primary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-brain---primary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-brain---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-generalised---primary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-bifurcation---primary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-bifurcation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-brain---primary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-occlus---primary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-occlus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-bifurcation---primary/output
  septal-cardiovascular-disease-psoriasis-association-study-with-cvd---primary:
    run: septal-cardiovascular-disease-psoriasis-association-study-with-cvd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-occlus---primary/output
  anterolateral-cardiovascular-disease-psoriasis-association-study-with-cvd---primary:
    run: anterolateral-cardiovascular-disease-psoriasis-association-study-with-cvd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: septal-cardiovascular-disease-psoriasis-association-study-with-cvd---primary/output
  cortical-cardiovascular-disease-psoriasis-association-study-with-cvd---primary:
    run: cortical-cardiovascular-disease-psoriasis-association-study-with-cvd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: anterolateral-cardiovascular-disease-psoriasis-association-study-with-cvd---primary/output
  right-cardiovascular-disease-psoriasis-association-study-with-cvd---primary:
    run: right-cardiovascular-disease-psoriasis-association-study-with-cvd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: cortical-cardiovascular-disease-psoriasis-association-study-with-cvd---primary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-aborted---primary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-aborted---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: right-cardiovascular-disease-psoriasis-association-study-with-cvd---primary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-asystole---primary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-asystole---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-aborted---primary/output
  subendocardial-cardiovascular-disease-psoriasis-association-study-with-cvd---primary:
    run: subendocardial-cardiovascular-disease-psoriasis-association-study-with-cvd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-asystole---primary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-muscle---primary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-muscle---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: subendocardial-cardiovascular-disease-psoriasis-association-study-with-cvd---primary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-sided---primary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-sided---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-muscle---primary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-steno---primary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-steno---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-sided---primary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-heart---primary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-heart---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-steno---primary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-defect---primary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-defect---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-heart---primary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-complication---primary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-complication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-defect---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-complication---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
