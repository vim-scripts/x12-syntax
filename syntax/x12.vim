" Vim Syntax file
" Language: X12 EDI files
" Filenames: *.x12

syntax clear
"syntax case ignore

" X12 keywords
syntax keyword X12Keyword ISA 
syntax keyword X12Keyword SVC 
syntax keyword X12Keyword BPR 
syntax keyword X12Keyword DTM 
syntax keyword X12Keyword LX1 
syntax keyword X12Keyword LX 
syntax keyword X12Keyword CLP 
syntax keyword X12Keyword CAS
syntax keyword X12Keyword GS 
syntax keyword X12Keyword AK
syntax keyword X12Keyword ST
syntax keyword X12Keyword BHT
syntax keyword X12Keyword NM1
syntax keyword X12Keyword REF
syntax keyword X12Keyword N1
syntax keyword X12Keyword N2
syntax keyword X12Keyword N3
syntax keyword X12Keyword N4
syntax keyword X12Keyword PER
syntax keyword X12Keyword PRV
syntax keyword X12Keyword TRN
syntax keyword X12Keyword DMG
syntax keyword X12Keyword DTP
syntax keyword X12Keyword EQ
syntax keyword X12Keyword AMT
syntax keyword X12Keyword III
syntax keyword X12Keyword AAA
syntax keyword X12Keyword HL
syntax keyword X12Keyword HSD
syntax keyword X12Keyword MSG
syntax keyword X12Keyword TS3
syntax keyword X12Keyword LS
syntax keyword X12Keyword LE
syntax keyword X12Keyword EB 
syntax keyword X12Keyword GE
syntax keyword X12Keyword IEA
syntax keyword X12Keyword SE
syntax keyword X12Keyword INS

"spl character
syntax match X12Delim "\~"
syntax match X12Ops "\*"
syntax match X12Sep "\:"

command -nargs=+ HiLink hi def link <args> 
HiLink X12Keyword Identifier
HiLink X12Ops Label
HiLink X12Delim String
HiLink X12Sep   Special

let b:current_syntax = "x12"
