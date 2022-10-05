#!/usr/bin/env pwsh

$ErrorActionPreference = "Stop"
Set-StrictMode -Version 2.0

$foldersToMoveToDocs = "articles","contributing","models","scenario-samples","scripts","site-templates"
foreach($folder in $foldersToMoveToDocs)
{

  $item = New-Item -Path ./main/docs -Name $folder -ItemType Directory -Force -WhatIf
  $item
  Copy-Item -Force ./main/$folder/* -Destination ./main/docs/$folder -Recurse -WhatIf

}
<#
docfx metadata ./main/docs/docfx.json --warningsAsErrors $args
docfx build ./main/docs/docfx.json --warningsAsErrors $args
#>
# Copy the created site to the pnpcoredocs folder (= clone of the gh-pages branch)
<#
Remove-Item ./gh-pages/articles/* -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item ./gh-pages/contributing/* -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item ./gh-pages/models/* -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item ./gh-pages/scenario-samples/* -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item ./gh-pages/scripts/* -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item ./gh-pages/site-templates/* -Recurse -Force -ErrorAction SilentlyContinue
copy-item -Force -Recurse ./main/docs/_site/* -Destination ./gh-pages
#>
