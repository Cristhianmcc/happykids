# Script para crear ZIP listo para Netlify
# Excluye archivos innecesarios automáticamente

Write-Host "================================================" -ForegroundColor Cyan
Write-Host "  Preparando ZIP para Netlify" -ForegroundColor Cyan
Write-Host "================================================" -ForegroundColor Cyan
Write-Host ""

# Nombre del archivo ZIP
$zipName = "infantil-netlify-$(Get-Date -Format 'yyyyMMdd-HHmmss').zip"
$zipPath = Join-Path (Get-Location) $zipName

# Archivos y carpetas a INCLUIR
$itemsToInclude = @(
    "happykids.html",
    "index.html",
    "css",
    "js",
    "assets",
    "README.md",
    "README-COMPLETO.md",
    "GUIA-EDICION.md",
    "GUIA-NETLIFY.md",
    "GUIA-GITHUB-PAGES.md",
    ".gitignore"
)

Write-Host "Archivos a incluir en el ZIP:" -ForegroundColor Yellow
$itemsToInclude | ForEach-Object { Write-Host "  - $_" -ForegroundColor Green }
Write-Host ""

# Crear archivo temporal con la lista de archivos
$tempList = Join-Path $env:TEMP "netlify-files.txt"

# Función para agregar archivos recursivamente
function Add-FilesToList {
    param($item)
    
    if (Test-Path $item) {
        if ((Get-Item $item).PSIsContainer) {
            # Es una carpeta, agregar todos los archivos dentro
            Get-ChildItem -Path $item -Recurse -File | ForEach-Object {
                $relativePath = $_.FullName.Replace((Get-Location).Path + "\", "")
                Add-Content -Path $tempList -Value $relativePath
            }
        } else {
            # Es un archivo
            $relativePath = (Get-Item $item).FullName.Replace((Get-Location).Path + "\", "")
            Add-Content -Path $tempList -Value $relativePath
        }
    }
}

# Limpiar archivo temporal si existe
if (Test-Path $tempList) { Remove-Item $tempList }

# Agregar todos los items a la lista
Write-Host "Recopilando archivos..." -ForegroundColor Yellow
foreach ($item in $itemsToInclude) {
    Add-FilesToList $item
}

# Contar archivos
$fileCount = (Get-Content $tempList).Count
Write-Host "Total de archivos: $fileCount" -ForegroundColor Green
Write-Host ""

# Crear el ZIP
Write-Host "Creando archivo ZIP..." -ForegroundColor Yellow

try {
    # Leer la lista de archivos
    $files = Get-Content $tempList
    
    # Crear el ZIP
    Add-Type -Assembly System.IO.Compression.FileSystem
    $zip = [System.IO.Compression.ZipFile]::Open($zipPath, 'Create')
    
    foreach ($file in $files) {
        $fullPath = Join-Path (Get-Location) $file
        if (Test-Path $fullPath) {
            $entryName = $file.Replace("\", "/")
            [System.IO.Compression.ZipFileExtensions]::CreateEntryFromFile($zip, $fullPath, $entryName) | Out-Null
        }
    }
    
    $zip.Dispose()
    
    Write-Host ""
    Write-Host "================================================" -ForegroundColor Green
    Write-Host "  OK ZIP CREADO EXITOSAMENTE" -ForegroundColor Green
    Write-Host "================================================" -ForegroundColor Green
    Write-Host ""
    Write-Host "Archivo creado:" -ForegroundColor Yellow
    Write-Host "  $zipName" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "Tamaño:" -ForegroundColor Yellow
    $size = (Get-Item $zipPath).Length / 1MB
    Write-Host "  $([math]::Round($size, 2)) MB" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "Siguientes pasos:" -ForegroundColor Yellow
    Write-Host "  1. Ve a https://app.netlify.com/" -ForegroundColor White
    Write-Host "  2. Arrastra el archivo $zipName" -ForegroundColor White
    Write-Host "  3. Espera 10-30 segundos" -ForegroundColor White
    Write-Host "  4. OK Sitio publicado!" -ForegroundColor White
    Write-Host ""
    
    # Abrir la carpeta donde está el ZIP
    Write-Host "Abriendo carpeta con el archivo ZIP..." -ForegroundColor Yellow
    Start-Process explorer.exe -ArgumentList "/select,`"$zipPath`""
    
} catch {
    Write-Host ""
    Write-Host "ERROR al crear el ZIP:" -ForegroundColor Red
    Write-Host $_.Exception.Message -ForegroundColor Red
    Write-Host ""
} finally {
    # Limpiar archivo temporal
    if (Test-Path $tempList) { Remove-Item $tempList }
}

Write-Host ""
Write-Host "Consulta GUIA-NETLIFY.md para mas informacion" -ForegroundColor Cyan
Write-Host ""
