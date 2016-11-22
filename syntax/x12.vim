 " Vim Syntax file
 " Language: X12 EDI files
 " Filenames: *.x12

 syntax clear
 syntax case ignore

 " X12 keywords
 syntax keyword X12Keyword ISA
 syntax keyword X12Keyword GS
 syntax keyword X12Keyword ST
 syntax keyword X12Keyword SE
 syntax keyword X12Keyword GE
 syntax keyword X12Keyword IEA

 " Get delimiters from (fixed length) ISA record
 let b:X12Sep = strpart(getline(1), 103, 1)
 let b:X12Ops = strpart(getline(1), 104, 1)
 let b:X12Delim = strpart(getline(1), 105, 1)
 " escaping the variables cause ~ in particular is a problem
 exec 'syntax match X12Sep "\'.b:X12Sep.'"'
 exec 'syntax match X12Ops "\'.b:X12Ops.'"'
 exec 'syntax match X12Delim "\'.b:X12Delim.'"'

 command -nargs=+ HiLink hi def link <args>
 HiLink X12Keyword Identifier
 HiLink X12Ops Label
 HiLink X12Delim String
 HiLink X12Sep Special

 let b:current_syntax = "x12"
