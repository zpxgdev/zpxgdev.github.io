param(
    [int]$Port = 4000,
    [switch]$NoBrowser
)

$ErrorActionPreference = 'Stop'

Set-Location $PSScriptRoot

if (-not (Get-Command bundle -ErrorAction SilentlyContinue)) {
    throw 'bundle was not found. Install Ruby and Bundler first.'
}

$url = "http://localhost:$Port/"

Write-Host "Starting Jekyll local server: $url"
Write-Host 'Mode: incremental + livereload'

if (-not $NoBrowser) {
    Start-Process $url
}

bundle exec jekyll serve --host localhost --port $Port --incremental --livereload